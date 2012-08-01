.class public Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;
.implements Lcom/htc/opensense2/album/SocialNetworkManager/IOSImageProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;
    }
.end annotation


# static fields
.field public static final HTC_CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.htccontacts"

.field public static final IPXTYPE_COMMENT:I = 0x5

.field public static final IPXTYPE_CUBE:I = 0x1

.field public static final IPXTYPE_FILMSTRIP:I = 0x3

.field public static final IPXTYPE_FULLSCREEN:I = 0x4

.field public static final IPXTYPE_GRID:I = 0x2

.field public static final IPXTYPE_UNKNOW:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImageProvider"

#the value of this static final field might be set in the static constructor
.field public static final MAX_GRIDVIEW_DL_BUFFER:I = 0x0

.field private static final MAX_GRIDVIEW_DOWNLOAD_BUFFER:[I = null

.field public static final MAX_SIZE_FILECACHE:I = 0xa00000


# instance fields
.field protected mAdapterList:Ljava/util/List;

.field public mCandidateCount:I

.field public mCandidateUrl:Ljava/lang/String;

.field private mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

.field private mCbUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field public mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

.field private mHandlerData:Landroid/os/Handler;

.field private mIPTType:I

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;",
            ">;"
        }
    .end annotation
.end field

.field protected mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

.field private mImageDefault:Landroid/graphics/Bitmap;

.field private mImageDefaultResid:I

.field protected mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

.field private mIsEnableMemCache:Z

.field private mMaxDownloadBuffer:I

.field private mMaxVisibleBuffer:I

.field private mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

.field private mMemCacheSize:I

.field private mOSCbDownload:Lcom/htc/opensense/album/plugin/IDownloadResult;

.field public mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

.field private mUIScrollState:I

.field private mUiThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->MAX_GRIDVIEW_DOWNLOAD_BUFFER:[I

    .line 55
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->MAX_GRIDVIEW_DOWNLOAD_BUFFER:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->MAX_GRIDVIEW_DL_BUFFER:I

    return-void

    .line 54
    :array_0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 61
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    .line 64
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    .line 66
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheSize:I

    .line 67
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 68
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 69
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIsEnableMemCache:Z

    .line 70
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    .line 71
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUiThread:Ljava/lang/Thread;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    .line 75
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    .line 76
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    .line 78
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateUrl:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    .line 81
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 82
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    .line 377
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbUri:Landroid/net/Uri;

    .line 378
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    .line 2386
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$2;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSCbDownload:Lcom/htc/opensense/album/plugin/IDownloadResult;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUiThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public static bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmapSrc"
    .parameter "bitmapMask"

    .prologue
    const/4 v9, 0x0

    .line 2025
    move-object v1, p1

    .line 2026
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2027
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2029
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2030
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2032
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 2033
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2034
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2036
    if-eqz v1, :cond_0

    .line 2038
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2039
    const/4 v1, 0x0

    .line 2041
    :cond_0
    if-eqz v0, :cond_1

    .line 2043
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2044
    const/4 v0, 0x0

    .line 2046
    :cond_1
    return-object v2
.end method

.method public static bitmapByScalado(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "szUri"

    .prologue
    const/4 v3, -0x1

    .line 1988
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeFile(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidthDest"
    .parameter "nHeightDest"

    .prologue
    .line 1995
    if-nez p0, :cond_1

    .line 1998
    const/4 v0, 0x0

    .line 2021
    :cond_0
    :goto_0
    return-object v0

    .line 2000
    :cond_1
    const/4 v0, 0x0

    .line 2002
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2003
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 2005
    .local v2, nHeightSrc:I
    sub-int v6, v3, p1

    div-int/lit8 v4, v6, 0x2

    .line 2006
    .local v4, nXMargin:I
    sub-int v6, v2, p2

    div-int/lit8 v5, v6, 0x2

    .line 2010
    .local v5, nYMargin:I
    :try_start_0
    invoke-static {p0, v4, v5, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2017
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2019
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2012
    :catch_0
    move-exception v1

    .line 2014
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ImageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][bitmapCropCenter]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static bitmapDecodeBySample(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "szFilePath"
    .parameter "nTarget"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1858
    const/4 v0, 0x0

    .line 1860
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1861
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1862
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1863
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1866
    invoke-static {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1868
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1869
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1870
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1872
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1874
    return-object v0
.end method

.method public static bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 1917
    if-nez p0, :cond_1

    .line 1920
    const/4 v7, 0x0

    .line 1943
    :cond_0
    :goto_0
    return-object v7

    .line 1922
    :cond_1
    const/4 v7, 0x0

    .line 1923
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1924
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1925
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1928
    .local v4, nHeightSrc:I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1932
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1939
    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1941
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1934
    :catch_0
    move-exception v8

    .line 1936
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "ImageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bitmapResize] Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static bitmapResize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "szFilePath"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1947
    invoke-static {p0}, Lcom/htc/opensense2/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 1948
    .local v1, nDimensionSrc:[I
    aget v3, v1, v5

    if-lt v3, v4, :cond_0

    aget v3, v1, v4

    if-ge v3, v4, :cond_1

    .line 1950
    :cond_0
    const/4 v0, 0x0

    .line 1959
    :goto_0
    return-object v0

    .line 1952
    :cond_1
    const/4 v0, 0x0

    .line 1954
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1955
    .local v2, option:Landroid/graphics/BitmapFactory$Options;
    aget v3, v1, v5

    aget v4, v1, v4

    invoke-static {v3, v4, p1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->countGridSampleValue(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1956
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1957
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1959
    goto :goto_0
.end method

.method public static bitmapResize4Filmstrip(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "szFilePath"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1964
    const/4 v0, 0x0

    .line 1965
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1966
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1967
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1969
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1970
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1972
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v6, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->HEIGHT_FILMSTRIP:I

    div-int v3, v5, v6

    .line 1973
    .local v3, sample:I
    if-nez v3, :cond_0

    .line 1974
    const/4 v3, 0x1

    .line 1975
    :cond_0
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    mul-int v6, v3, v3

    div-int/2addr v5, v6

    const v6, 0x4b000

    if-le v5, v6, :cond_2

    .line 1977
    .local v1, isExtraWidth:Z
    :goto_0
    if-eqz v1, :cond_1

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    int-to-double v5, v5

    const-wide v7, 0x4112c00000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .end local v3           #sample:I
    :cond_1
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1981
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1982
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1984
    return-object v0

    .end local v1           #isExtraWidth:Z
    .restart local v3       #sample:I
    :cond_2
    move v1, v4

    .line 1975
    goto :goto_0
.end method

.method public static bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmapSrc"
    .parameter "nDimTarget"

    .prologue
    .line 1878
    if-nez p0, :cond_0

    .line 1881
    const/4 v0, 0x0

    .line 1913
    :goto_0
    return-object v0

    .line 1884
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1885
    .local v4, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1887
    .local v2, nHeightSrc:I
    const/4 v0, 0x0

    .line 1888
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1889
    .local v3, nWidth:F
    const/4 v1, 0x0

    .line 1892
    .local v1, nHeight:F
    if-ge v4, v2, :cond_1

    .line 1894
    int-to-float v3, p1

    .line 1895
    mul-int v5, p1, v2

    div-int/2addr v5, v4

    int-to-float v1, v5

    .line 1910
    :goto_1
    float-to-int v5, v3

    float-to-int v6, v1

    invoke-static {p0, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1913
    goto :goto_0

    .line 1898
    :cond_1
    if-le v4, v2, :cond_2

    .line 1900
    mul-int v5, p1, v4

    div-int/2addr v5, v2

    int-to-float v3, v5

    .line 1901
    int-to-float v1, p1

    goto :goto_1

    .line 1905
    :cond_2
    int-to-float v1, p1

    .line 1906
    int-to-float v3, p1

    goto :goto_1
.end method

.method public static createBitmapComment(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "szFilePath"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1823
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/htc/opensense2/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v2

    .line 1824
    .local v2, nDimensionSrc:[I
    aget v5, v2, v8

    if-lt v5, v7, :cond_0

    aget v5, v2, v7

    if-ge v5, v7, :cond_1

    .line 1826
    :cond_0
    const/4 v5, 0x0

    .line 1854
    :goto_0
    return-object v5

    .line 1829
    :cond_1
    const/4 v4, 0x0

    .line 1830
    .local v4, nWidth:F
    const/4 v3, 0x0

    .line 1833
    .local v3, nHeight:F
    aget v5, v2, v8

    aget v6, v2, v7

    if-ge v5, v6, :cond_2

    .line 1835
    sget v5, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->COMMENT_MAX_PHOTO_DIMEN:I

    int-to-float v3, v5

    .line 1836
    aget v5, v2, v7

    int-to-float v5, v5

    div-float v5, v3, v5

    aget v6, v2, v8

    int-to-float v6, v6

    mul-float v4, v5, v6

    .line 1850
    :goto_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1851
    float-to-int v5, v4

    float-to-int v6, v3

    invoke-static {v1, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .line 1854
    goto :goto_0

    .line 1838
    :cond_2
    aget v5, v2, v8

    aget v6, v2, v7

    if-le v5, v6, :cond_3

    .line 1840
    sget v5, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->COMMENT_MIN_PHOTO_DIMEN:I

    int-to-float v3, v5

    .line 1841
    aget v5, v2, v7

    int-to-float v5, v5

    div-float v5, v3, v5

    aget v6, v2, v8

    int-to-float v6, v6

    mul-float v4, v5, v6

    goto :goto_1

    .line 1845
    :cond_3
    sget v5, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->COMMENT_MIN_PHOTO_DIMEN:I

    int-to-float v3, v5

    .line 1846
    sget v5, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->COMMENT_MIN_PHOTO_DIMEN:I

    int-to-float v4, v5

    goto :goto_1
.end method

.method public static createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "nIndex"
    .parameter "szFilePath"
    .parameter "nDimension"

    .prologue
    const/4 v5, 0x1

    .line 1799
    invoke-static {p1}, Lcom/htc/opensense2/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v3

    .line 1800
    .local v3, nDimensionSrc:[I
    const/4 v4, 0x0

    aget v4, v3, v4

    if-lt v4, v5, :cond_0

    aget v4, v3, v5

    if-ge v4, v5, :cond_1

    .line 1802
    :cond_0
    const/4 v0, 0x0

    .line 1815
    :goto_0
    return-object v0

    .line 1805
    :cond_1
    const/4 v0, 0x0

    .line 1806
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1807
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1811
    .local v2, bitmapResized:Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapDecodeBySample(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1812
    invoke-static {v1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1813
    invoke-static {v2, p2, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1815
    goto :goto_0
.end method

.method private doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "nPosition"
    .parameter "uri"

    .prologue
    .line 2300
    const/4 v0, 0x0

    .line 2302
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v0

    .line 2318
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 2305
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isValidImage(Landroid/net/Uri;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 2306
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    invoke-interface {v3, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;->onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 2318
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 2309
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    const-string v3, "ImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][doImageCode]: invalid image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2311
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2313
    const-string v3, "ImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][doImageCode]: remove image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private downgradeImageCache()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2359
    const/4 v2, 0x0

    .line 2360
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2361
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2367
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v0, 0x0

    .line 2368
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2370
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 2371
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_0

    .line 2374
    const/4 v4, 0x1

    iget-boolean v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-ne v4, v5, :cond_0

    .line 2376
    iput v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2377
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 2378
    iput-boolean v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    goto :goto_0

    .line 2382
    :cond_1
    return-void
.end method

.method private isContentUri(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 1183
    if-nez p1, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return v1

    .line 1184
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1185
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1187
    const-string v2, "content"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isLocalPath(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 1166
    if-nez p1, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return v4

    .line 1168
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1170
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1172
    const-string v5, "http"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v1, 0x1

    .line 1174
    .local v1, isLocal:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1176
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1177
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1179
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    goto :goto_0

    .end local v0           #file:Ljava/io/File;
    .end local v1           #isLocal:Z
    .end local v2           #path:Ljava/lang/String;
    :cond_2
    move v1, v4

    .line 1172
    goto :goto_1
.end method

.method private isOnScreenItem(II)Z
    .locals 5
    .parameter "nIndexItem"
    .parameter "nFirstIndex"

    .prologue
    .line 2163
    const/4 v1, 0x0

    .line 2165
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 2166
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .line 2168
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v3, p2, v4

    .line 2169
    .local v3, nCount:I
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    .line 2170
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 2172
    :cond_0
    if-gt p2, p1, :cond_1

    if-le v3, p1, :cond_1

    .line 2173
    const/4 v1, 0x1

    .line 2175
    :cond_1
    return v1
.end method

.method private isOnScreenItemComplete(I)Z
    .locals 9
    .parameter "nFirstIndex"

    .prologue
    .line 2122
    const/4 v2, 0x1

    .line 2124
    .local v2, bIsReady:Z
    const/4 v1, 0x0

    .line 2125
    .local v1, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v4, 0x0

    .line 2127
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v5, p1, v7

    .line 2128
    .local v5, nCount:I
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    .line 2129
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2131
    :cond_0
    move v6, p1

    .local v6, nIndex:I
    :goto_0
    if-le v5, v6, :cond_2

    .line 2135
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 2131
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2140
    :catch_0
    move-exception v3

    .line 2159
    :cond_2
    :goto_1
    return v2

    .line 2145
    :cond_3
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v4, :cond_4

    .line 2148
    const/4 v2, 0x0

    .line 2149
    goto :goto_1

    .line 2151
    :cond_4
    iget-boolean v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-nez v7, :cond_1

    .line 2154
    const/4 v2, 0x0

    .line 2155
    goto :goto_1
.end method

.method private isOnScreenThumbnailsReady(I)Z
    .locals 9
    .parameter "nFirstIndex"

    .prologue
    .line 2081
    const/4 v2, 0x1

    .line 2083
    .local v2, bIsReady:Z
    const/4 v1, 0x0

    .line 2084
    .local v1, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v4, 0x0

    .line 2086
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v5, p1, v7

    .line 2087
    .local v5, nCount:I
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    .line 2088
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2090
    :cond_0
    move v6, p1

    .local v6, nIndex:I
    :goto_0
    if-le v5, v6, :cond_2

    .line 2094
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 2090
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2099
    :catch_0
    move-exception v3

    .line 2118
    :cond_2
    :goto_1
    return v2

    .line 2104
    :cond_3
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v4, :cond_4

    .line 2107
    const/4 v2, 0x0

    .line 2108
    goto :goto_1

    .line 2110
    :cond_4
    iget-boolean v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v7, :cond_1

    .line 2113
    const/4 v2, 0x0

    .line 2114
    goto :goto_1
.end method

.method private isValidImage(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 2288
    const/4 v0, 0x1

    .line 2290
    .local v0, bResult:Z
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 2291
    .local v1, nDimensionSrc:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    if-lt v2, v3, :cond_0

    aget v2, v1, v3

    if-ge v2, v3, :cond_1

    .line 2293
    :cond_0
    const/4 v0, 0x0

    .line 2296
    :cond_1
    return v0
.end method

.method private prepareGridviewOffscreenPage(I)Z
    .locals 1
    .parameter "nFirstIndex"

    .prologue
    .line 2251
    const/4 v0, 0x0

    .line 2253
    .local v0, bIsReady:Z
    return v0
.end method

.method private prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 4
    .parameter "nIndex"
    .parameter "anAlbum"
    .parameter "hHandler"

    .prologue
    .line 2216
    const/4 v0, 0x0

    .line 2218
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 2219
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 2220
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    .line 2221
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 2222
    const/4 v1, -0x2

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2223
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverUrlHeader()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumbHeader:Ljava/lang/String;

    .line 2225
    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 2230
    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2234
    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateUrl:Ljava/lang/String;

    .line 2245
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    return-object v0

    .line 2236
    :cond_1
    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setCandidate(Z)V

    .line 2241
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    .line 2242
    const-string v1, "ImageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][prepareImageCache]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 3
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"

    .prologue
    .line 2196
    const/4 v0, 0x0

    .line 2198
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 2199
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 2200
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    .line 2201
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 2202
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 2203
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getPhotoURLHeader()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlHeader:Ljava/lang/String;

    .line 2204
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getPhotoURLThumbHeader()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumbHeader:Ljava/lang/String;

    .line 2205
    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2206
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    .line 2208
    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 2210
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    return-object v0
.end method

.method private prepareImageCache(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 2
    .parameter "id"
    .parameter "url"
    .parameter "hHandler"

    .prologue
    .line 2179
    const/4 v0, 0x0

    .line 2181
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 2182
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 2183
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    .line 2184
    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 2185
    const-string v1, ""

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 2186
    const/4 v1, -0x2

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2188
    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 2190
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    return-object v0
.end method

.method private requestOSPhotoDownload(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 6
    .parameter "nType"
    .parameter "szPid"
    .parameter "bundle"

    .prologue
    .line 2572
    const/4 v1, 0x0

    .line 2574
    .local v1, nTaskID:I
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSCbDownload:Lcom/htc/opensense/album/plugin/IDownloadResult;

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 2589
    .end local v1           #nTaskID:I
    .local v2, nTaskID:I
    :goto_0
    return v2

    .line 2579
    .end local v2           #nTaskID:I
    .restart local v1       #nTaskID:I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSCbDownload:Lcom/htc/opensense/album/plugin/IDownloadResult;

    invoke-virtual {v3, p1, p2, v4, p3}, Lcom/htc/opensense/album/plugin/IDownloadManager;->downloadPhotoById(ILjava/lang/String;Lcom/htc/opensense/album/plugin/IDownloadResult;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 2589
    .end local v1           #nTaskID:I
    .restart local v2       #nTaskID:I
    goto :goto_0

    .line 2584
    .end local v2           #nTaskID:I
    .restart local v1       #nTaskID:I
    :catch_0
    move-exception v0

    .line 2586
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][requestOSPhotoDownload]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private requestOnScreenFullImages(I)V
    .locals 8
    .parameter "nFirstIndex"

    .prologue
    .line 2257
    const/4 v0, 0x0

    .line 2258
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .line 2260
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v3, p1, v5

    .line 2261
    .local v3, nCount:I
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_0

    .line 2262
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 2264
    :cond_0
    move v4, p1

    .local v4, nIndex:I
    :goto_0
    if-le v3, v4, :cond_2

    .line 2268
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_3

    .line 2264
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2271
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :catch_0
    move-exception v1

    .line 2273
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ImageProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ImageProvider][requestOnScreenFullImages]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-void

    .line 2276
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_3
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_1

    .line 2279
    iget-boolean v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 2281
    :cond_4
    iget-boolean v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v5, :cond_1

    .line 2282
    iget v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1
.end method

.method private requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "nIndex"
    .parameter "szUID"
    .parameter "szURL"

    .prologue
    .line 843
    const/4 v2, 0x0

    .line 845
    .local v2, nTaskID:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    .line 864
    .end local v2           #nTaskID:I
    .local v3, nTaskID:I
    :goto_0
    return v3

    .line 848
    .end local v3           #nTaskID:I
    .restart local v2       #nTaskID:I
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 849
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p2, :cond_2

    .line 850
    const-string v4, "photo_id"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_2
    if-eqz p3, :cond_3

    .line 852
    const-string v4, "photo_url"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v4, p3, v5, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 864
    .end local v2           #nTaskID:I
    .restart local v3       #nTaskID:I
    goto :goto_0

    .line 859
    .end local v3           #nTaskID:I
    .restart local v2       #nTaskID:I
    :catch_0
    move-exception v1

    .line 861
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][requestPhotoDownload]2: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "nIndex"
    .parameter "szUID"
    .parameter "szURL"
    .parameter "szURLHeader"

    .prologue
    .line 868
    const/4 v2, 0x0

    .line 869
    .local v2, nTaskID:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    .line 889
    .end local v2           #nTaskID:I
    .local v3, nTaskID:I
    :goto_0
    return v3

    .line 871
    .end local v3           #nTaskID:I
    .restart local v2       #nTaskID:I
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 872
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p2, :cond_2

    .line 873
    const-string v4, "photo_id"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_2
    if-eqz p3, :cond_3

    .line 875
    const-string v4, "photo_url"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v4, p3, p4, v5, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 889
    .end local v2           #nTaskID:I
    .restart local v3       #nTaskID:I
    goto :goto_0

    .line 884
    .end local v3           #nTaskID:I
    .restart local v2       #nTaskID:I
    :catch_0
    move-exception v1

    .line 886
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][requestPhotoDownload]1: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;ZI)Z
    .locals 4
    .parameter "context"
    .parameter "bIsEnableMemCache"
    .parameter "nMemCacheSize"

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, bResult:Z
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    .line 130
    const-string v1, "ImageProvider"

    const-string v2, "[HTCAlbum][ImageProvider][Initialize]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-boolean p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIsEnableMemCache:Z

    .line 133
    iput p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheSize:I

    .line 135
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 137
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 140
    :cond_0
    return v0
.end method

.method public Uninitialize(Z)V
    .locals 3
    .parameter "bIsFreeMem"

    .prologue
    const/4 v2, 0x0

    .line 180
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][Uninitialize]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 187
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    :cond_0
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 193
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->release()V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->clear()V

    .line 200
    :cond_3
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    .line 201
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    .line 202
    return-void
.end method

.method public cancelDownloadTasks()V
    .locals 8

    .prologue
    .line 2323
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2324
    .local v5, tempImageCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2325
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2327
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v2, 0x0

    .line 2329
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2334
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v4, 0x0

    .line 2335
    .local v4, nCount:I
    const/4 v0, 0x0

    .line 2336
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2338
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 2339
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_0

    .line 2342
    iget v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v6, :cond_0

    .line 2347
    add-int/lit8 v4, v4, 0x1

    .line 2349
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    if-eqz v6, :cond_1

    .line 2350
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    iget v7, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/album/plugin/IDownloadManager;->cancelDownloadPhotoByTaskId(I)V

    .line 2353
    :goto_1
    const/4 v6, 0x0

    iput v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    .line 2352
    :cond_1
    iget v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->stopDownloadRequest(I)V

    goto :goto_1

    .line 2356
    :cond_2
    return-void
.end method

.method public changeLayoutType(I)V
    .locals 5
    .parameter "nIPXType"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 251
    const-string v0, "ImageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProvider][changeLayoutType]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    .line 253
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    .line 254
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v1, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->downgradeImageCache()V

    .line 264
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_2

    .line 266
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    packed-switch v0, :pswitch_data_0

    .line 285
    :cond_2
    :goto_0
    return-void

    .line 269
    :pswitch_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 270
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 271
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    .line 274
    :pswitch_1
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 275
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 276
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    .line 279
    :pswitch_2
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 280
    sget v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->MAX_GRIDVIEW_DL_BUFFER:I

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 281
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doGetImageDecode(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "nPosition"
    .parameter "imageCache"
    .parameter "nFirstVisibleIndex"

    .prologue
    .line 1559
    const/4 v1, 0x0

    .line 1573
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1575
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_0

    .line 1578
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    :cond_0
    :goto_0
    move-object v10, v1

    .line 1763
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v10

    .line 1581
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v0, :cond_6

    .line 1584
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1589
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1592
    :cond_2
    const/4 v1, 0x0

    .line 1593
    const/4 v0, -0x1

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1594
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1595
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 1596
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    move-object v10, v1

    .line 1597
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1600
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1601
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1602
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 1603
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    .line 1607
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 1612
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v0, :cond_4

    .line 1613
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    .line 1616
    :cond_4
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_5

    .line 1619
    const/4 v0, 0x1

    invoke-direct {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenThumbnailsReady(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iget v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v2, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1622
    invoke-direct {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestOnScreenFullImages(I)V

    goto :goto_0

    .line 1625
    :cond_5
    iget-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v0, :cond_0

    .line 1627
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    .line 1632
    :cond_6
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    .line 1636
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/4 v9, 0x1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1641
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_a

    .line 1644
    :cond_7
    const/4 v1, 0x0

    .line 1645
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_8

    .line 1647
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1648
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1650
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1651
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    .line 1657
    :cond_8
    if-eqz v1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1660
    :cond_9
    const/4 v1, 0x0

    .line 1661
    const/4 v0, -0x1

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1662
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1663
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 1664
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto/16 :goto_0

    .line 1673
    :cond_a
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_0

    .line 1676
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_b

    .line 1678
    const/4 v0, 0x1

    invoke-direct {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenThumbnailsReady(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iget v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v2, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1681
    invoke-direct {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestOnScreenFullImages(I)V

    goto/16 :goto_0

    .line 1684
    :cond_b
    iget-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v0, :cond_0

    .line 1686
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto/16 :goto_0

    .line 1692
    :cond_c
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_f

    iget-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-nez v0, :cond_f

    .line 1695
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1700
    if-eqz v1, :cond_d

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_e

    .line 1703
    :cond_d
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1704
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1705
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 1706
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0

    .line 1712
    :cond_e
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1714
    const/4 v0, 0x1

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1715
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 1716
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0

    .line 1721
    :cond_f
    const/4 v0, 0x1

    iget-boolean v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-ne v0, v2, :cond_0

    .line 1725
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/4 v9, 0x1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1726
    const/4 v0, 0x1

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1731
    if-eqz v1, :cond_10

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1733
    :cond_10
    const/4 v1, 0x0

    .line 1734
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v0, :cond_0

    .line 1736
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_11

    .line 1739
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1740
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1742
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1743
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    .line 1749
    :cond_11
    if-eqz v1, :cond_12

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1752
    :cond_12
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1753
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1754
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 1755
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0
.end method

.method public doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;ZZ)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "context"
    .parameter "nPosition"
    .parameter "szURL"
    .parameter "imageCache"
    .parameter "bIsIdle"
    .parameter "bIsGrid"

    .prologue
    .line 1495
    const/4 v2, 0x0

    .line 1496
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v11, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;

    invoke-direct {v11}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;-><init>()V

    .line 1497
    .local v11, layoutGetter:Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;
    const/4 v13, 0x0

    .line 1499
    .local v13, packageName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1500
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1503
    :cond_0
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 1505
    move-object/from16 v0, p4

    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v1, :cond_1

    const/16 v1, 0x4f4d

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v1, v3, :cond_1

    .line 1507
    move-object/from16 v0, p4

    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p4

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1555
    :cond_1
    :goto_0
    return-object v2

    .line 1510
    :cond_2
    const/4 v1, 0x5

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-eq v1, v3, :cond_3

    const/4 v1, -0x2

    move/from16 v0, p2

    if-eq v1, v0, :cond_3

    const/4 v1, -0x3

    move/from16 v0, p2

    if-ne v1, v0, :cond_4

    .line 1513
    :cond_3
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapComment(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 1515
    :cond_4
    move-object/from16 v0, p4

    iget-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v1, :cond_7

    const/16 v1, 0x4f4d

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v1, v3, :cond_7

    .line 1517
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1518
    .local v12, option:Landroid/graphics/BitmapFactory$Options;
    if-eqz p6, :cond_6

    .line 1519
    const-string v1, "com.android.htccontacts"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1520
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->imageDimension()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1526
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1528
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1530
    const/4 v1, 0x0

    move-object/from16 v0, p4

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1531
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    goto :goto_0

    .line 1522
    :cond_5
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    move/from16 v0, p2

    invoke-static {v0, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 1525
    :cond_6
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    move/from16 v0, p2

    invoke-static {v0, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 1536
    .end local v12           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iget-boolean v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-ne v1, v3, :cond_1

    .line 1538
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/4 v10, 0x1

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1540
    if-eqz v2, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-ne v1, v3, :cond_9

    .line 1541
    :cond_8
    const/4 v2, 0x0

    .line 1543
    :cond_9
    if-nez v2, :cond_1

    const/16 v1, 0x4f4d

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v1, v3, :cond_1

    .line 1547
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1548
    .restart local v12       #option:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    move/from16 v0, p2

    invoke-static {v0, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1549
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1550
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    goto/16 :goto_0
.end method

.method public doImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "nPosition"
    .parameter "uriFilePath"

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    invoke-interface {v1, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;->onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    :cond_0
    return-object v0
.end method

.method public forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;Landroid/os/Handler;Z)I
    .locals 9
    .parameter "nIndex"
    .parameter "anAlbum"
    .parameter "hHandler"
    .parameter "bIsForceLiveUpdate"

    .prologue
    .line 1194
    const/4 v1, -0x1

    .line 1196
    .local v1, nIntegrity:I
    const/4 v3, 0x0

    .line 1197
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1199
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v5, :cond_1

    :cond_0
    move v2, v1

    .line 1258
    .end local v1           #nIntegrity:I
    .local v2, nIntegrity:I
    :goto_0
    return v2

    .line 1202
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    .line 1204
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_2
    :goto_1
    move v2, v1

    .line 1258
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .line 1212
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1214
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverURL()Ljava/lang/String;

    move-result-object v4

    .line 1216
    .local v4, url:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isContentUri(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1218
    :cond_4
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1219
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1220
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_1

    .line 1228
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 1230
    :cond_6
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    if-eqz v5, :cond_2

    .line 1232
    iget v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSRequestAlbumCoverUri(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1233
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 1238
    :cond_7
    iget-boolean v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->isCandidate()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1241
    iget-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumbHeader:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 1245
    iget v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v8, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumbHeader:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1246
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 1248
    :cond_8
    iget v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1249
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1
.end method

.method public forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;II)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 8
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"
    .parameter "nIndexFirst"
    .parameter "nIndexEnd"

    .prologue
    .line 1270
    const/4 v2, -0x1

    .line 1272
    .local v2, nIntegrity:I
    const/4 v3, 0x0

    .line 1273
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1275
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v0

    .line 1385
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 1282
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_2

    .line 1283
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1290
    :goto_1
    if-nez v0, :cond_3

    move-object v1, v0

    .line 1291
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1286
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    .line 1287
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 1293
    :cond_3
    iget-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 1294
    .local v5, urlThumb:Ljava/lang/String;
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 1299
    .local v4, urlFull:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, p4, p5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isScreenItemComplete(III)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1306
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v6, :cond_6

    const/4 v6, -0x1

    if-eq v6, v2, :cond_4

    const/4 v6, -0x2

    if-ne v6, v2, :cond_6

    .line 1314
    :cond_4
    invoke-direct {p0, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isContentUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1317
    :cond_5
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1318
    const/4 v6, 0x0

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_6
    :goto_2
    move-object v1, v0

    .line 1385
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1322
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    .line 1324
    :cond_8
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    if-eqz v6, :cond_6

    .line 1326
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSRequestPhotoThumbnailUri(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1327
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2

    .line 1333
    :cond_9
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1334
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2

    .line 1341
    :cond_a
    iget-boolean v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v6, :cond_6

    const/4 v6, 0x1

    invoke-virtual {p0, p4, p5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isScreenItemComplete(III)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1343
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v6, :cond_6

    if-eqz v2, :cond_b

    const/4 v6, -0x1

    if-eq v6, v2, :cond_b

    const/4 v6, -0x2

    if-eq v6, v2, :cond_b

    const/4 v6, -0x4

    if-ne v6, v2, :cond_6

    .line 1353
    :cond_b
    iget-boolean v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v6, :cond_d

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isContentUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1357
    :cond_c
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1358
    const/4 v6, 0x1

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2

    .line 1362
    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f

    .line 1364
    :cond_e
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    if-eqz v6, :cond_6

    .line 1366
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSRequestPhotoUri(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1367
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2

    .line 1373
    :cond_f
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1374
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2
.end method

.method public forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)V
    .locals 4
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"

    .prologue
    .line 1482
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v1, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1488
    const/4 v0, 0x0

    .line 1490
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v1, :cond_0

    .line 1491
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0
.end method

.method public forwardDownloadRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .parameter "id"
    .parameter "url"
    .parameter "hHandler"

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1160
    const/4 v0, 0x0

    .line 1161
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1162
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0
.end method

.method public forwardDownloadRequestSingle(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 10
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1395
    const/4 v2, -0x1

    .line 1397
    .local v2, nIntegrity:I
    const/4 v3, 0x0

    .line 1398
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1400
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v0

    .line 1478
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 1407
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_2

    .line 1408
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1415
    :goto_1
    if-nez v0, :cond_3

    move-object v1, v0

    .line 1416
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1411
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    .line 1412
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 1418
    :cond_3
    iget-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 1419
    .local v5, urlThumb:Ljava/lang/String;
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 1421
    .local v4, urlFull:Ljava/lang/String;
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v6, :cond_9

    const/4 v6, -0x1

    if-ne v6, v2, :cond_9

    .line 1426
    invoke-direct {p0, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isContentUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1428
    :cond_4
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1429
    iput v8, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_5
    :goto_2
    move-object v1, v0

    .line 1478
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1433
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    .line 1435
    :cond_7
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    if-eqz v6, :cond_5

    .line 1437
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSRequestPhotoThumbnailUri(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1438
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2

    .line 1443
    :cond_8
    invoke-virtual {p0, v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1444
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2

    .line 1451
    :cond_9
    iget-boolean v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v6, :cond_5

    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v6, :cond_5

    if-nez v2, :cond_5

    .line 1456
    iget-boolean v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v6, :cond_b

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isContentUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1458
    :cond_a
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1459
    iput v9, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2

    .line 1463
    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    .line 1465
    :cond_c
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    if-eqz v6, :cond_5

    .line 1467
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSRequestPhotoUri(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1468
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2

    .line 1473
    :cond_d
    invoke-virtual {p0, v0, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1474
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2
.end method

.method public getBitmapCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "nType"
    .parameter "nSource"

    .prologue
    .line 918
    const/4 v8, 0x0

    .line 919
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 920
    .local v10, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v9, v8

    .line 952
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 923
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v10       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v10, :cond_2

    move-object v9, v8

    .line 924
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 926
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    .line 927
    .local v1, szFilePath:Ljava/lang/String;
    const/4 v0, 0x1

    iget-object v2, v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v0, v2, :cond_3

    .line 929
    iget-object v0, v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 930
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 938
    :cond_3
    if-nez v8, :cond_4

    .line 940
    const/4 v0, 0x1

    iget-object v2, v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v0, v2, :cond_4

    .line 942
    iget-object v0, v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 943
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_4
    move-object v9, v8

    .line 952
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getBitmapCache(ILjava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "nIndex"
    .parameter "szFilePath"
    .parameter "nType"
    .parameter "nSource"

    .prologue
    .line 968
    const/4 v8, 0x0

    .line 969
    .local v8, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v9, v8

    .line 979
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 972
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v9, v8

    .line 979
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getDefaultImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBitmap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nIndex"
    .parameter "szURL"
    .parameter "szURLHeader"
    .parameter "bIsThumbnail"
    .parameter "hHandler"
    .parameter "bIsIdle"

    .prologue
    .line 716
    const/4 v7, 0x0

    .line 718
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_1

    .line 720
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    move-object v8, v7

    .line 763
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v8

    .line 724
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 730
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_2

    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v1, :cond_2

    .line 733
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 734
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p2, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 735
    if-eqz p5, :cond_3

    .line 736
    iput-object p3, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 739
    :goto_2
    invoke-virtual {v4, p6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 741
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 754
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    :goto_3
    const/4 v0, -0x3

    if-ne p2, v0, :cond_5

    if-nez p5, :cond_5

    move-object v8, v7

    .line 756
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 738
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iput-object p3, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    goto :goto_2

    .line 749
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 750
    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget v2, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p3

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    .line 760
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_5
    if-nez v7, :cond_0

    .line 761
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nIndex"
    .parameter "szURL"
    .parameter "bIsThumbnail"
    .parameter "hHandler"
    .parameter "bIsIdle"

    .prologue
    .line 663
    const/4 v7, 0x0

    .line 665
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_1

    .line 667
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    move-object v8, v7

    .line 711
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v8

    .line 671
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 677
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_2

    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v1, :cond_2

    .line 680
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 681
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p2, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 682
    if-eqz p4, :cond_3

    .line 683
    iput-object p3, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 686
    :goto_2
    invoke-virtual {v4, p5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 688
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 701
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    :goto_3
    const/4 v0, -0x3

    if-ne p2, v0, :cond_5

    if-nez p4, :cond_5

    move-object v8, v7

    .line 703
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 685
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iput-object p3, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    goto :goto_2

    .line 696
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 697
    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget v2, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    .line 707
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_5
    if-nez v7, :cond_0

    .line 708
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImageBitmap2(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"
    .parameter "nFirstVisibleIndex"

    .prologue
    const/4 v6, 0x1

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1046
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v1, v0

    .line 1095
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1049
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1055
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v4, :cond_2

    .line 1057
    const/4 v2, 0x0

    .line 1059
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1061
    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v4, v5, :cond_4

    .line 1063
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v4, p5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v4

    if-ne v6, v4, :cond_3

    .line 1065
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 1095
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1069
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_3
    invoke-direct {p0, p5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenItemComplete(I)Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 1071
    const-string v4, "ImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][getImageBitmap2]: off screen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    .line 1078
    :cond_4
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    .line 1090
    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_5
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 1091
    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, p2, v2, p5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doGetImageDecode(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public getImageBitmapWithCustomMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "srcBmp"
    .parameter "maskBmp"

    .prologue
    .line 1767
    const/4 v0, 0x0

    .line 1769
    .local v0, destBmp:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1771
    invoke-static {p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1774
    :cond_0
    return-object v0
.end method

.method public getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 4
    .parameter "anAlbum"

    .prologue
    .line 1031
    const/4 v0, 0x0

    .line 1033
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1038
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 1036
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move-object v1, v0

    .line 1038
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0
.end method

.method public getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 4
    .parameter "aPhoto"

    .prologue
    .line 1020
    const/4 v0, 0x0

    .line 1022
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1027
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 1025
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move-object v1, v0

    .line 1027
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0
.end method

.method public getImageCache(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 3
    .parameter "id"

    .prologue
    .line 1008
    const/4 v0, 0x0

    .line 1010
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1015
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 1013
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move-object v1, v0

    .line 1015
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0
.end method

.method public getImageDimension(Ljava/lang/String;)[I
    .locals 3
    .parameter "szUrl"

    .prologue
    .line 364
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 365
    .local v1, nDimension:[I
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 366
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    .line 368
    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 370
    :cond_0
    return-object v1

    .line 364
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getImageGridBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "nIndex"
    .parameter "szURL"
    .parameter "bIsThumbnail"
    .parameter "hHandler"
    .parameter "bIsIdle"

    .prologue
    .line 767
    const/4 v7, 0x0

    .line 769
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_1

    .line 771
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    move-object v8, v7

    .line 838
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v8

    .line 775
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 781
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_4

    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v1, :cond_4

    .line 784
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 785
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isContentUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/4 v9, 0x1

    .line 787
    .local v9, inLocal:Z
    :goto_2
    iput p2, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 788
    if-eqz p4, :cond_6

    .line 790
    iput-object p3, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 791
    if-eqz v9, :cond_3

    .line 793
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 794
    const/4 v0, 0x0

    iput v0, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 806
    :cond_3
    :goto_3
    invoke-virtual {v4, p5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 808
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    if-eqz v9, :cond_7

    .line 813
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 828
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v9           #inLocal:Z
    :cond_4
    :goto_4
    const/4 v0, -0x3

    if-ne p2, v0, :cond_9

    if-nez p4, :cond_9

    move-object v8, v7

    .line 830
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 785
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 799
    .restart local v9       #inLocal:Z
    :cond_6
    iput-object p3, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 800
    if-eqz v9, :cond_3

    .line 802
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 803
    const/4 v0, 0x1

    iput v0, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_3

    .line 817
    :cond_7
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_4

    .line 823
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v9           #inLocal:Z
    :cond_8
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 824
    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget v2, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p3

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_4

    .line 834
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_9
    if-nez v7, :cond_0

    .line 835
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImageIntegrity(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)I
    .locals 6
    .parameter "aPhoto"

    .prologue
    .line 645
    const/4 v2, -0x1

    .line 647
    .local v2, nIntegrity:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    .line 659
    .end local v2           #nIntegrity:I
    .local v3, nIntegrity:I
    :goto_0
    return v3

    .line 650
    .end local v3           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    :cond_1
    const/4 v1, 0x0

    .line 651
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v0, 0x0

    .line 653
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v1, :cond_2

    move v3, v2

    .line 654
    .end local v2           #nIntegrity:I
    .restart local v3       #nIntegrity:I
    goto :goto_0

    .line 656
    .end local v3           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    :cond_2
    iget v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    move v3, v2

    .line 659
    .end local v2           #nIntegrity:I
    .restart local v3       #nIntegrity:I
    goto :goto_0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    return v0
.end method

.method public getMaxDownloadBuffer()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    return v0
.end method

.method public isExistValidImage(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uriImage"

    .prologue
    .line 621
    const/4 v0, 0x0

    .line 623
    .local v0, bResult:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 636
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 625
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isValidImage(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 627
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    move v1, v0

    .line 632
    .restart local v1       #bResult:I
    goto :goto_0

    .line 635
    .end local v1           #bResult:I
    .end local v2           #file:Ljava/io/File;
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 636
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isFileCacheExist(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Z)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 5
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "bForceThumbnail"

    .prologue
    const/4 v4, 0x1

    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 617
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 578
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_3

    .line 580
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 582
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 583
    const/4 v2, -0x2

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_2
    :goto_1
    move-object v1, v0

    .line 617
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 593
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_3
    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v4, v2, :cond_4

    .line 596
    iput v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 600
    :cond_4
    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v4, v2, :cond_5

    .line 603
    const/4 v2, 0x0

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 604
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v2, :cond_2

    .line 605
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    .line 609
    :cond_5
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 610
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v2, :cond_2

    .line 611
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1
.end method

.method public isImageDownloadInProgress()Z
    .locals 6

    .prologue
    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 896
    .local v3, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 897
    .local v2, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 899
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v1, 0x0

    .line 900
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 902
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 903
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v3       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v3, :cond_0

    .line 905
    iget v5, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v5, :cond_0

    .line 908
    const/4 v0, 0x1

    .line 914
    :cond_1
    return v0
.end method

.method public isScreenItemComplete(III)Z
    .locals 8
    .parameter "nIndexBegin"
    .parameter "nIndexEnd"
    .parameter "nIntegrity"

    .prologue
    .line 2051
    const/4 v2, 0x1

    .line 2052
    .local v2, bResult:Z
    const/4 v1, 0x0

    .line 2053
    .local v1, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v4, 0x0

    .line 2054
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move v5, p1

    .local v5, nIndex:I
    :goto_0
    if-le p2, v5, :cond_1

    .line 2058
    :try_start_0
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 2054
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2061
    :catch_0
    move-exception v3

    .line 2077
    :cond_1
    :goto_1
    return v2

    .line 2063
    :cond_2
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v4, :cond_3

    .line 2066
    const/4 v2, 0x0

    .line 2067
    goto :goto_1

    .line 2069
    :cond_3
    iget v6, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-le p3, v6, :cond_0

    .line 2072
    const/4 v2, 0x0

    .line 2073
    goto :goto_1
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->instance(Landroid/content/Context;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 152
    :cond_0
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][onCreate]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1791
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->destroyInstance()V

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 160
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][onDestroy]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onOSDownloadSuccess(ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .parameter "nType"
    .parameter "uri"
    .parameter "bundle"

    .prologue
    .line 2415
    packed-switch p1, :pswitch_data_0

    .line 2427
    :goto_0
    return-void

    .line 2418
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSSyncAlbumCoverUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2421
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSSyncPhotoThumbnailUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2424
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSSyncPhotoUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOSRequestAlbumCoverUri(ILjava/lang/String;)I
    .locals 3
    .parameter "nIndex"
    .parameter "aid"

    .prologue
    .line 2451
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2452
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "photo_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    const/4 v1, 0x0

    .line 2456
    .local v1, nTaskId:I
    const/4 v2, 0x1

    invoke-direct {p0, v2, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestOSPhotoDownload(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    .line 2460
    if-nez v1, :cond_0

    .line 2461
    const/4 v1, 0x1

    .line 2462
    :cond_0
    return v1
.end method

.method public onOSRequestPhotoThumbnailUri(ILjava/lang/String;)I
    .locals 3
    .parameter "nIndex"
    .parameter "pid"

    .prologue
    .line 2468
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2469
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "photo_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    const/4 v1, 0x0

    .line 2473
    .local v1, nTaskId:I
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestOSPhotoDownload(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    .line 2480
    if-nez v1, :cond_0

    .line 2481
    const/4 v1, 0x1

    .line 2482
    :cond_0
    return v1
.end method

.method public onOSRequestPhotoUri(ILjava/lang/String;)I
    .locals 3
    .parameter "nIndex"
    .parameter "pid"

    .prologue
    .line 2488
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2489
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "photo_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    const/4 v1, 0x0

    .line 2493
    .local v1, nTaskId:I
    const/4 v2, 0x3

    invoke-direct {p0, v2, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestOSPhotoDownload(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    .line 2500
    if-nez v1, :cond_0

    .line 2501
    const/4 v1, 0x1

    .line 2502
    :cond_0
    return v1
.end method

.method public onOSSyncAlbumCoverUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .parameter "uri"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 2506
    const-string v2, "photo_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2507
    .local v1, szPhotoId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2508
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 2510
    const-string v2, "ImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProvider][onOSSyncAlbumCoverUri]: 1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    :cond_0
    :goto_0
    return-void

    .line 2514
    :cond_1
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 2515
    iput v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2516
    iput v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 2521
    const/16 v2, 0x4f4d

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v2, v3, :cond_0

    .line 2522
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0
.end method

.method public onOSSyncPhotoThumbnailUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .parameter "uri"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 2526
    const-string v2, "photo_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2527
    .local v1, szPhotoId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2528
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 2530
    const-string v2, "ImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProvider][onOSSyncPhotoThumbnailUri]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    :cond_0
    :goto_0
    return-void

    .line 2534
    :cond_1
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 2535
    iput v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2536
    iput v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 2543
    const/16 v2, 0x4f4d

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v2, v3, :cond_0

    .line 2545
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0
.end method

.method public onOSSyncPhotoUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .parameter "uri"
    .parameter "bundle"

    .prologue
    .line 2550
    const-string v2, "photo_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2551
    .local v1, szPhotoId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2552
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 2554
    const-string v2, "ImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProvider][onOSSyncPhotoUri]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    :cond_0
    :goto_0
    return-void

    .line 2558
    :cond_1
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 2559
    const/4 v2, 0x1

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2560
    const/4 v2, 0x0

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 2567
    const/16 v2, 0x4f4d

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v2, v3, :cond_0

    .line 2568
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->destroyInstance()V

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 175
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->instance(Landroid/content/Context;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 167
    :cond_0
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 239
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][release]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->release()V

    .line 247
    :cond_0
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][release]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public releaseMemoryCache()V
    .locals 10

    .prologue
    .line 205
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v7, :cond_0

    .line 206
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->clear()V

    .line 208
    :cond_0
    const/4 v4, 0x0

    .line 209
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v6, 0x0

    .line 210
    .local v6, nCountBmp:I
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 211
    .local v3, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 212
    .local v5, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v2, 0x0

    .line 215
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 217
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 220
    const/4 v7, -0x1

    iput v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 221
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 222
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 223
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 226
    :cond_2
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    .line 227
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_3
    :goto_1
    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "ImageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][ImageProvider][releaseMemoryCache]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I
    .locals 11
    .parameter "imageCache"
    .parameter "nIntegrity"

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 1099
    const/4 v2, 0x0

    .line 1100
    .local v2, nTaskID:I
    const/4 v4, 0x0

    .line 1101
    .local v4, szURL:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1102
    .local v6, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    .line 1103
    .local v1, isThumb:Z
    const/4 v5, 0x0

    .line 1106
    .local v5, szURLHeader:Ljava/lang/String;
    if-nez p1, :cond_0

    move v3, v2

    .line 1150
    .end local v2           #nTaskID:I
    .local v3, nTaskID:I
    :goto_0
    return v3

    .line 1109
    .end local v3           #nTaskID:I
    .restart local v2       #nTaskID:I
    :cond_0
    if-nez p2, :cond_2

    .line 1111
    iget-object v4, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 1112
    iget-object v6, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1113
    iput v9, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1114
    iget-object v5, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumbHeader:Ljava/lang/String;

    .line 1125
    :cond_1
    :goto_1
    if-nez v4, :cond_3

    move v3, v2

    .end local v2           #nTaskID:I
    .restart local v3       #nTaskID:I
    goto :goto_0

    .line 1116
    .end local v3           #nTaskID:I
    .restart local v2       #nTaskID:I
    :cond_2
    if-ne v0, p2, :cond_1

    .line 1118
    iget-object v4, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 1120
    iget-object v6, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1121
    const/4 v1, 0x0

    .line 1122
    iget-object v5, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlHeader:Ljava/lang/String;

    goto :goto_1

    .line 1129
    :cond_3
    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isContentUri(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1131
    .local v0, inLocal:Z
    :cond_4
    :goto_2
    iget-boolean v8, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v8, :cond_8

    if-eqz v0, :cond_8

    if-nez v6, :cond_8

    .line 1133
    iget v8, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v8, v9, :cond_5

    .line 1134
    iput v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1135
    :cond_5
    if-eqz v1, :cond_7

    .line 1136
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1140
    :goto_3
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    :goto_4
    move v3, v2

    .line 1150
    .end local v2           #nTaskID:I
    .restart local v3       #nTaskID:I
    goto :goto_0

    .end local v0           #inLocal:Z
    .end local v3           #nTaskID:I
    .restart local v2       #nTaskID:I
    :cond_6
    move v0, v7

    .line 1129
    goto :goto_2

    .line 1138
    .restart local v0       #inLocal:Z
    :cond_7
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    goto :goto_3

    .line 1144
    :cond_8
    if-eqz v5, :cond_9

    .line 1145
    iget-object v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    invoke-direct {p0, v10, v7, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    .line 1147
    :cond_9
    iget-object v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    invoke-direct {p0, v10, v7, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_4
.end method

.method public requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V
    .locals 4
    .parameter "imageCache"

    .prologue
    const/4 v3, 0x0

    .line 984
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 987
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 988
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "index_id"

    iget v2, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 989
    const/16 v1, 0x4e89

    invoke-virtual {p1, v1, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1005
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 993
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    if-eqz v1, :cond_1

    .line 996
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    iget v2, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;->onImageDownloaded(I)V

    goto :goto_0

    .line 1001
    :cond_1
    const/16 v1, 0x4e8d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public resolveCandidateItem(Ljava/lang/String;Landroid/net/Uri;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 7
    .parameter "szUrl"
    .parameter "uri"

    .prologue
    .line 525
    const/4 v2, 0x0

    .line 527
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    if-gtz v4, :cond_0

    .line 528
    const/4 v4, 0x0

    .line 565
    :goto_0
    return-object v4

    .line 533
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 534
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 536
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v0, 0x0

    .line 537
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 539
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 540
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_1

    .line 543
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->isCandidate()Z

    move-result v5

    if-ne v4, v5, :cond_4

    .line 549
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v4, :cond_3

    .line 551
    iput-object p2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 552
    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    .line 553
    const-string v4, "ImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][resolveCandidateItem]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v4, v2

    .line 565
    goto :goto_0

    .line 556
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 560
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAdapterList(Ljava/util/List;)V
    .locals 1
    .parameter "listAdapter"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    return-void
.end method

.method public setBitmapCache(ILandroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 9
    .parameter "nIndex"
    .parameter "bitmap"
    .parameter "szFilePath"
    .parameter "nType"
    .parameter "nSource"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move v2, p1

    move v3, p4

    move-object v4, p3

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 965
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 1796
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 3
    .parameter "dataPlugin"

    .prologue
    .line 112
    instance-of v0, p1, Lcom/htc/opensense/album/plugin/IDownloadHost;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense/album/plugin/IDownloadHost;->onCreateDownloadManager()Lcom/htc/opensense/album/plugin/IDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    .line 118
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    if-eqz v0, :cond_2

    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUiThread:Ljava/lang/Thread;

    .line 122
    :cond_2
    const-string v0, "ImageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProvider][setDataPlugin]: IDownloadHost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mOSDownloadManager:Lcom/htc/opensense/album/plugin/IDownloadManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultImage(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "nIPXType"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 312
    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :pswitch_0
    return-void

    .line 312
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDefaultImageResource(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "nResid"

    .prologue
    .line 292
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 297
    :cond_0
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    .line 298
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, bitmapTemp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 300
    .local v1, nDimension:I
    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v3, v1, -0x1

    invoke-static {v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 303
    return-void
.end method

.method public setImageDecoder(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;)V
    .locals 0
    .parameter "decoder"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    .line 327
    return-void
.end method

.method public setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    .line 339
    return-void
.end method

.method public setMaxDownloadBuffer(I)V
    .locals 0
    .parameter "nBuffer"

    .prologue
    .line 356
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 357
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "nScrollState"

    .prologue
    .line 144
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    .line 146
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "nBegin"
    .parameter "nEnd"

    .prologue
    .line 342
    if-le p1, p2, :cond_0

    .line 343
    move p2, p1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->setVisibleRange(II)V

    .line 349
    :cond_1
    return-void
.end method

.method public triggerNotifyImageDownloaded(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    invoke-interface {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;->onImageDownloaded(I)V

    .line 642
    :cond_0
    return-void
.end method
