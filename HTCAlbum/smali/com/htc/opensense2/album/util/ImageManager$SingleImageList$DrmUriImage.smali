.class Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;
.super Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmUriImage"
.end annotation


# instance fields
.field private mAddedTime:J

.field private mBucketName:Ljava/lang/String;

.field private mDataPath:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mDrmType:I

.field private mFileSize:J

.field private mIsGif:Z

.field private mIsVideo:Z

.field private mMimeType:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mbGetFrameCount:Z

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;JLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;ILandroid/net/Uri;)V
    .locals 10
    .parameter
    .parameter "id"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"
    .parameter "uri"

    .prologue
    .line 7962
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    .line 7963
    iget-object v2, p1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    move-wide v3, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    .line 7960
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    .line 7964
    move-object/from16 v0, p7

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2102(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;Landroid/net/Uri;)Landroid/net/Uri;

    .line 7965
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 7966
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 7967
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7968
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    .line 7969
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    .line 7970
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    .line 7971
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    .line 7972
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    .line 7973
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    .line 7974
    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    .line 7975
    const/16 v1, 0x8

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    .line 7979
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7980
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7981
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    .line 7983
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7984
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    .line 7986
    :cond_2
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 8
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 8070
    if-nez p1, :cond_1

    .line 8089
    :cond_0
    :goto_0
    return-object v4

    .line 8072
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8075
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 8077
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 8078
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 8081
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 8082
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8086
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :goto_2
    if-eqz v3, :cond_0

    .line 8089
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 8080
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 8083
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_1
    move-exception v2

    .line 8084
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getGifFrame([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 8058
    iget-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 8059
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 8060
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8061
    new-instance v1, Landroid/webkit/GIFImageParser;

    invoke-direct {v1}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 8062
    .local v1, parser:Landroid/webkit/GIFImageParser;
    invoke-virtual {v1, p1}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 8063
    invoke-virtual {v1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mFrameCount:I

    .line 8065
    .end local v1           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    .line 8067
    .end local v0           #mimeType:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 8254
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 8322
    return-void
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 8326
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7952
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "bitmap"
    .parameter "jpegData"
    .parameter "uri"

    .prologue
    .line 8332
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    move-result-object v0

    return-object v0
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 8258
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method computeFitSize([III)V
    .locals 0
    .parameter "result"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 8263
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->computeFitSize([III)V

    .line 8264
    return-void
.end method

.method computeSampleSize2([II)V
    .locals 0
    .parameter "result"
    .parameter "targetWidthHeight"

    .prologue
    .line 8268
    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->computeSampleSize2([II)V

    .line 8269
    return-void
.end method

.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 7991
    const/4 v1, 0x0

    .line 7993
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 7995
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 8000
    :cond_0
    :goto_0
    return-object v1

    .line 7997
    :catch_0
    move-exception v0

    .line 7998
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 8005
    const/4 v1, 0x0

    .line 8007
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 8009
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 8014
    :cond_0
    :goto_0
    return-object v1

    .line 8011
    :catch_0
    move-exception v0

    .line 8012
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public forceMakeThumbBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 8019
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 8021
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 8022
    const/4 v0, 0x0

    .line 8053
    :cond_0
    :goto_0
    return-object v0

    .line 8024
    :cond_1
    const/4 v0, 0x0

    .line 8027
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8028
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 8029
    .local v3, ret:I
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/DrmManager;->consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V

    .line 8031
    const/16 v4, -0xff

    if-eq v3, v4, :cond_2

    .line 8033
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 8034
    const/4 v0, 0x0

    .line 8044
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8050
    .end local v3           #ret:I
    :goto_1
    if-nez v0, :cond_0

    .line 8051
    const-string v4, "ImageManager"

    const-string v5, "can not created DRM miniThumbBitmap"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8045
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 8046
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8037
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 8039
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out of memory. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8044
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 8045
    :catch_2
    move-exception v1

    .line 8046
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8043
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 8044
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 8047
    :goto_2
    throw v4

    .line 8045
    :catch_3
    move-exception v1

    .line 8046
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "clode input stream fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 8366
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "rotateAsNeeded"

    .prologue
    .line 8361
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 4
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x0

    .line 8351
    :try_start_0
    new-instance v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8354
    :goto_0
    return-object v1

    .line 8352
    :catch_0
    move-exception v0

    .line 8353
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 8354
    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 8371
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 8376
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 8381
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8386
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 8391
    const/4 v0, 0x0

    return-object v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 8396
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8203
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 8401
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 8406
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 8411
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 8273
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8416
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8208
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmType()I
    .locals 1

    .prologue
    .line 8094
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    return v0
.end method

.method public getExifTagInt(Ljava/lang/String;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 8278
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameCount()I
    .locals 6

    .prologue
    .line 8217
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v3, :cond_0

    .line 8218
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMediaWithoutDialog()Ljava/io/InputStream;

    move-result-object v2

    .line 8219
    .local v2, is:Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 8220
    .local v0, data:[B
    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getGifFrame([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8232
    .end local v0           #data:[B
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mFrameCount:I

    return v3

    .line 8223
    :catch_0
    move-exception v1

    .line 8225
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out of memory. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8227
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 8229
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 8421
    const/4 v0, -0x1

    .line 8422
    .local v0, height:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 8423
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v1

    .line 8424
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 8425
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8426
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8427
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8428
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8429
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 8432
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 8437
    const/4 v0, 0x1

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 8442
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 8447
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8099
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8452
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 8457
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 8462
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    .prologue
    .line 8467
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8238
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 8472
    const/4 v2, -0x1

    .line 8473
    .local v2, width:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 8474
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    .line 8475
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 8476
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8477
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8478
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8479
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8480
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 8483
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return v2
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 8488
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 8493
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 8243
    const/4 v0, 0x1

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 8498
    const/4 v0, 0x0

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 8289
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 8248
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 8283
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 8504
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 8104
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 8106
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 8107
    const/4 v4, 0x0

    .line 8146
    :cond_0
    :goto_0
    return-object v4

    .line 8109
    :cond_1
    const/4 v4, 0x0

    .line 8112
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8113
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 8115
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 8117
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8118
    const/4 v0, 0x0

    .line 8121
    :cond_2
    if-eqz v0, :cond_3

    .line 8123
    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sget v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 8127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 8137
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8143
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_1
    if-nez v4, :cond_0

    .line 8144
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM miniThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8138
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 8139
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8130
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 8132
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8137
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 8138
    :catch_2
    move-exception v1

    .line 8139
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8136
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 8137
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 8140
    :goto_2
    throw v5

    .line 8138
    :catch_3
    move-exception v1

    .line 8139
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    const-string v7, "input stream close fail"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 8510
    return-void
.end method

.method public removeExifTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 8295
    return-void
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 8300
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 8304
    const/4 v0, 0x0

    return v0
.end method

.method public saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "image"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "newFile"
    .parameter "cursor"

    .prologue
    .line 8311
    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 8515
    return-void
.end method

.method protected setDegreesRotated(I)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 8317
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 8520
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 8525
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 8530
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 8535
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 8151
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 8153
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 8154
    const/4 v4, 0x0

    .line 8198
    :cond_0
    :goto_0
    return-object v4

    .line 8156
    :cond_1
    const/4 v4, 0x0

    .line 8159
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8160
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 8162
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 8164
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8165
    const/4 v0, 0x0

    .line 8169
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v8, :cond_4

    .line 8171
    move-object v4, v0

    .line 8189
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 8195
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_2
    if-nez v4, :cond_0

    .line 8196
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM ThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8173
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :cond_4
    if-eqz v0, :cond_3

    .line 8175
    :try_start_2
    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sget v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 8179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 8182
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :catch_0
    move-exception v1

    .line 8184
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8189
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 8190
    :catch_1
    move-exception v1

    .line 8191
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8190
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_2
    move-exception v1

    .line 8191
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8188
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catchall_0
    move-exception v5

    .line 8189
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 8192
    :goto_3
    throw v5

    .line 8190
    :catch_3
    move-exception v1

    .line 8191
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 8539
    const/4 v0, 0x0

    return-object v0
.end method
