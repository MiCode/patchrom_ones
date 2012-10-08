.class public Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
.super Lcom/htc/opensense2/album/util/ImageManager$ImageList;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BurstPhotoImageList"
.end annotation


# static fields
.field public static final KEY_BURST_IMAGE_URI:Ljava/lang/String; = "burst_image_uri"

.field public static final KEY_BURST_THUMB_URI:Ljava/lang/String; = "burst_thumb_uri"


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "filterAlbumArt"
    .parameter "where"
    .parameter "isFavorite"
    .parameter "typeFilter"

    .prologue
    .line 5788
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 5790
    invoke-direct/range {p0 .. p11}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 5791
    return-void
.end method

.method private addBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;
    .locals 16
    .parameter "filePath"

    .prologue
    .line 6029
    const/4 v7, 0x0

    .line 6030
    .local v7, newFilePath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 6031
    .local v5, newDisplayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 6034
    .local v8, newTitle:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 6036
    :try_start_0
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] filePath is null"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6037
    const/4 v10, 0x0

    .line 6106
    :goto_0
    return-object v10

    .line 6040
    :cond_0
    const-string v13, "_COVER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    .line 6042
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] filePath already has string \'_COVER\'"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6043
    const/4 v10, 0x0

    goto :goto_0

    .line 6046
    :cond_1
    const/4 v4, 0x0

    .line 6047
    .local v4, extName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 6048
    .local v12, tmpFilePath:Ljava/lang/String;
    const-string v13, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 6049
    .local v3, extIndex:I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_2

    .line 6050
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 6051
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 6059
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_COVER"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6061
    const-string v13, "/"

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 6062
    .local v11, slashIndex:I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_3

    .line 6063
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 6071
    const-string v13, "."

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 6072
    const/4 v13, -0x1

    if-eq v3, v13, :cond_4

    .line 6073
    const/4 v13, 0x0

    invoke-virtual {v5, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 6081
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6082
    .local v9, oldFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6083
    .local v6, newFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_5

    .line 6084
    invoke-virtual {v9, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 6085
    .local v1, bRename:Z
    if-nez v1, :cond_5

    .line 6087
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] renameTo() is fail"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6088
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 6055
    .end local v1           #bRename:Z
    .end local v6           #newFile:Ljava/io/File;
    .end local v9           #oldFile:Ljava/io/File;
    .end local v11           #slashIndex:I
    :cond_2
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] filePath can\'t find \'.\'"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6056
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 6067
    .restart local v11       #slashIndex:I
    :cond_3
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] newFilePath can\'t find \'/\'"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6068
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 6077
    :cond_4
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] newDisplayName can\'t find \'.\'"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6078
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 6092
    .end local v3           #extIndex:I
    .end local v4           #extName:Ljava/lang/String;
    .end local v11           #slashIndex:I
    .end local v12           #tmpFilePath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 6093
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addBestFileIndicator]Can\'t re-name file="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6096
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v10, 0x0

    .line 6097
    .local v10, ret:[Ljava/lang/String;
    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    if-eqz v8, :cond_6

    .line 6099
    const/4 v13, 0x3

    new-array v10, v13, [Ljava/lang/String;

    .end local v10           #ret:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v7, v10, v13

    const/4 v13, 0x1

    aput-object v5, v10, v13

    const/4 v13, 0x2

    aput-object v8, v10, v13

    .restart local v10       #ret:[Ljava/lang/String;
    goto/16 :goto_0

    .line 6103
    :cond_6
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] renamed file is error!"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getFieldFavorite(Landroid/net/Uri;)I
    .locals 9
    .parameter "imageUri"

    .prologue
    .line 5818
    const/4 v8, 0x0

    .line 5819
    .local v8, favorite:I
    const/4 v6, 0x0

    .line 5821
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "favorite"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5824
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5825
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 5837
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5840
    :cond_1
    :goto_0
    return v8

    .line 5832
    :catch_0
    move-exception v7

    .line 5833
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isFavorite] Got exception during query favorite, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5837
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private removeBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .parameter "filePath"

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v8, 0x0

    .line 6111
    const/4 v5, 0x0

    .line 6112
    .local v5, newFilePath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 6113
    .local v3, newDisplayName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 6116
    .local v6, newTitle:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 6118
    :try_start_0
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] filePath is null"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6178
    :goto_0
    return-object v8

    .line 6122
    :cond_0
    const-string v10, "_COVER."

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 6124
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] can\'t find string \'_COVER.\'"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6161
    :catch_0
    move-exception v1

    .line 6162
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "ImageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[removeBestFileIndicator]Can\'t re-name file="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6163
    const/4 v5, 0x0

    .line 6164
    const/4 v3, 0x0

    .line 6165
    const/4 v6, 0x0

    .line 6168
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v8, 0x0

    .line 6169
    .local v8, ret:[Ljava/lang/String;
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    .line 6171
    const/4 v10, 0x3

    new-array v8, v10, [Ljava/lang/String;

    .end local v8           #ret:[Ljava/lang/String;
    aput-object v5, v8, v13

    const/4 v10, 0x1

    aput-object v3, v8, v10

    const/4 v10, 0x2

    aput-object v6, v8, v10

    .restart local v8       #ret:[Ljava/lang/String;
    goto :goto_0

    .line 6128
    .end local v8           #ret:[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v10, "_COVER."

    const-string v11, "."

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 6130
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 6131
    .local v9, slashIndex:I
    if-eq v9, v12, :cond_3

    .line 6132
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 6140
    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 6141
    .local v2, extIndex:I
    if-eq v2, v12, :cond_4

    .line 6142
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 6150
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6151
    .local v7, oldFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6152
    .local v4, newFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 6153
    invoke-virtual {v7, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 6154
    .local v0, bRename:Z
    if-nez v0, :cond_1

    .line 6156
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] renameTo() is fail"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6136
    .end local v0           #bRename:Z
    .end local v2           #extIndex:I
    .end local v4           #newFile:Ljava/io/File;
    .end local v7           #oldFile:Ljava/io/File;
    :cond_3
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] filePath can\'t find \'/\'"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6146
    .restart local v2       #extIndex:I
    :cond_4
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] newDisplayName can\'t find \'.\'"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 6175
    .end local v2           #extIndex:I
    .end local v9           #slashIndex:I
    .restart local v8       #ret:[Ljava/lang/String;
    :cond_5
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] renamed file is error!"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic activate()V
    .locals 0

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->activate()V

    return-void
.end method

.method public bridge synthetic checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5775
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V

    return-void
.end method

.method public bridge synthetic closeCursor()V
    .locals 0

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->closeCursor()V

    return-void
.end method

.method public bridge synthetic commitChanges()V
    .locals 0

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->commitChanges()V

    return-void
.end method

.method public bridge synthetic deactivate()V
    .locals 0

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->deactivate()V

    return-void
.end method

.method public expand()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 5879
    const-string v11, "ImageManager"

    const-string v12, "[ImageManager][expand] +"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5881
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v1

    .line 5883
    .local v1, count:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->isContinuousShotFavorite()Z

    move-result v0

    .line 5884
    .local v0, bIsFavorite:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 5885
    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    .line 5886
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 5888
    .local v5, imageUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 5890
    .local v2, favorite:I
    if-ne v13, v0, :cond_0

    .line 5891
    or-int/lit8 v2, v2, 0x1

    .line 5894
    :cond_0
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v11

    if-ne v13, v11, :cond_1

    .line 5895
    or-int/lit8 v2, v2, 0x2

    .line 5898
    :cond_1
    const/4 v8, 0x0

    .line 5899
    .local v8, newFilePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 5900
    .local v7, newDisplayName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 5902
    .local v9, newTitle:Ljava/lang/String;
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->removeBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5903
    .local v6, info:[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 5904
    const/4 v11, 0x0

    aget-object v8, v6, v11

    .line 5905
    aget-object v7, v6, v13

    .line 5906
    const/4 v11, 0x2

    aget-object v9, v6, v11

    .line 5909
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 5910
    .local v10, values:Landroid/content/ContentValues;
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    .line 5914
    const-string v11, "_data"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5915
    const-string v11, "_display_name"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5916
    const-string v11, "title"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5918
    :cond_3
    const-string v11, "favorite"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5919
    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v11, v5, v10, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5884
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5921
    .end local v2           #favorite:I
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #imageUri:Landroid/net/Uri;
    .end local v6           #info:[Ljava/lang/String;
    .end local v7           #newDisplayName:Ljava/lang/String;
    .end local v8           #newFilePath:Ljava/lang/String;
    .end local v9           #newTitle:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_4
    return-void
.end method

.method public bridge synthetic getBucketIds()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImages(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getImages(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isContinuousShotFavorite()Z
    .locals 8

    .prologue
    .line 5848
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v1

    .line 5849
    .local v1, count:I
    const/4 v0, 0x0

    .line 5850
    .local v0, bIsFavorite:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 5852
    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    .line 5853
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v4, :cond_1

    .line 5850
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5857
    :cond_1
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5862
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 5863
    .local v5, imageUri:Landroid/net/Uri;
    invoke-direct {p0, v5}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getFieldFavorite(Landroid/net/Uri;)I

    move-result v2

    .line 5865
    .local v2, favorite:I
    and-int/lit8 v6, v2, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 5867
    const/4 v0, 0x1

    .line 5871
    .end local v2           #favorite:I
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #imageUri:Landroid/net/Uri;
    :cond_2
    return v0
.end method

.method public bridge synthetic isFavoriteList()Z
    .locals 1

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->isFavoriteList()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->isReleased()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeImageAt(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->removeImageAt(I)V

    return-void
.end method

.method public bridge synthetic removeImages([I[I[I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 5775
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->removeImages([I[I[I[I)V

    return-void
.end method

.method public bridge synthetic removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    return-void
.end method

.method public bridge synthetic removeOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5775
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->removeOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;)V

    return-void
.end method

.method public setBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V
    .locals 16
    .parameter "newBest"
    .parameter "isDeleteOther"

    .prologue
    .line 5924
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v2

    .line 5925
    .local v2, count:I
    if-nez p1, :cond_1

    .line 6025
    :cond_0
    return-void

    .line 5928
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->isContinuousShotFavorite()Z

    move-result v1

    .line 5930
    .local v1, bIsFavorite:Z
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v8

    .line 5931
    .local v8, isBestPhotoNotChanged:Z
    const/4 v13, 0x1

    if-ne v13, v8, :cond_2

    if-eqz p2, :cond_0

    .line 5933
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 5934
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v5

    .line 5935
    .local v5, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 5937
    .local v6, imageUri:Landroid/net/Uri;
    const/4 v13, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v13, v14, :cond_9

    .line 5938
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getFieldFavorite(Landroid/net/Uri;)I

    move-result v3

    .line 5940
    .local v3, favorite:I
    if-nez p2, :cond_7

    .line 5941
    or-int/lit8 v3, v3, 0x20

    .line 5947
    :goto_1
    const/4 v13, 0x1

    if-ne v1, v13, :cond_3

    .line 5949
    or-int/lit8 v3, v3, 0x1

    .line 5952
    :cond_3
    const/4 v10, 0x0

    .line 5953
    .local v10, newFilePath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 5954
    .local v9, newDisplayName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 5956
    .local v11, newTitle:Ljava/lang/String;
    const/4 v13, 0x1

    if-ne v8, v13, :cond_8

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_8

    .line 5959
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->removeBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 5960
    .local v7, info:[Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 5961
    const/4 v13, 0x0

    aget-object v10, v7, v13

    .line 5962
    const/4 v13, 0x1

    aget-object v9, v7, v13

    .line 5963
    const/4 v13, 0x2

    aget-object v11, v7, v13

    .line 5977
    .end local v7           #info:[Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 5978
    .local v12, values:Landroid/content/ContentValues;
    if-eqz v10, :cond_5

    if-eqz v9, :cond_5

    if-eqz v11, :cond_5

    .line 5982
    const-string v13, "_data"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5983
    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5984
    const-string v13, "title"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5986
    :cond_5
    const-string v13, "favorite"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5987
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v12, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5989
    const/4 v13, 0x0

    invoke-interface {v5, v3, v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setAsBurstPhoto(IZ)V

    .line 5933
    .end local v3           #favorite:I
    .end local v9           #newDisplayName:Ljava/lang/String;
    .end local v10           #newFilePath:Ljava/lang/String;
    .end local v11           #newTitle:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5944
    .restart local v3       #favorite:I
    :cond_7
    and-int/lit8 v3, v3, -0x21

    .line 5945
    and-int/lit8 v3, v3, -0x11

    goto :goto_1

    .line 5966
    .restart local v9       #newDisplayName:Ljava/lang/String;
    .restart local v10       #newFilePath:Ljava/lang/String;
    .restart local v11       #newTitle:Ljava/lang/String;
    :cond_8
    if-nez v8, :cond_4

    if-nez p2, :cond_4

    .line 5969
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->addBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 5970
    .restart local v7       #info:[Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 5971
    const/4 v13, 0x0

    aget-object v10, v7, v13

    .line 5972
    const/4 v13, 0x1

    aget-object v9, v7, v13

    .line 5973
    const/4 v13, 0x2

    aget-object v11, v7, v13

    goto :goto_2

    .line 5991
    .end local v3           #favorite:I
    .end local v7           #info:[Ljava/lang/String;
    .end local v9           #newDisplayName:Ljava/lang/String;
    .end local v10           #newFilePath:Ljava/lang/String;
    .end local v11           #newTitle:Ljava/lang/String;
    :cond_9
    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_a

    .line 5992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 5994
    :cond_a
    const/4 v13, 0x1

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v14

    if-ne v13, v14, :cond_6

    .line 5996
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getFieldFavorite(Landroid/net/Uri;)I

    move-result v3

    .line 5997
    .restart local v3       #favorite:I
    and-int/lit8 v3, v3, -0x21

    .line 5999
    const/4 v10, 0x0

    .line 6000
    .restart local v10       #newFilePath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 6001
    .restart local v9       #newDisplayName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 6003
    .restart local v11       #newTitle:Ljava/lang/String;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->removeBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6004
    .restart local v7       #info:[Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 6005
    const/4 v13, 0x0

    aget-object v10, v7, v13

    .line 6006
    const/4 v13, 0x1

    aget-object v9, v7, v13

    .line 6007
    const/4 v13, 0x2

    aget-object v11, v7, v13

    .line 6010
    :cond_b
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 6011
    .restart local v12       #values:Landroid/content/ContentValues;
    if-eqz v10, :cond_c

    if-eqz v9, :cond_c

    if-eqz v11, :cond_c

    .line 6015
    const-string v13, "_data"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6016
    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6017
    const-string v13, "title"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6019
    :cond_c
    const-string v13, "favorite"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6020
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v12, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6022
    const/4 v13, 0x0

    invoke-interface {v5, v3, v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setAsBurstPhoto(IZ)V

    goto/16 :goto_3
.end method

.method public bridge synthetic setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5775
    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic startRequery()Z
    .locals 1

    .prologue
    .line 5775
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->startRequery()Z

    move-result v0

    return v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5794
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getBurstPhotoWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5796
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5805
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 5811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(bucket_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5812
    .local v0, szBucketID:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5814
    .end local v0           #szBucketID:Ljava/lang/String;
    :cond_1
    return-object v1
.end method
