.class abstract Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.implements Lcom/htc/sunny2/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "BaseImageList"


# instance fields
.field mBaseUri:Landroid/net/Uri;

.field mBucketId:Ljava/lang/String;

.field protected mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field mCursorDeactivated:Z

.field mDistinct:Z

.field mHandler:Landroid/os/Handler;

.field protected mIsFavorite:Z

.field mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

.field protected mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

.field protected mMiniThumbData:Ljava/io/RandomAccessFile;

.field mRandom:Ljava/util/Random;

.field mSort:I

.field protected mThumbUri:Landroid/net/Uri;

.field protected mTypeFilter:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field protected mWhereStatement:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "where"
    .parameter "isFavorite"
    .parameter "typeFilter"

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1640
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    .line 1642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 1938
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    .line 1940
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;-><init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    .line 1657
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    .line 1658
    iput p5, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mSort:I

    .line 1659
    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    .line 1660
    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 1661
    iput-object p6, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    .line 1662
    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 1663
    iput-object p7, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    .line 1664
    iput-boolean p8, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    .line 1665
    iput-object p9, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mTypeFilter:Ljava/lang/String;

    .line 1666
    return-void
.end method

.method static synthetic access$100(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;J[BJ)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1629
    invoke-direct/range {p0 .. p5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method private createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "id"

    .prologue
    const/16 v9, 0x140

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2021
    if-eqz p1, :cond_2

    .line 2022
    const/4 v1, 0x0

    .line 2023
    .local v1, thumbData:[B
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v2

    monitor-enter v2

    .line 2024
    :try_start_0
    invoke-static {p1}, Lcom/htc/opensense2/album/util/ExifUtil;->getExifThumbnail(Ljava/lang/String;)[B

    move-result-object v1

    .line 2025
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2026
    if-eqz v1, :cond_2

    .line 2029
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2030
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2031
    array-length v0, v1

    invoke-static {v1, v7, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2032
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2033
    .local v4, width:I
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2040
    .local v5, height:I
    if-lt v4, v9, :cond_0

    if-lt v5, v9, :cond_0

    move-object v0, p0

    move-wide v2, p2

    .line 2041
    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->storeThumbnail([BJII)Z

    .line 2055
    :cond_0
    invoke-static {v6, v9}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v0

    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2057
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v0, v8, :cond_1

    .line 2058
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2063
    :cond_1
    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2064
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2065
    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2066
    array-length v0, v1

    invoke-static {v1, v7, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2071
    .end local v1           #thumbData:[B
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 2025
    .restart local v1       #thumbData:[B
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2071
    .end local v1           #thumbData:[B
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createThumbnailFromUri(Landroid/database/Cursor;J)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 2077
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2078
    .local v1, uri:Landroid/net/Uri;
    const/16 v2, 0x140

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2079
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2080
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    .line 2085
    :goto_0
    return-object v0

    .line 2082
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2083
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$300()I

    move-result v2

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getMiniThumbFromFile(J[BJ)[B
    .locals 16
    .parameter "id"
    .parameter "data"
    .parameter "magicCheck"

    .prologue
    .line 2528
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v12

    .line 2529
    .local v12, r:Ljava/io/RandomAccessFile;
    if-nez v12, :cond_0

    .line 2530
    const/16 p3, 0x0

    .line 2558
    .end local p3
    :goto_0
    return-object p3

    .line 2532
    .restart local p3
    :cond_0
    const-wide/16 v13, 0x2710

    mul-long v10, p1, v13

    .line 2533
    .local v10, pos:J
    move-object v4, v12

    .line 2534
    .local v4, f:Ljava/io/RandomAccessFile;
    monitor-enter v4

    .line 2536
    :try_start_0
    invoke-virtual {v4, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2537
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 2538
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2539
    .local v8, magic:J
    cmp-long v13, v8, p4

    if-eqz v13, :cond_1

    .line 2541
    const/16 p3, 0x0

    .end local p3
    :try_start_1
    monitor-exit v4

    goto :goto_0

    .line 2560
    .end local v8           #magic:J
    :catchall_0
    move-exception v13

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 2543
    .restart local v8       #magic:J
    .restart local p3
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 2544
    .local v7, length:I
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13, v7}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2545
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 2547
    .end local v7           #length:I
    .end local v8           #magic:J
    :cond_2
    const/16 p3, 0x0

    .end local p3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2549
    .restart local p3
    :catch_0
    move-exception v2

    .line 2552
    .local v2, ex:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v5

    .line 2557
    .local v5, fileLength:J
    :goto_1
    :try_start_5
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "couldn\'t read thumbnail for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; pos is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; length is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    const/16 p3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 2553
    .end local v5           #fileLength:J
    :catch_1
    move-exception v3

    .line 2554
    .local v3, ex1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2555
    const-wide/16 v5, -0x1

    .restart local v5       #fileLength:J
    goto :goto_1
.end method

.method private getThumbnailPath(J)Ljava/lang/String;
    .locals 14
    .parameter "id"

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v9

    .line 1793
    .local v9, size:I
    const/4 v5, 0x0

    .line 1794
    .local v5, m:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v4, 0x0

    .line 1795
    .local v4, isFound:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 1796
    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v5

    .line 1797
    if-nez v5, :cond_1

    .line 1795
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1800
    :cond_1
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v11

    cmp-long v11, v11, p1

    if-nez v11, :cond_0

    .line 1801
    const/4 v4, 0x1

    .line 1806
    :cond_2
    if-nez v4, :cond_3

    .line 1807
    const/4 v11, 0x0

    .line 1842
    :goto_1
    return-object v11

    .line 1810
    :cond_3
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    .line 1811
    .local v7, s:Ljava/lang/String;
    if-nez v7, :cond_4

    .line 1812
    const/4 v11, 0x0

    goto :goto_1

    .line 1814
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1816
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1817
    .local v6, nameindex:I
    if-gtz v6, :cond_5

    .line 1818
    const/4 v11, 0x0

    goto :goto_1

    .line 1820
    :cond_5
    const-string v11, "."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1821
    .local v1, extindex:I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    sub-int v2, v11, v1

    .line 1822
    .local v2, extsize:I
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v0, v11, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1823
    .local v8, sequence:Ljava/lang/String;
    if-nez v8, :cond_6

    .line 1824
    const/4 v11, 0x0

    goto :goto_1

    .line 1826
    :cond_6
    const-string v11, ".thm"

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1828
    const/4 v11, 0x0

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1829
    const-string v11, "."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1830
    add-int v11, v1, v2

    invoke-virtual {v0, v1, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1831
    const-string v11, ".thm"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1833
    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageThumbnailPathS40()Ljava/lang/String;

    move-result-object v10

    .line 1837
    .local v10, thumbnail_path:Ljava/lang/String;
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1838
    const-string v11, "ImageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getThumbnailPath:  name"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1833
    .end local v10           #thumbnail_path:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_2
.end method

.method private getThumbnailPathInMediaFolder(J)Ljava/lang/String;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 1846
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v8

    .line 1848
    .local v8, size:I
    const/4 v4, 0x0

    .line 1849
    .local v4, m:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v3, 0x0

    .line 1850
    .local v3, isFound:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 1851
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    .line 1852
    if-nez v4, :cond_1

    .line 1850
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1855
    :cond_1
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v10

    cmp-long v10, v10, p1

    if-nez v10, :cond_0

    .line 1856
    const/4 v3, 0x1

    .line 1861
    :cond_2
    if-nez v3, :cond_4

    .line 1894
    :cond_3
    :goto_1
    return-object v9

    .line 1865
    :cond_4
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 1866
    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1869
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1871
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1872
    .local v5, nameindex:I
    if-lez v5, :cond_3

    .line 1875
    const-string v10, "."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1877
    .local v1, extindex:I
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v0, v10, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1878
    .local v7, sequence:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1881
    const-string v9, ".thm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1885
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1886
    const-string v9, ".thumbnails/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1887
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1894
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private getThumbnailUri(JII)Landroid/net/Uri;
    .locals 11
    .parameter "imageId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 1901
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1935
    :cond_0
    :goto_0
    return-object v7

    .line 1905
    :cond_1
    const/4 v7, 0x0

    .line 1906
    .local v7, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1908
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "image_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1914
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1918
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexThumbId()I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1922
    :cond_2
    if-eqz v6, :cond_3

    .line 1923
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1927
    :cond_3
    if-nez v7, :cond_0

    .line 1928
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1929
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "kind"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1930
    const-string v0, "image_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1931
    const-string v0, "height"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1932
    const-string v0, "width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1933
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 1922
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1923
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 2295
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 2296
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->requery()V

    .line 2297
    monitor-exit v1

    .line 2298
    return-void

    .line 2297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected activateCursor()V
    .locals 0

    .prologue
    .line 2376
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->requery()V

    .line 2377
    return-void
.end method

.method public checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 27
    .parameter "existingImage"
    .parameter "c"
    .parameter "i"

    .prologue
    .line 2090
    const-wide/16 v14, 0x0

    .line 2092
    .local v14, fileMagic:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->lock()V

    .line 2093
    if-nez p1, :cond_1

    .line 2096
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2097
    :try_start_1
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2098
    const-wide/16 v8, -0x1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    :goto_0
    return-wide v8

    .line 2100
    :cond_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2101
    .local v8, magic:J
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexId()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2102
    .local v6, id:J
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2109
    :goto_1
    const-wide/16 v21, 0x0

    cmp-long v4, v8, v21

    if-eqz v4, :cond_3

    .line 2112
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v19

    .line 2113
    .local v19, r:Ljava/io/RandomAccessFile;
    if-eqz v19, :cond_3

    .line 2114
    monitor-enter v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2115
    const-wide/16 v21, 0x2710

    mul-long v17, v6, v21

    .line 2118
    .local v17, pos:J
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v21

    const-wide/16 v23, 0x1

    add-long v23, v23, v17

    const-wide/16 v25, 0x8

    add-long v23, v23, v25

    cmp-long v4, v21, v23

    if-ltz v4, :cond_2

    .line 2119
    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2120
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 2121
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v14

    .line 2122
    cmp-long v4, v14, v8

    if-nez v4, :cond_2

    const-wide/16 v21, 0x0

    cmp-long v4, v8, v21

    if-eqz v4, :cond_2

    cmp-long v4, v8, v6

    if-eqz v4, :cond_2

    .line 2123
    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    goto :goto_0

    .line 2102
    .end local v6           #id:J
    .end local v8           #magic:J
    .end local v17           #pos:J
    .end local v19           #r:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2195
    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    throw v4

    .line 2105
    :cond_1
    :try_start_8
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 2106
    .restart local v8       #magic:J
    invoke-virtual/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageId()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v6

    .restart local v6       #id:J
    goto :goto_1

    .line 2127
    .restart local v17       #pos:J
    .restart local v19       #r:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v13

    .line 2128
    .local v13, ex:Ljava/io/IOException;
    :try_start_9
    const-string v4, "ImageManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "got exception checking file magic: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    .end local v13           #ex:Ljava/io/IOException;
    :cond_2
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2139
    .end local v17           #pos:J
    .end local v19           #r:Ljava/io/RandomAccessFile;
    :cond_3
    const/4 v5, 0x0

    .line 2141
    .local v5, bitmap:Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .line 2142
    .local v16, filePath:Ljava/lang/String;
    :try_start_a
    monitor-enter p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2143
    :try_start_b
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2144
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexData()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2146
    :cond_4
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2148
    if-eqz v16, :cond_9

    .line 2149
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2151
    if-nez v5, :cond_5

    .line 2152
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->createThumbnailFromUri(Landroid/database/Cursor;J)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2154
    :cond_5
    monitor-enter p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2155
    const/4 v12, 0x0

    .line 2156
    .local v12, degrees:I
    :try_start_d
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexOrientation()I

    move-result v11

    .line 2158
    .local v11, column:I
    if-ltz v11, :cond_6

    .line 2159
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2161
    .end local v11           #column:I
    :cond_6
    if-eqz v12, :cond_8

    .line 2162
    invoke-static {v5, v12}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2163
    .local v10, b2:Landroid/graphics/Bitmap;
    if-eq v10, v5, :cond_7

    .line 2164
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2165
    :cond_7
    move-object v5, v10

    .line 2167
    .end local v10           #b2:Landroid/graphics/Bitmap;
    :cond_8
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2172
    .end local v12           #degrees:I
    :cond_9
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    .line 2173
    const-wide/16 v21, 0x0

    cmp-long v4, v8, v21

    if-eqz v4, :cond_9

    .line 2174
    if-eqz v5, :cond_a

    move-object/from16 v4, p0

    .line 2175
    invoke-virtual/range {v4 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    .line 2176
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2179
    :cond_a
    monitor-enter p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2180
    :try_start_f
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2181
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 2182
    .local v20, values:Landroid/content/ContentValues;
    const-string v4, "mini_thumb_magic"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2186
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->requery()Z

    .line 2187
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2189
    if-eqz p1, :cond_b

    .line 2190
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 2192
    :cond_b
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 2195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    goto/16 :goto_0

    .line 2130
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v20           #values:Landroid/content/ContentValues;
    .restart local v17       #pos:J
    .restart local v19       #r:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v4

    :try_start_10
    monitor-exit v19
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2146
    .end local v17           #pos:J
    .end local v19           #r:Ljava/io/RandomAccessFile;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    :catchall_3
    move-exception v4

    :try_start_12
    monitor-exit p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2167
    .restart local v12       #degrees:I
    :catchall_4
    move-exception v4

    :try_start_14
    monitor-exit p2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 2193
    .end local v12           #degrees:I
    :catchall_5
    move-exception v4

    :try_start_16
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    throw v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
.end method

.method public checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 18
    .parameter "cb"

    .prologue
    .line 2200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "mini_thumb_magic"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mini_thumb_magic isnull and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mTypeFilter:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZLjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/ImageManager;->access$400(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id ASC"

    invoke-static/range {v1 .. v6}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2208
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 2209
    const-string v1, "ImageManager"

    const-string v2, "Images.Media.query fail"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    :cond_0
    :goto_0
    return-void

    .line 2212
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 2216
    .local v8, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2218
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v17

    .line 2219
    .local v17, oldPath:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorageS40(Ljava/lang/String;)Z

    move-result v13

    .line 2220
    .local v13, isPhoneStorage:Z
    if-eqz v13, :cond_4

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReadyS40(Z)Z

    move-result v14

    .line 2223
    .local v14, isReady:Z
    :goto_1
    if-eqz v14, :cond_0

    .line 2230
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2232
    .local v16, oldFile:Ljava/io/File;
    if-nez v8, :cond_2

    .line 2235
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2240
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 2241
    if-eqz v7, :cond_0

    .line 2245
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2246
    .local v15, max:I
    const/4 v10, 0x0

    .line 2247
    .local v10, current:I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 2248
    .local v9, curCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v9, :cond_3

    .line 2250
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2255
    if-eqz p1, :cond_5

    .line 2256
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v15}, Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;->checking(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    .line 2266
    :cond_3
    :goto_3
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2267
    :catch_0
    move-exception v11

    .line 2269
    .local v11, ex:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2220
    .end local v9           #curCount:I
    .end local v10           #current:I
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v12           #i:I
    .end local v14           #isReady:Z
    .end local v15           #max:I
    .end local v16           #oldFile:Ljava/io/File;
    :cond_4
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v14

    goto :goto_1

    .line 2251
    .restart local v9       #curCount:I
    .restart local v10       #current:I
    .restart local v12       #i:I
    .restart local v14       #isReady:Z
    .restart local v15       #max:I
    .restart local v16       #oldFile:Ljava/io/File;
    :catch_1
    move-exception v11

    .line 2252
    .restart local v11       #ex:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!! failed to check thumbnail... was the sd card removed? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 2264
    .end local v9           #curCount:I
    .end local v10           #current:I
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v12           #i:I
    .end local v15           #max:I
    :catchall_0
    move-exception v1

    .line 2266
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2270
    :goto_4
    throw v1

    .line 2261
    .restart local v9       #curCount:I
    .restart local v10       #current:I
    .restart local v12       #i:I
    .restart local v15       #max:I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 2248
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2267
    .end local v9           #curCount:I
    .end local v10           #current:I
    .end local v12           #i:I
    .end local v15           #max:I
    :catch_2
    move-exception v11

    .line 2269
    .restart local v11       #ex:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public closeCursor()V
    .locals 1

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2331
    :goto_0
    return-void

    .line 2324
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    if-nez v0, :cond_1

    .line 2325
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 2327
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2328
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2330
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public commitChanges()V
    .locals 2

    .prologue
    .line 2275
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 2277
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->requery()V

    .line 2278
    monitor-exit v1

    .line 2279
    return-void

    .line 2278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method computeFitSize([III)V
    .locals 6
    .parameter "nResult"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1998
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget v2, p1, v4

    if-eqz v2, :cond_0

    aget v2, p1, v5

    if-nez v2, :cond_1

    .line 1999
    :cond_0
    const-string v2, "ImageManager"

    const-string v3, "computeFitSize, Invalid Arg"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    :goto_0
    return-void

    .line 2003
    :cond_1
    int-to-float v2, p2

    aget v3, p1, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2004
    .local v0, rateX:F
    int-to-float v2, p3

    aget v3, p1, v5

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 2005
    .local v1, rateY:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 2006
    aput p2, p1, v4

    .line 2007
    aget v2, p1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p1, v5

    goto :goto_0

    .line 2009
    :cond_2
    aget v2, p1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    aput v2, p1, v4

    .line 2010
    aput p3, p1, v5

    goto :goto_0
.end method

.method computeSampleSize2([II)V
    .locals 5
    .parameter "nResult"
    .parameter "nTargetWidthHeight"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1979
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1982
    .local v0, Options:Landroid/graphics/BitmapFactory$Options;
    aget v2, p1, v4

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1983
    aget v2, p1, v3

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1984
    invoke-static {v0, p2}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    .line 1985
    .local v1, nRate:I
    if-ge v1, v3, :cond_0

    .line 1986
    const/4 v1, 0x0

    .line 1987
    :cond_0
    aget v2, p1, v4

    div-int/2addr v2, v1

    aput v2, p1, v4

    .line 1988
    aget v2, p1, v3

    div-int/2addr v2, v1

    aput v2, p1, v3

    .line 1989
    return-void
.end method

.method protected contentUri(J)Landroid/net/Uri;
    .locals 5
    .parameter "id"

    .prologue
    .line 2284
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 2285
    .local v1, existingId:J
    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    .line 2286
    const-string v3, "ImageManager"

    const-string v4, "id mismatch"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2290
    .end local v1           #existingId:J
    :goto_0
    return-object v3

    .line 2288
    :catch_0
    move-exception v0

    .line 2290
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 2301
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    .line 2304
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 2305
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2311
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_1

    .line 2313
    :try_start_1
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 2314
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2319
    :cond_1
    :goto_1
    return-void

    .line 2307
    :catch_0
    move-exception v0

    .line 2309
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2315
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2316
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2355
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2356
    const/4 v1, -0x1

    .line 2359
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method protected getCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2364
    const-string v0, "ImageManager"

    const-string v1, "cursor had been closed"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    const/4 v0, 0x0

    .line 2371
    :goto_0
    return-object v0

    .line 2367
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 2368
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    if-eqz v0, :cond_1

    .line 2369
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->activateCursor()V

    .line 2371
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit v1

    goto :goto_0

    .line 2372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 22
    .parameter "i"

    .prologue
    .line 2380
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v13

    .line 2381
    .local v13, c:Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 2382
    const/16 v19, 0x0

    .line 2435
    :goto_0
    return-object v19

    .line 2385
    :cond_0
    monitor-enter v13

    .line 2389
    :try_start_0
    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 2393
    .local v20, moved:Z
    if-eqz v20, :cond_6

    .line 2395
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2396
    .local v3, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2398
    .local v19, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v19, :cond_5

    .line 2400
    const-wide/16 v5, 0x0

    .line 2401
    .local v5, miniThumbId:J
    const/4 v12, 0x0

    .line 2402
    .local v12, rotation:I
    const/16 v21, 0x0

    .line 2403
    .local v21, nFavorite:I
    const-wide/16 v9, 0x0

    .line 2405
    .local v9, dateTaken:J
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v17

    .line 2406
    .local v17, idxMiniThumbId:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexOrientation()I

    move-result v18

    .line 2407
    .local v18, idxOrientation:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexFavorite()I

    move-result v16

    .line 2408
    .local v16, idxFavorite:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v15

    .line 2410
    .local v15, idxDateTaken:I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 2411
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2413
    :cond_1
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 2414
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2416
    :cond_2
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_3

    .line 2417
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 2419
    :cond_3
    const/4 v2, -0x1

    if-eq v15, v2, :cond_4

    .line 2420
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2423
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    move/from16 v11, p1

    invoke-virtual/range {v2 .. v12}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v19

    .line 2424
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 2425
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setAsBurstPhoto(IZ)V

    .line 2426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2428
    .end local v5           #miniThumbId:J
    .end local v9           #dateTaken:J
    .end local v12           #rotation:I
    .end local v15           #idxDateTaken:I
    .end local v16           #idxFavorite:I
    .end local v17           #idxMiniThumbId:I
    .end local v18           #idxOrientation:I
    .end local v21           #nFavorite:I
    :cond_5
    :try_start_2
    monitor-exit v13

    goto/16 :goto_0

    .line 2437
    .end local v3           #id:J
    .end local v19           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v20           #moved:Z
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2390
    :catch_0
    move-exception v14

    .line 2391
    .local v14, ex:Ljava/lang/Exception;
    const/16 v19, 0x0

    :try_start_3
    monitor-exit v13

    goto/16 :goto_0

    .line 2429
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v20       #moved:Z
    :catch_1
    move-exception v14

    .line 2430
    .restart local v14       #ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got this exception trying to create image object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    const/16 v19, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 2434
    .end local v14           #ex:Ljava/lang/Exception;
    :cond_6
    const-string v2, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to moveTo to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    const/16 v19, 0x0

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 2513
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2514
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 2515
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 2516
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 2517
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2518
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2524
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v2           #path:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 2513
    .restart local v1       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2524
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 2
    .parameter "uri"

    .prologue
    .line 2503
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2509
    :goto_0
    return-object v1

    .line 2504
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2505
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2506
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_0

    .line 2504
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2509
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_0
.end method

.method public getImages(Ljava/util/List;)V
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2441
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_1

    .line 2498
    :cond_0
    :goto_0
    return-void

    .line 2445
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v13

    .line 2446
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 2450
    monitor-enter v13

    .line 2451
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 2453
    .local v21, totalCount:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2454
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v11, v0, :cond_7

    .line 2456
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2457
    .local v3, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2459
    .local v19, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v19, :cond_6

    .line 2461
    const-wide/16 v5, 0x0

    .line 2462
    .local v5, miniThumbId:J
    const/4 v12, 0x0

    .line 2463
    .local v12, rotation:I
    const/16 v20, 0x0

    .line 2464
    .local v20, nFavorite:I
    const-wide/16 v9, 0x0

    .line 2466
    .local v9, dateTaken:J
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v17

    .line 2467
    .local v17, idxMiniThumbId:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexOrientation()I

    move-result v18

    .line 2468
    .local v18, idxOrientation:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexFavorite()I

    move-result v16

    .line 2469
    .local v16, idxFavorite:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v15

    .line 2471
    .local v15, idxDateTaken:I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 2472
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2474
    :cond_2
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_3

    .line 2475
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2477
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    .line 2478
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2480
    :cond_4
    const/4 v2, -0x1

    if-eq v15, v2, :cond_5

    .line 2481
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2484
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    invoke-virtual/range {v2 .. v12}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v19

    .line 2485
    invoke-interface/range {v19 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 2486
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setAsBurstPhoto(IZ)V

    .line 2487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2490
    .end local v5           #miniThumbId:J
    .end local v9           #dateTaken:J
    .end local v12           #rotation:I
    .end local v15           #idxDateTaken:I
    .end local v16           #idxFavorite:I
    .end local v17           #idxMiniThumbId:I
    .end local v18           #idxOrientation:I
    .end local v20           #nFavorite:I
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2495
    .end local v3           #id:J
    .end local v19           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_2
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 2454
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 2491
    :catch_0
    move-exception v14

    .line 2492
    .local v14, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got this exception trying to create image object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2497
    .end local v11           #i:I
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v21           #totalCount:I
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v11       #i:I
    .restart local v21       #totalCount:I
    :cond_7
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 2890
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 2891
    .local v0, item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v1, v0, Lcom/htc/sunny2/IMediaData;

    if-eqz v1, :cond_0

    .line 2893
    check-cast v0, Lcom/htc/sunny2/IMediaData;

    .line 2897
    .end local v0           #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v0

    .restart local v0       #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1653
    const-string v0, "BaseImageList"

    return-object v0
.end method

.method protected getRowFor(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 7
    .parameter "imageObj"

    .prologue
    const/4 v4, -0x1

    .line 2563
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2564
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move v1, v4

    .line 2576
    :goto_0
    return v1

    .line 2565
    :cond_0
    monitor-enter v0

    .line 2566
    const/4 v1, 0x0

    .line 2567
    .local v1, index:I
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v2

    .line 2568
    .local v2, targetId:J
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2570
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_2

    .line 2571
    monitor-exit v0

    goto :goto_0

    .line 2577
    .end local v2           #targetId:J
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2573
    .restart local v2       #targetId:J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 2574
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2576
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    goto :goto_0
.end method

.method protected abstract indexBucketName()I
.end method

.method protected abstract indexData()I
.end method

.method protected abstract indexDateAdded()I
.end method

.method protected abstract indexDateModified()I
.end method

.method protected abstract indexDateTaken()I
.end method

.method protected abstract indexDescription()I
.end method

.method protected abstract indexDisplayName()I
.end method

.method protected abstract indexFavorite()I
.end method

.method protected abstract indexId()I
.end method

.method protected abstract indexLatitude()I
.end method

.method protected abstract indexLongitude()I
.end method

.method protected abstract indexMimeType()I
.end method

.method protected abstract indexMiniThumbId()I
.end method

.method protected abstract indexOrientation()I
.end method

.method protected abstract indexPicasaWeb()I
.end method

.method protected abstract indexPrivate()I
.end method

.method protected abstract indexThumbId()I
.end method

.method protected abstract indexTitle()I
.end method

.method public isFavoriteList()Z
    .locals 1

    .prologue
    .line 1669
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2335
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 2684
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 7

    .prologue
    .line 1688
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    .line 1689
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 1690
    .local v3, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1692
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1693
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!! unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v2, f:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    return-object v4

    .line 1700
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1701
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method randomAccessFilePath(I)Ljava/lang/String;
    .locals 4
    .parameter "version"

    .prologue
    .line 1675
    const/4 v0, 0x0

    .line 1677
    .local v0, directoryName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageThumbnailPathS40()Ljava/lang/String;

    move-result-object v0

    .line 1681
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".thumbdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1684
    .local v1, path:Ljava/lang/String;
    return-object v1

    .line 1677
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected removeFavoriteImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 4
    .parameter "image"

    .prologue
    const/4 v3, 0x0

    .line 2603
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2604
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "favorite"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2605
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2606
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->onRemove()V

    .line 2607
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->requery()V

    .line 2609
    const/4 v1, 0x1

    return v1
.end method

.method protected removeFavoriteImageAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 2613
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 2614
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 2623
    :goto_0
    return-void

    .line 2617
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2618
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "favorite"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2620
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2621
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->onRemove()V

    .line 2622
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->requery()V

    goto :goto_0
.end method

.method protected removeFavoriteImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 12
    .parameter "items"

    .prologue
    const/4 v8, 0x1

    .line 2636
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 2681
    :cond_0
    :goto_0
    return-void

    .line 2640
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2641
    .local v6, values:Landroid/content/ContentValues;
    const-string v9, "favorite"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2646
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2650
    .local v5, tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 2651
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2652
    .local v7, where:Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v8, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2653
    .local v1, cnt:I
    :goto_2
    const/4 v4, 0x0

    .line 2654
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    new-array v0, v1, [Ljava/lang/String;

    .line 2656
    .local v0, args:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 2657
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2658
    .restart local v4       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    .line 2659
    if-nez v3, :cond_3

    .line 2660
    const-string v9, "_id=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2656
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cnt:I
    .end local v3           #i:I
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    move v1, v8

    .line 2652
    goto :goto_2

    .line 2662
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #cnt:I
    .restart local v3       #i:I
    .restart local v4       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    const-string v9, "OR _id=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2673
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cnt:I
    .end local v3           #i:I
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .end local v7           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 2674
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "ImageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query ERROR = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2666
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #cnt:I
    .restart local v3       #i:I
    .restart local v4       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v5       #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v7       #where:Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2669
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v6, v11, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2672
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cnt:I
    .end local v3           #i:I
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v7           #where:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->startRequery()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2680
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->startRequery()Z

    goto/16 :goto_0
.end method

.method public removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 8
    .parameter "image"

    .prologue
    const/4 v4, 0x0

    .line 2690
    iget-boolean v5, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    if-eqz v5, :cond_1

    .line 2691
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->removeFavoriteImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v4

    .line 2719
    :cond_0
    :goto_0
    return v4

    .line 2693
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2696
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2697
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 2698
    monitor-enter v0

    .line 2706
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getRow()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2711
    .local v2, moved:Z
    if-eqz v2, :cond_2

    .line 2712
    :try_start_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 2713
    .local v3, u:Landroid/net/Uri;
    const-string v5, "ImageManager"

    const-string v6, "delete base image"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2715
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->onRemove()V

    .line 2716
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->requery()V

    .line 2718
    .end local v3           #u:Landroid/net/Uri;
    :cond_2
    monitor-exit v0

    goto :goto_0

    .end local v2           #moved:Z
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2707
    :catch_0
    move-exception v1

    .line 2708
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeImage got exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 8
    .parameter "i"

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2728
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2758
    :goto_0
    return-void

    .line 2729
    :cond_0
    monitor-enter v0

    .line 2735
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 2736
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_1

    .line 2737
    monitor-exit v0

    goto :goto_0

    .line 2757
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2739
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    if-eqz v5, :cond_2

    .line 2740
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->removeFavoriteImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 2741
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2746
    :cond_2
    :try_start_2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .line 2750
    .local v3, moved:Z
    if-eqz v3, :cond_3

    .line 2751
    :try_start_3
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    .line 2752
    .local v4, u:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2753
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->requery()V

    .line 2754
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->onRemove()V

    .line 2757
    .end local v4           #u:Landroid/net/Uri;
    :cond_3
    monitor-exit v0

    goto :goto_0

    .line 2747
    .end local v3           #moved:Z
    :catch_0
    move-exception v1

    .line 2748
    .local v1, ex:Ljava/lang/Exception;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeImages([I[I[I[I)V
    .locals 0
    .parameter "nouse1"
    .parameter "nouse2"
    .parameter "nouse3"
    .parameter "nouse4"

    .prologue
    .line 2807
    return-void
.end method

.method public removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 14
    .parameter "images"

    .prologue
    const/4 v13, 0x1

    .line 2761
    iget-boolean v9, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    if-eqz v9, :cond_1

    .line 2762
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->removeFavoriteImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2766
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2767
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 2768
    monitor-enter v1

    .line 2772
    const/4 v7, 0x0

    .line 2773
    .local v7, where:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2775
    .local v0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2776
    .local v6, totalInd:I
    array-length v5, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, totalCnt:I
    move-object v8, v7

    .line 2777
    .end local v7           #where:Ljava/lang/StringBuilder;
    .local v8, where:Ljava/lang/StringBuilder;
    :goto_1
    if-ge v6, v5, :cond_6

    .line 2778
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2779
    .end local v8           #where:Ljava/lang/StringBuilder;
    .restart local v7       #where:Ljava/lang/StringBuilder;
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2780
    const/4 v3, 0x0

    .line 2781
    .local v3, i:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v13, :cond_2

    .line 2782
    aget-object v4, p1, v6

    .line 2783
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_3

    .line 2784
    const-string v9, "_id=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2788
    :goto_3
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2789
    add-int/lit8 v6, v6, 0x1

    .line 2790
    if-ne v6, v5, :cond_4

    .line 2793
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    if-eqz v9, :cond_5

    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2802
    .end local v0           #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v5           #totalCnt:I
    .end local v6           #totalInd:I
    :catchall_0
    move-exception v9

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 2786
    .restart local v0       #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #i:I
    .restart local v4       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v5       #totalCnt:I
    .restart local v6       #totalInd:I
    :cond_3
    :try_start_4
    const-string v9, "OR _id=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 2798
    .end local v0           #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #totalCnt:I
    .end local v6           #totalInd:I
    :catch_0
    move-exception v2

    .line 2799
    .local v2, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v9, "ImageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query ERROR = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2781
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #i:I
    .restart local v4       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v5       #totalCnt:I
    .restart local v6       #totalInd:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2794
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    :try_start_6
    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v8, v7

    .line 2795
    .end local v7           #where:Ljava/lang/StringBuilder;
    .restart local v8       #where:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 2797
    .end local v3           #i:I
    :cond_6
    :try_start_7
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->startRequery()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 2802
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #where:Ljava/lang/StringBuilder;
    .restart local v7       #where:Ljava/lang/StringBuilder;
    goto :goto_4

    .line 2798
    .end local v7           #where:Ljava/lang/StringBuilder;
    .restart local v8       #where:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8           #where:Ljava/lang/StringBuilder;
    .restart local v7       #where:Ljava/lang/StringBuilder;
    goto :goto_5
.end method

.method public removeOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;)V
    .locals 1
    .parameter "changeCallback"

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_0

    .line 2811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 2812
    :cond_0
    return-void
.end method

.method protected requery()V
    .locals 5

    .prologue
    .line 2815
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 2816
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2819
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 2820
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v1

    .line 2821
    .local v1, result:Z
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseImageList cursor requery result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2831
    .end local v1           #result:Z
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    .line 2832
    return-void

    .line 2823
    :cond_1
    :try_start_1
    const-string v2, "ImageManager"

    const-string v3, "BaseImageList cursor is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2826
    :catch_0
    move-exception v0

    .line 2828
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V
    .locals 0
    .parameter "source"
    .parameter "id"
    .parameter "magic"

    .prologue
    .line 2836
    return-void
.end method

.method public setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 2880
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 2881
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mHandler:Landroid/os/Handler;

    .line 2882
    return-void
.end method

.method protected storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "thumb"
    .parameter "imageId"

    .prologue
    .line 1714
    return-object p1
.end method

.method protected storeThumbnail([BJII)Z
    .locals 1
    .parameter "jpegThumbnail"
    .parameter "imageId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1755
    const/4 v0, 0x0

    return v0
.end method
