.class public Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
.super Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UriImage"
.end annotation


# instance fields
.field protected mBestBurstPhoto:I

.field protected mBurstPhoto:I

.field private mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mDataPath:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mSize:J

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 8555
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;-><init>()V

    .line 8545
    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 8546
    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 8548
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mSize:J

    .line 8550
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    .line 8551
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    .line 8556
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 8970
    if-nez p1, :cond_1

    .line 8987
    :cond_0
    :goto_0
    return-object v4

    .line 8972
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8975
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 8977
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 8978
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8981
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 8982
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8984
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_0

    .line 8987
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 8980
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getRotateDegree()I
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 8922
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8923
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 8924
    .local v9, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "orientation"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8928
    .local v6, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 8929
    .local v11, rotateDegree:I
    if-eqz v6, :cond_0

    .line 8930
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8931
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 8932
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8966
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #id:Ljava/lang/String;
    .end local v11           #rotateDegree:I
    :cond_0
    :goto_0
    return v11

    .line 8937
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8939
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDataPath()Ljava/lang/String;

    move-result-object v10

    .line 8940
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 8941
    const/4 v11, 0x0

    .line 8943
    .restart local v11       #rotateDegree:I
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 8944
    .local v8, exifInfo:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8955
    :pswitch_0
    const/4 v11, 0x0

    goto :goto_0

    .line 8946
    :pswitch_1
    const/16 v11, 0x5a

    .line 8947
    goto :goto_0

    .line 8949
    :pswitch_2
    const/16 v11, 0xb4

    .line 8950
    goto :goto_0

    .line 8952
    :pswitch_3
    const/16 v11, 0x10e

    .line 8953
    goto :goto_0

    .line 8959
    .end local v8           #exifInfo:Landroid/media/ExifInterface;
    :catch_0
    move-exception v7

    .line 8960
    .local v7, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 8944
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 25
    .parameter "options"
    .parameter "target"

    .prologue
    .line 8867
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    .line 8868
    .local v20, w:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 8870
    .local v11, h:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 8871
    .local v4, candidateW:I
    int-to-float v0, v11

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 8873
    .local v3, candidateH:I
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "candidateW "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " candidateH "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8875
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8877
    .local v2, candidate:I
    if-nez v2, :cond_0

    .line 8878
    const/16 v21, 0x1

    .line 8918
    :goto_0
    return v21

    .line 8880
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_1

    .line 8881
    move/from16 v0, v20

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    div-int v21, v20, v2

    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 8882
    add-int/lit8 v2, v2, -0x1

    .line 8885
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_2

    .line 8886
    move/from16 v0, p2

    if-le v11, v0, :cond_2

    div-int v21, v11, v2

    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 8887
    add-int/lit8 v2, v2, -0x1

    .line 8897
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    .line 8898
    .local v17, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    .line 8899
    .local v9, currentHeap:J
    const-wide/32 v14, 0x1000000

    .line 8900
    .local v14, maxSize:J
    sub-long v12, v14, v9

    .line 8901
    .local v12, leftMemory:J
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "current Heap "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " left memory "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8902
    const-wide/16 v18, 0x0

    .line 8904
    .local v18, totalPixels:J
    const/16 v16, 0x3

    .line 8906
    .local v16, resampleTryCount:I
    add-int/lit8 v2, v2, -0x1

    .line 8908
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 8909
    div-int v21, v20, v2

    move/from16 v0, v21

    int-to-long v7, v0

    .line 8910
    .local v7, curW:J
    div-int v21, v11, v2

    move/from16 v0, v21

    int-to-long v5, v0

    .line 8911
    .local v5, curH:J
    mul-long v21, v7, v5

    const-wide/16 v23, 0x2

    mul-long v18, v21, v23

    .line 8912
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "candidate "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " curW "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", curH "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8913
    cmp-long v21, v18, v12

    if-lez v21, :cond_4

    add-int/lit8 v16, v16, -0x1

    if-gtz v16, :cond_3

    :cond_4
    move/from16 v21, v2

    .line 8918
    goto/16 :goto_0
.end method

.method private initBurst()V
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 9535
    const/4 v10, 0x0

    .line 9537
    .local v10, isInit:Z
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    .line 9538
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    .line 9540
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 9541
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 9542
    monitor-enter v6

    .line 9543
    const/4 v11, 0x0

    .line 9546
    .local v11, moved:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 9552
    :goto_0
    if-ne v3, v11, :cond_0

    .line 9553
    :try_start_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->indexFavorite()I

    move-result v9

    .line 9554
    .local v9, indexFavorite:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 9555
    .local v12, nValue:I
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setAsBurstPhoto(IZ)V

    .line 9556
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageManager][initBurst]: mBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBestBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9557
    const/4 v10, 0x1

    .line 9559
    .end local v9           #indexFavorite:I
    .end local v12           #nValue:I
    :cond_0
    monitor-exit v6

    .line 9562
    .end local v11           #moved:Z
    :cond_1
    if-ne v10, v3, :cond_3

    .line 9581
    :cond_2
    :goto_1
    return-void

    .line 9548
    .restart local v11       #moved:Z
    :catch_0
    move-exception v7

    .line 9549
    .local v7, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 9559
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 9565
    .end local v11           #moved:Z
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9570
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9572
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 9573
    .restart local v12       #nValue:I
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setAsBurstPhoto(IZ)V

    .line 9574
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageManager][initBurst]: query mBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBestBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 9579
    .end local v12           #nValue:I
    :cond_4
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 9576
    :catch_1
    move-exception v8

    .line 9577
    .local v8, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9579
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private setupProperties()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 9348
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9350
    const-string v0, " "

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 9351
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 9393
    :cond_0
    :goto_0
    return-void

    .line 9355
    :cond_1
    const-string v0, "file"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9357
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 9358
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9360
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9361
    const-string v0, "image/jps"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 9383
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 9385
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 9386
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v7, :cond_7

    iget-object v0, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 9389
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDisplayImageSourceType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 9391
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    goto :goto_0

    .line 9362
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mpo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9363
    const-string v0, "image/mpo"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    goto :goto_1

    .line 9366
    :cond_5
    const-string v0, "media"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9368
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "mime_type"

    aput-object v4, v2, v8

    const-string v4, "_data"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9372
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 9374
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9376
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 9377
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 9379
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 9386
    .end local v6           #cur:Landroid/database/Cursor;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    const-string v0, ""

    goto :goto_2
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 9283
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 9284
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 9298
    :cond_0
    :goto_0
    return-object v2

    .line 9287
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 9288
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9289
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9293
    if-eqz v1, :cond_0

    .line 9294
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 9296
    :catch_0
    move-exception v0

    .line 9297
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 9292
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    .line 9293
    if-eqz v1, :cond_2

    .line 9294
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 9298
    :cond_2
    :goto_1
    throw v3

    .line 9296
    :catch_1
    move-exception v0

    .line 9297
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
    .locals 3
    .parameter "srcImageList"

    .prologue
    .line 9635
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isBurstPhoto()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9654
    :cond_0
    :goto_0
    return-void

    .line 9638
    :cond_1
    const/4 v0, 0x0

    .line 9639
    .local v0, burstImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_4

    .line 9640
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 9646
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 9647
    invoke-virtual {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->removeExpandBurstImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 9650
    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9651
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 9652
    const/4 v0, 0x0

    goto :goto_0

    .line 9642
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isExpanded()Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 9643
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_1
.end method

.method public expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 11
    .parameter "index"
    .parameter "destImageList"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 9660
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isBurstPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v9

    .line 9702
    :goto_0
    return-object v0

    .line 9664
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9665
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_0

    .line 9667
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isExpanded()Z

    move-result v0

    if-ne v10, v0, :cond_2

    .line 9668
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 9671
    :cond_2
    const/4 v8, 0x0

    .line 9672
    .local v8, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 9674
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bucket_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9680
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9681
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 9689
    :goto_1
    if-eqz v6, :cond_3

    .line 9690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9694
    :cond_3
    :goto_2
    if-nez v8, :cond_6

    move-object v0, v9

    goto :goto_0

    .line 9683
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 9685
    :catch_0
    move-exception v7

    .line 9686
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[expanded] Got exception, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9687
    const/4 v8, 0x0

    .line 9689
    if-eqz v6, :cond_3

    .line 9690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 9689
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 9690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 9696
    :cond_6
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget-object v1, v1, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v10, v8, v9}, Lcom/htc/opensense2/album/util/ImageManager;->burstImages(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 9698
    if-eqz p2, :cond_7

    .line 9699
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p2, p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->addExpandBurstImages(ILcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 9702
    :cond_7
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto/16 :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "targetWidthHeight"

    .prologue
    .line 8638
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const-string v13, "drm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 8639
    const/4 v6, 0x0

    .line 8640
    .local v6, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v10

    .line 8641
    .local v10, state:I
    if-nez v10, :cond_0

    .line 8642
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 8644
    :cond_0
    if-nez v6, :cond_1

    .line 8645
    const/4 v3, 0x0

    .line 8741
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #state:I
    :goto_0
    return-object v3

    .line 8646
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v10       #state:I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 8647
    .local v2, bitmapData:[B
    if-nez v2, :cond_2

    .line 8648
    const/4 v3, 0x0

    goto :goto_0

    .line 8651
    :cond_2
    const/4 v3, 0x0

    .line 8653
    .local v3, bmp:Landroid/graphics/Bitmap;
    const/16 v12, 0x1f4

    move/from16 v0, p1

    if-le v0, v12, :cond_3

    .line 8654
    const/4 v12, 0x0

    :try_start_0
    array-length v13, v2

    const/4 v14, 0x0

    invoke-static {v2, v12, v13, v14}, Lcom/htc/opensense2/album/util/BitmapUtil2;->DecodeStreamBySkia([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 8662
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8663
    :catch_0
    move-exception v4

    .line 8664
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 8656
    .end local v4           #e:Ljava/io/IOException;
    :cond_3
    const/4 v12, 0x0

    :try_start_2
    array-length v13, v2

    invoke-static {v2, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_1

    .line 8658
    :catch_1
    move-exception v5

    .line 8659
    .local v5, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v12, "ImageManager"

    const-string v13, "decrpty input stream error"

    invoke-static {v12, v13, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8662
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 8663
    :catch_2
    move-exception v4

    .line 8664
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 8661
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 8662
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 8665
    :goto_2
    throw v12

    .line 8663
    :catch_3
    move-exception v4

    .line 8664
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 8671
    .end local v2           #bitmapData:[B
    .end local v3           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #state:I
    :cond_4
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 8672
    .local v8, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-eqz v8, :cond_8

    .line 8674
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " data available "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8680
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8681
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8682
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8684
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image, file resolution "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8685
    const/4 v12, -0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_5

    .line 8686
    move/from16 v0, p1

    invoke-static {v7, v0}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v12

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8688
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x1

    if-ge v12, v13, :cond_5

    .line 8689
    const/4 v12, 0x1

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8692
    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8693
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 8698
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v12, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 8699
    const/4 v1, 0x0

    .line 8711
    .local v1, b:Landroid/graphics/Bitmap;
    const/16 v12, 0x1f4

    move/from16 v0, p1

    if-le v0, v12, :cond_9

    .line 8712
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/htc/opensense2/album/util/BitmapUtil2;->DecodeFDBySkia(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 8717
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v9

    .line 8722
    .local v9, rotateDegree:I
    if-gez v9, :cond_6

    .line 8723
    add-int/lit16 v9, v9, 0x168

    .line 8725
    :cond_6
    if-eqz v9, :cond_7

    .line 8727
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/2addr v12, v13

    mul-int/lit8 v11, v12, 0x4

    .line 8728
    .local v11, totalMemory:I
    const/high16 v12, 0x70

    if-lt v11, v12, :cond_a

    .line 8729
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "the bitmap heap will increase "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " after load bitmap"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8730
    invoke-static {v1, v9}, Lcom/htc/opensense2/album/util/ImageManager;->rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 8736
    .end local v11           #totalMemory:I
    :cond_7
    :goto_4
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "B: got bitmap "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with sampleSize "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 8738
    goto/16 :goto_0

    .line 8677
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #rotateDegree:I
    :cond_8
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " data available "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8678
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 8714
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_9
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_3

    .line 8732
    .restart local v9       #rotateDegree:I
    .restart local v11       #totalMemory:I
    :cond_a
    invoke-static {v1, v9}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v1

    goto :goto_4

    .line 8739
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v9           #rotateDegree:I
    .end local v11           #totalMemory:I
    :catch_4
    move-exception v5

    .line 8740
    .restart local v5       #ex:Ljava/lang/Exception;
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "got exception decoding bitmap "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8741
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 7
    .parameter "targetWidthOrHeight"

    .prologue
    const/4 v2, 0x0

    .line 9031
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 9032
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 9039
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 9035
    .restart local v1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputStream is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " available data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9036
    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 9037
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 9038
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 9140
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 9110
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2300(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2400(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9112
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 9113
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 9134
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-object v3

    .line 9115
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    monitor-enter v0

    .line 9120
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 9127
    .local v2, moved:Z
    if-eqz v2, :cond_1

    .line 9128
    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget-object v3, v3, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget v4, v4, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->INDEX_ID:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    monitor-exit v0

    goto :goto_0

    .line 9129
    .end local v2           #moved:Z
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 9122
    :catch_0
    move-exception v1

    .line 9124
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9125
    monitor-exit v0

    goto :goto_0

    .line 9129
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #moved:Z
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9134
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #moved:Z
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9410
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8568
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8569
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 8573
    :goto_0
    return-object v0

    .line 8571
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setupProperties()V

    .line 8573
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 9418
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 9414
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 9424
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9259
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 9452
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 9446
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageSourceType()I
    .locals 2

    .prologue
    .line 9430
    const-string v0, "media"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9433
    :cond_0
    const/4 v0, 0x0

    .line 9440
    :goto_0
    return v0

    .line 9435
    :cond_1
    const-string v0, "http"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9437
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 9440
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x1

    const/4 v1, -0x1

    .line 9220
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9222
    const-string v8, " "

    .line 9254
    :cond_0
    :goto_0
    return-object v8

    .line 9225
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 9226
    .local v13, uriPath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 9227
    .local v6, authority:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 9228
    .local v11, scheme:Ljava/lang/String;
    const-string v8, " "

    .line 9230
    .local v8, displayName:Ljava/lang/String;
    const-string v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9232
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 9233
    .local v10, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "_display_name"

    aput-object v3, v2, v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 9237
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 9239
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9240
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 9241
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 9244
    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #id:Ljava/lang/String;
    :cond_3
    const-string v0, "file"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9246
    const/16 v0, 0x2f

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 9247
    .local v12, start:I
    const/16 v0, 0x2e

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 9248
    .local v9, end:I
    if-eq v1, v12, :cond_0

    if-eq v1, v9, :cond_0

    if-le v9, v12, :cond_0

    .line 9250
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v13, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 9397
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 9398
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 8583
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8584
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 8587
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 8593
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 8589
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 8591
    :catch_0
    move-exception v0

    .line 8592
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 8593
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9338
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9339
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 9343
    :goto_0
    return-object v0

    .line 9341
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setupProperties()V

    .line 9343
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method getPFD()Landroid/os/ParcelFileDescriptor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 8615
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 8616
    .local v2, scheme:Ljava/lang/String;
    const-string v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8617
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 8618
    .local v1, path:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 8627
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #scheme:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 8617
    .restart local v2       #scheme:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8620
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 8622
    .end local v2           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 8623
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 8625
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 8626
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getSize()J
    .locals 10

    .prologue
    .line 9077
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 9078
    iget-wide v8, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mSize:J

    .line 9104
    :goto_0
    return-wide v8

    .line 9082
    :cond_0
    const/4 v6, 0x0

    .line 9083
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 9085
    .local v8, size:J
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9090
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9091
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 9100
    :goto_1
    if-eqz v6, :cond_1

    .line 9101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9103
    :cond_1
    :goto_2
    iput-wide v8, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mSize:J

    goto :goto_0

    .line 9093
    :cond_2
    const-wide/16 v8, -0x1

    goto :goto_1

    .line 9095
    :catch_0
    move-exception v7

    .line 9096
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9097
    const-wide/16 v8, -0x1

    .line 9100
    if-eqz v6, :cond_1

    .line 9101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 9100
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 9101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 9196
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9197
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 9198
    .local v7, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "title"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9202
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9203
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 9204
    .local v8, title:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9213
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 9207
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #id:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 9208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9209
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 9213
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 9403
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 9404
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public heapBasedfullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "targetWidthHeight"

    .prologue
    .line 8753
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    const-string v14, "drm"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 8754
    const/4 v7, 0x0

    .line 8755
    .local v7, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v11

    .line 8756
    .local v11, state:I
    if-nez v11, :cond_0

    .line 8757
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 8759
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 8761
    .local v3, bitmapData:[B
    if-nez v3, :cond_1

    .line 8762
    const/4 v4, 0x0

    .line 8859
    .end local v3           #bitmapData:[B
    .end local v7           #is:Ljava/io/InputStream;
    .end local v11           #state:I
    :goto_0
    return-object v4

    .line 8765
    .restart local v3       #bitmapData:[B
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v11       #state:I
    :cond_1
    const/4 v4, 0x0

    .line 8770
    .local v4, bmp:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    :try_start_0
    array-length v14, v3

    invoke-static {v3, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 8776
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8777
    :catch_0
    move-exception v5

    .line 8778
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 8772
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 8773
    .local v6, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v13, "ImageManager"

    const-string v14, "decrpty input stream error"

    invoke-static {v13, v14, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8776
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 8777
    :catch_2
    move-exception v5

    .line 8778
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 8775
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 8776
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 8779
    :goto_1
    throw v13

    .line 8777
    :catch_3
    move-exception v5

    .line 8778
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 8785
    .end local v3           #bitmapData:[B
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v11           #state:I
    :cond_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 8786
    .local v9, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_6

    .line 8788
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " data available "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8793
    :goto_2
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8794
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8795
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8797
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image, file resolution "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8798
    const/4 v13, -0x1

    move/from16 v0, p1

    if-eq v0, v13, :cond_3

    .line 8799
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v13

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8801
    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    .line 8802
    const/4 v13, 0x1

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8805
    :cond_3
    const/4 v13, 0x0

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8806
    const/4 v13, 0x0

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 8811
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v13, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 8812
    const/4 v2, 0x0

    .line 8827
    .local v2, b:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8828
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8831
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v10

    .line 8837
    .local v10, rotateDegree:I
    if-gez v10, :cond_4

    .line 8838
    add-int/lit16 v10, v10, 0x168

    .line 8840
    :cond_4
    if-eqz v10, :cond_5

    .line 8842
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    mul-int/2addr v13, v14

    mul-int/lit8 v12, v13, 0x4

    .line 8843
    .local v12, totalMemory:I
    const/high16 v13, 0x70

    if-lt v12, v13, :cond_7

    .line 8844
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "the bitmap heap will increase "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after load bitmap"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8845
    invoke-static {v2, v10}, Lcom/htc/opensense2/album/util/ImageManager;->rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8852
    .end local v12           #totalMemory:I
    :cond_5
    :goto_3
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "B: got bitmap "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with sampleSize "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 8856
    goto/16 :goto_0

    .line 8791
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #rotateDegree:I
    :cond_6
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " data available "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 8857
    .end local v9           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v6

    .line 8858
    .restart local v6       #ex:Ljava/lang/Exception;
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "got exception decoding bitmap "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8859
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 8847
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v9       #pfdInput:Landroid/os/ParcelFileDescriptor;
    .restart local v10       #rotateDegree:I
    .restart local v12       #totalMemory:I
    :cond_7
    :try_start_6
    invoke-static {v2, v10}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v2

    goto :goto_3
.end method

.method public imageId()J
    .locals 10

    .prologue
    .line 9145
    const/4 v6, 0x0

    .line 9146
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 9149
    .local v8, imageId:J
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9153
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9155
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 9166
    :cond_0
    if-eqz v6, :cond_1

    .line 9167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9170
    :cond_1
    :goto_0
    return-wide v8

    .line 9160
    :catch_0
    move-exception v7

    .line 9162
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumObjectManager][imageId]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9166
    if-eqz v6, :cond_1

    .line 9167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 9166
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 9167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public is3D()Z
    .locals 5

    .prologue
    .line 9493
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    .line 9495
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 9497
    .local v3, mime:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9498
    const/4 v4, 0x1

    .line 9501
    .end local v3           #mime:Ljava/lang/String;
    :goto_1
    return v4

    .line 9495
    .restart local v3       #mime:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9501
    .end local v3           #mime:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public is3DJPS()Z
    .locals 2

    .prologue
    .line 9506
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    .line 9508
    const-string v0, "image/jps"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9511
    :cond_0
    const/4 v0, 0x1

    .line 9514
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBestBurstPhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9598
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v2, :cond_1

    .line 9610
    :cond_0
    :goto_0
    return v1

    .line 9602
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isBurstPhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9606
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 9607
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->initBurst()V

    .line 9610
    :cond_2
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    if-ne v2, v0, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isBurstPhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9585
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v2, :cond_0

    .line 9593
    :goto_0
    return v1

    .line 9589
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 9590
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->initBurst()V

    .line 9593
    :cond_1
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isDrm()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 9322
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9326
    :cond_0
    :goto_0
    return v0

    .line 9324
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9325
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9615
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isBurstPhoto()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9630
    :cond_0
    :goto_0
    return v0

    .line 9623
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 9624
    goto :goto_0

    .line 9626
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    if-eqz v2, :cond_0

    move v0, v1

    .line 9627
    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 9046
    const/4 v6, 0x0

    .line 9047
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 9049
    .local v8, isFavorite:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9054
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9056
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 9057
    .local v9, nValue:I
    and-int/lit8 v0, v9, 0x1

    if-ne v0, v10, :cond_1

    move v8, v10

    .line 9058
    :goto_0
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumObjectManager][isFavorite]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9068
    .end local v9           #nValue:I
    :goto_1
    if-eqz v6, :cond_0

    .line 9069
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9072
    :cond_0
    :goto_2
    return v8

    .restart local v9       #nValue:I
    :cond_1
    move v8, v11

    .line 9057
    goto :goto_0

    .line 9062
    .end local v9           #nValue:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 9064
    :catch_0
    move-exception v7

    .line 9065
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9066
    const/4 v8, 0x0

    .line 9068
    if-eqz v6, :cond_0

    .line 9069
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 9068
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 9069
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public isFileExists()Z
    .locals 3

    .prologue
    .line 8599
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 8600
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 8601
    .local v0, bExist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 8604
    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8610
    :cond_0
    :goto_1
    return v0

    .line 8600
    .end local v0           #bExist:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 8605
    .restart local v0       #bExist:Z
    :catch_0
    move-exception v1

    .line 8607
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public isGif()Z
    .locals 2

    .prologue
    .line 9312
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 9313
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 9314
    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 9316
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInked()Z
    .locals 1

    .prologue
    .line 9481
    const/4 v0, 0x0

    .line 9483
    .local v0, bResult:Z
    return v0
.end method

.method public isPlayable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 9457
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isGif()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9458
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 9459
    new-instance v2, Landroid/webkit/GIFImageParser;

    invoke-direct {v2}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 9460
    .local v2, parser:Landroid/webkit/GIFImageParser;
    const/4 v0, 0x0

    .line 9462
    .local v0, byteArray:[B
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 9466
    :goto_0
    if-eqz v0, :cond_0

    .line 9467
    invoke-virtual {v2, v0}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 9468
    invoke-virtual {v2}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    .line 9471
    .end local v0           #byteArray:[B
    .end local v2           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    if-le v4, v3, :cond_1

    .line 9475
    :goto_1
    return v3

    .line 9463
    .restart local v0       #byteArray:[B
    .restart local v2       #parser:Landroid/webkit/GIFImageParser;
    :catch_0
    move-exception v1

    .line 9464
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "ImageManager"

    const-string v5, "out of memory"

    invoke-static {v4, v5, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9475
    .end local v0           #byteArray:[B
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #parser:Landroid/webkit/GIFImageParser;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 8563
    const/4 v0, 0x1

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 9303
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 9304
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 9305
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 9307
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 9191
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaladoThumbBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 9174
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 9175
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9176
    .local v0, b:Landroid/graphics/Bitmap;
    const/16 v2, 0x1f

    .line 9177
    .local v2, res:I
    if-eqz v1, :cond_0

    .line 9178
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageStream(Ljava/io/FileDescriptor;ILandroid/graphics/Bitmap;)I

    move-result v2

    .line 9180
    :cond_0
    const/16 v3, -0xff

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_2

    .line 9181
    :cond_1
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode by scalado fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9182
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9183
    const/4 v0, 0x0

    .line 9184
    const/4 v3, 0x0

    .line 9187
    :goto_0
    return-object v3

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method public setAsBestBurstPhoto()V
    .locals 0

    .prologue
    .line 9707
    return-void
.end method

.method public setAsBurstPhoto(IZ)V
    .locals 4
    .parameter "favoriteFieldValue"
    .parameter "forceUpdate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9519
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 9520
    iput v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    .line 9526
    :goto_0
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 9527
    iput v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    .line 9532
    :goto_1
    return-void

    .line 9523
    :cond_0
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    goto :goto_0

    .line 9530
    :cond_1
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    goto :goto_1
.end method

.method public setDataPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 8578
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 8579
    return-void
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 9488
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1
    .parameter "mime"

    .prologue
    .line 9331
    if-eqz p1, :cond_0

    .line 9332
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 9333
    :cond_0
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 9263
    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9264
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 9265
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 9266
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v4, 0x43a0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 9267
    .local v7, scale:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 9269
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 9270
    .local v3, width:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->is3DJPS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9272
    div-int/lit8 v3, v3, 0x2

    .line 9275
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 9278
    .end local v3           #width:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #scale:F
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method
