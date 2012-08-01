.class Lcom/htc/opensense2/album/util/ImageManager$ImageList;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageList"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "ImageList"


# instance fields
.field final INDEX_BUCKET_DISPLAY_NAME:I

.field final INDEX_DATA:I

.field final INDEX_DATE_ADDED:I

.field final INDEX_DATE_MODIFIED:I

.field final INDEX_DATE_TAKEN:I

.field final INDEX_FAVORITE:I

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_MINI_THUMB_MAGIC:I

.field final INDEX_ORIENTATION:I

.field final INDEX_THUMB_HEIGHT:I

.field final INDEX_THUMB_ID:I

.field final INDEX_THUMB_IMAGE_ID:I

.field final INDEX_THUMB_WIDTH:I

.field mContentObserver:Landroid/database/ContentObserver;

.field mDataSetObserver:Landroid/database/DataSetObserver;

.field private mFilterAlbumArt:Z

.field mInputStreamBuffer:[B

.field mIsRegistered:Z

.field protected mLimitCount:I

.field protected mLimitOffset:I

.field mTempStorage:[B

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 14
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
    .line 3975
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V

    .line 3976
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
    .locals 11
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
    .parameter "limitOffset"
    .parameter "limitCount"

    .prologue
    .line 3935
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    .line 3936
    invoke-direct/range {v1 .. v10}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 3869
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_ID:I

    .line 3870
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATA:I

    .line 3871
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    .line 3872
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "datetaken"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    .line 3873
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mini_thumb_magic"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    .line 3874
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "orientation"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_ORIENTATION:I

    .line 3875
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "favorite"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_FAVORITE:I

    .line 3878
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_added"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_ADDED:I

    .line 3879
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucket_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_BUCKET_DISPLAY_NAME:I

    .line 3880
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_modified"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_MODIFIED:I

    .line 3883
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_ID:I

    .line 3884
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_IMAGE_ID:I

    .line 3885
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_WIDTH:I

    .line 3886
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_HEIGHT:I

    .line 3888
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mIsRegistered:Z

    .line 4180
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mInputStreamBuffer:[B

    .line 4181
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mTempStorage:[B

    .line 3938
    if-gez p12, :cond_0

    const/16 p12, -0x1

    .line 3939
    :cond_0
    if-gez p13, :cond_1

    const/16 p13, 0x0

    .line 3940
    :cond_1
    move/from16 v0, p12

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitOffset:I

    .line 3941
    move/from16 v0, p13

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitCount:I

    .line 3943
    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 3944
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    .line 3945
    move/from16 v0, p6

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mSort:I

    .line 3947
    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 3948
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mFilterAlbumArt:Z

    .line 3949
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 3950
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 3951
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create image cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    :goto_0
    return-void

    .line 3961
    :cond_2
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->initUpdateRunnable()V

    .line 3963
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->initContentObserver()V

    .line 3965
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->initDataSetObserver()V

    .line 3967
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->registerObservers()V

    goto :goto_0
.end method

.method static synthetic access$900(Lcom/htc/opensense2/album/util/ImageManager$ImageList;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3866
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initContentObserver()V
    .locals 2

    .prologue
    .line 4018
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 4035
    :goto_0
    return-void

    .line 4021
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$ImageList$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList$3;-><init>(Lcom/htc/opensense2/album/util/ImageManager$ImageList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method private initDataSetObserver()V
    .locals 1

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 4015
    :goto_0
    return-void

    .line 4003
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$ImageList$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList$2;-><init>(Lcom/htc/opensense2/album/util/ImageManager$ImageList;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_0
.end method

.method private initUpdateRunnable()V
    .locals 1

    .prologue
    .line 3979
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mUpdateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3997
    :goto_0
    return-void

    .line 3981
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$ImageList$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList$1;-><init>(Lcom/htc/opensense2/album/util/ImageManager$ImageList;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mUpdateRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 4248
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 4254
    :goto_0
    return-object v1

    .line 4249
    :catch_0
    move-exception v0

    .line 4250
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[makeInputStream] Fail to openFileDescriptor, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4252
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 4253
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[makeInputStream] Null exception to openFileDescriptor, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4262
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 4263
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datetaken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4262
    .end local v0           #ascending:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method

.method private unregisterObservers()V
    .locals 2

    .prologue
    .line 4062
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 4064
    .local v0, c:Landroid/database/Cursor;
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mIsRegistered:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 4070
    :cond_0
    :goto_0
    return-void

    .line 4067
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4068
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4069
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mIsRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 4073
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->activate()V

    .line 4074
    return-void
.end method

.method protected activateCursor()V
    .locals 0

    .prologue
    .line 4088
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->activateCursor()V

    .line 4089
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->registerObservers()V

    .line 4090
    return-void
.end method

.method public closeCursor()V
    .locals 0

    .prologue
    .line 4083
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->closeCursor()V

    .line 4084
    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 4121
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    .line 4122
    .local v3, szWhereClause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    .line 4123
    .local v4, szWhereClauseArgs:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    .line 4125
    .local v5, szSortOrder:Ljava/lang/String;
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitCount:I

    if-lez v0, :cond_0

    .line 4126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4129
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 4130
    .local v7, t1:J
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4150
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 4077
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 4078
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->unregisterObservers()V

    .line 4079
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3903
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "distinct"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v8

    const-string v3, "bucket_id"

    aput-object v3, v2, v9

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3914
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3915
    .local v7, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3917
    :cond_0
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3918
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3919
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3921
    :cond_1
    return-object v7
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3899
    const-string v0, "ImageList"

    return-object v0
.end method

.method protected indexBucketName()I
    .locals 1

    .prologue
    .line 4172
    const/4 v0, -0x1

    return v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 4157
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    .prologue
    .line 4171
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_ADDED:I

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    .prologue
    .line 4173
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_MODIFIED:I

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 4154
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 4155
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 4166
    const/4 v0, -0x1

    return v0
.end method

.method protected indexFavorite()I
    .locals 1

    .prologue
    .line 4168
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_FAVORITE:I

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 4158
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 4159
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 4160
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 4156
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 4161
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 4153
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_ORIENTATION:I

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 4163
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 4164
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 4167
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_ID:I

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 4165
    const/4 v0, -0x1

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 12
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 4177
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p0

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager$Image;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;JII)V

    return-object v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfd"
    .parameter "options"

    .prologue
    .line 4184
    const/4 v2, 0x0

    .line 4187
    .local v2, b:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4189
    .local v6, lt1:J
    if-nez p3, :cond_0

    .line 4190
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    .line 4192
    :cond_0
    if-nez p3, :cond_1

    .line 4193
    const/4 v15, 0x0

    .line 4243
    :goto_0
    return-object v15

    .line 4195
    :cond_1
    if-nez p4, :cond_2

    .line 4196
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p4
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 p4, v10

    .line 4198
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p4
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 4199
    .local v5, fd:Ljava/io/FileDescriptor;
    const/4 v15, 0x1

    move-object/from16 v0, p4

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4200
    const/4 v15, -0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_5

    .line 4201
    const/4 v15, 0x1

    move-object/from16 v0, p4

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 4203
    .local v11, t1:J
    const/4 v15, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v15, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4205
    .local v13, t2:J
    move-object/from16 v0, p4

    iget-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v15, :cond_3

    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 4206
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 4208
    :cond_4
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v15

    move-object/from16 v0, p4

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4209
    const/4 v15, 0x0

    move-object/from16 v0, p4

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4212
    .end local v11           #t1:J
    .end local v13           #t2:J
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p4

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 4215
    sget-object v15, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p4

    iput-object v15, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v11

    .line 4218
    .restart local v11       #t1:J
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-static {v5, v15, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 4222
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4223
    .restart local v13       #t2:J
    if-nez v2, :cond_6

    .line 4224
    const-string v15, "ImageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "not support format"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4230
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 4239
    .local v8, lt2:J
    if-eqz v2, :cond_7

    :cond_7
    move-object v15, v2

    .line 4243
    goto/16 :goto_0

    .line 4219
    .end local v8           #lt2:J
    .end local v13           #t2:J
    :catch_0
    move-exception v3

    .line 4220
    .local v3, error:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v15, "ImageManager"

    const-string v16, "out of memory"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 4231
    .end local v3           #error:Ljava/lang/OutOfMemoryError;
    .end local v5           #fd:Ljava/io/FileDescriptor;
    .end local v11           #t1:J
    :catch_1
    move-exception v4

    .line 4232
    .local v4, ex:Ljava/io/IOException;
    const-string v15, "ImageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "got io exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method protected final registerObservers()V
    .locals 2

    .prologue
    .line 4038
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4039
    .local v0, c:Landroid/database/Cursor;
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mIsRegistered:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 4053
    :cond_0
    :goto_0
    return-void

    .line 4041
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mUpdateRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 4042
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->initUpdateRunnable()V

    .line 4044
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_3

    .line 4045
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->initContentObserver()V

    .line 4047
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-nez v1, :cond_4

    .line 4048
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->initDataSetObserver()V

    .line 4050
    :cond_4
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 4051
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4052
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mIsRegistered:Z

    goto :goto_0
.end method

.method public startRequery()Z
    .locals 1

    .prologue
    .line 4268
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->requery()V

    .line 4269
    const/4 v0, 0x0

    return v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4093
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mFilterAlbumArt:Z

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mTypeFilter:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/htc/opensense2/album/util/ImageManager;->access$1000(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4094
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4100
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

    .line 4103
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4109
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

    .line 4110
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

    .line 4113
    .end local v0           #szBucketID:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4117
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
