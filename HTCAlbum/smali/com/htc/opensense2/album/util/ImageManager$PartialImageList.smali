.class Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
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
    accessFlags = 0x0
    name = "PartialImageList"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "PartialImageList"


# instance fields
.field private mBucketId:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

.field private mFilterAlbumArt:Z

.field private mImageUri:Landroid/net/Uri;

.field private mIsFavorite:Z

.field private mIsNotify:Z

.field protected mIsPartialBuilt:Z

.field private mLoadingThread:Ljava/lang/Thread;

.field private final mLocker:Ljava/lang/Object;

.field protected mPartialCount:I

.field private mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

.field private mSort:I

.field private mSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbUri:Landroid/net/Uri;

.field protected mTotalCount:I

.field private mTypeFilter:Ljava/lang/String;

.field private mWhereStatement:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
    .locals 21
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
    .parameter "partialCount"
    .parameter "totalCount"

    .prologue
    .line 6408
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6388
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLocker:Ljava/lang/Object;

    .line 6390
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    .line 6410
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContext:Landroid/content/Context;

    .line 6411
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 6412
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mImageUri:Landroid/net/Uri;

    .line 6413
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mThumbUri:Landroid/net/Uri;

    .line 6414
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSort:I

    .line 6415
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mBucketId:Ljava/lang/String;

    .line 6416
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFilterAlbumArt:Z

    .line 6417
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mWhereStatement:Ljava/lang/String;

    .line 6418
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsFavorite:Z

    .line 6419
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTypeFilter:Ljava/lang/String;

    .line 6421
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    .line 6422
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    .line 6424
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsPartialBuilt:Z

    .line 6426
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    .line 6427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6431
    new-instance v2, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    const/4 v14, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v15, p12

    invoke-direct/range {v2 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V

    .line 6443
    .local v2, firstList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6445
    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    const/4 v4, 0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_0

    const/4 v9, 0x2

    :goto_0
    const/4 v15, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v16, p12

    invoke-direct/range {v3 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V

    .line 6457
    .local v3, lastList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6459
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v17

    .line 6460
    .local v17, baseF:J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v19

    .line 6461
    .local v19, baseL:J
    add-long v4, v17, v19

    const-wide/16 v6, 0x2

    div-long v8, v4, v6

    .line 6462
    .local v8, base:J
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSort:I

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;JI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

    .line 6464
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;-><init>(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Lcom/htc/opensense2/album/util/ImageManager;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLoadingThread:Ljava/lang/Thread;

    .line 6502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLoadingThread:Ljava/lang/Thread;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 6503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 6504
    return-void

    .line 6445
    .end local v3           #lastList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v8           #base:J
    .end local v17           #baseF:J
    .end local v19           #baseL:J
    :cond_0
    const/4 v9, 0x1

    goto :goto_0
.end method

.method static synthetic access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 6370
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6370
    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6370
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->updateImageCountByQuery()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6370
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->createMiddleImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    return-object v0
.end method

.method private createMiddleImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 15

    .prologue
    .line 6540
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mImageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mThumbUri:Landroid/net/Uri;

    iget v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSort:I

    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mBucketId:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFilterAlbumArt:Z

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mWhereStatement:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsFavorite:Z

    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTypeFilter:Ljava/lang/String;

    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    iget v13, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    iget v14, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    sub-int/2addr v13, v14

    iget v14, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    sub-int/2addr v13, v14

    invoke-direct/range {v0 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V

    .line 6552
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    return-object v0
.end method

.method private updateImageCountByQuery()I
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 6507
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFilterAlbumArt:Z

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTypeFilter:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$1000(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6508
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6511
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(bucket_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6515
    :cond_1
    const/4 v6, 0x0

    .line 6517
    .local v6, count:I
    const/4 v7, 0x0

    .line 6519
    .local v7, countCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mImageUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id)"

    aput-object v5, v2, v4

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6521
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 6522
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6523
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 6530
    :cond_2
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PartialImageList] Get count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6531
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6534
    :cond_3
    :goto_0
    iput v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    .line 6536
    return v6

    .line 6526
    :catch_0
    move-exception v8

    .line 6527
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    const-string v1, "[PartialImageList] Can\'t get correct count: "

    invoke-static {v0, v1, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6530
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PartialImageList] Get count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6531
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 6530
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PartialImageList] Get count = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6531
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public activate()V
    .locals 7

    .prologue
    .line 6697
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6698
    .local v4, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 6699
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->activate()V

    .line 6698
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6701
    .end local v3           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    return-void
.end method

.method public checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 7
    .parameter "cb"

    .prologue
    .line 6681
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6682
    .local v4, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 6683
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V

    .line 6682
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6685
    .end local v3           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    return-void
.end method

.method public closeCursor()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 6713
    iput-boolean v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsPartialBuilt:Z

    .line 6714
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6715
    .local v4, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 6716
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 6715
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6718
    .end local v3           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 6719
    iput v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    .line 6720
    return-void
.end method

.method public commitChanges()V
    .locals 7

    .prologue
    .line 6689
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6690
    .local v4, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 6691
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->commitChanges()V

    .line 6690
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6693
    .end local v3           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 7

    .prologue
    .line 6705
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6706
    .local v4, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 6707
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 6706
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6709
    .end local v3           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 3
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
    .line 6854
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6855
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 6589
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 7
    .parameter "i"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 6594
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    if-lt p1, v4, :cond_1

    .line 6639
    :cond_0
    :goto_0
    return-object v0

    .line 6598
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 6599
    .local v3, listCount:I
    if-ne v3, v5, :cond_2

    .line 6600
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6601
    .local v2, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    goto :goto_0

    .line 6603
    .end local v2           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_2
    if-le v3, v5, :cond_0

    .line 6604
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    .line 6605
    .local v1, lastCount:I
    const/4 v2, 0x0

    .line 6607
    .restart local v2       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v4, -0x1

    if-ge v4, p1, :cond_4

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    if-ge p1, v4, :cond_4

    .line 6608
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6624
    .restart local v2       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 6625
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_7

    .line 6626
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

    .line 6632
    :goto_2
    if-nez v0, :cond_0

    .line 6633
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

    goto :goto_0

    .line 6610
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    if-gt v4, p1, :cond_5

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    sub-int/2addr v4, v1

    if-ge p1, v4, :cond_5

    .line 6611
    iget-boolean v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsPartialBuilt:Z

    if-ne v4, v5, :cond_3

    .line 6612
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    sub-int/2addr p1, v4

    .line 6613
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .restart local v2       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_1

    .line 6616
    :cond_5
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    sub-int/2addr v4, v1

    if-gt v4, p1, :cond_6

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    if-ge p1, v4, :cond_6

    .line 6617
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    sub-int/2addr v4, v1

    sub-int/2addr p1, v4

    .line 6618
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .restart local v2       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_1

    .line 6621
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " used to getSubImageList."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6629
    .restart local v0       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_7
    invoke-interface {v2, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    goto :goto_2
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 8
    .parameter "filePath"

    .prologue
    .line 6744
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6745
    .local v5, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 6746
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v4, :cond_0

    .line 6747
    invoke-interface {v4, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 6748
    .local v2, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    .line 6753
    .end local v2           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_1
    return-object v2

    .line 6745
    .restart local v4       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6753
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 8
    .parameter "uri"

    .prologue
    .line 6730
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6731
    .local v5, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 6732
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v4, :cond_0

    .line 6733
    invoke-interface {v4, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 6734
    .local v2, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    .line 6739
    .end local v2           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_1
    return-object v2

    .line 6731
    .restart local v4       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6739
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    goto :goto_1
.end method

.method public getImages(Ljava/util/List;)V
    .locals 6
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
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 6643
    if-nez p1, :cond_1

    .line 6665
    :cond_0
    :goto_0
    return-void

    .line 6647
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 6648
    .local v2, listCount:I
    if-ne v2, v5, :cond_2

    .line 6649
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    goto :goto_0

    .line 6651
    :cond_2
    if-le v2, v5, :cond_0

    .line 6652
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6653
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6655
    iget-boolean v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsPartialBuilt:Z

    if-ne v3, v5, :cond_3

    .line 6656
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    goto :goto_0

    .line 6659
    :cond_3
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    .line 6660
    .local v1, lastCount:I
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_0

    .line 6661
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6660
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 6669
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 6671
    .local v0, item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v1, v0, Lcom/htc/sunny2/IMediaData;

    if-eqz v1, :cond_0

    .line 6672
    check-cast v0, Lcom/htc/sunny2/IMediaData;

    .line 6675
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
    .line 6860
    const-string v0, "PartialImageList"

    return-object v0
.end method

.method public isReleased()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6724
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 6725
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v0

    goto :goto_0
.end method

.method public removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 6758
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeImageAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 6763
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeImages([I[I[I[I)V
    .locals 1
    .parameter "images"
    .parameter "videos"
    .parameter "drmImages"
    .parameter "drmVideos"

    .prologue
    .line 6773
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 1
    .parameter "items"

    .prologue
    .line 6768
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;)V
    .locals 1
    .parameter "changeCallback"

    .prologue
    .line 6778
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 1
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 6783
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 6556
    const/4 v0, 0x0

    .line 6557
    .local v0, callback:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 6558
    :try_start_0
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    .line 6559
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsPartialBuilt:Z

    if-ne v1, v4, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    if-nez v1, :cond_0

    .line 6560
    const/4 v0, 0x1

    .line 6561
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    .line 6563
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6564
    if-ne v4, v0, :cond_1

    .line 6565
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    invoke-interface {v2, p0, v3, v1}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 6567
    :cond_1
    return-void

    .line 6563
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startRequery()Z
    .locals 21

    .prologue
    .line 6788
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsPartialBuilt:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 6790
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6797
    :cond_0
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsPartialBuilt:Z

    .line 6800
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->updateImageCountByQuery()I

    move-result v19

    .line 6802
    .local v19, newCount:I
    const/16 v2, 0x65

    move/from16 v0, v19

    if-ge v0, v2, :cond_2

    .line 6803
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->closeCursor()V

    .line 6805
    new-instance v1, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mImageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mThumbUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSort:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const/4 v7, 0x2

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mBucketId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFilterAlbumArt:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mWhereStatement:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsFavorite:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTypeFilter:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V

    .line 6817
    .local v1, newList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    .line 6818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6849
    .end local v1           #newList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 6791
    .end local v19           #newCount:I
    :catch_0
    move-exception v16

    .line 6792
    .local v16, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 6805
    .end local v16           #e:Ljava/lang/InterruptedException;
    .restart local v19       #newCount:I
    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    .line 6824
    :cond_2
    const/16 v20, 0x0

    .line 6826
    .local v20, totalPhotoCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    .line 6827
    .local v15, count:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v15, :cond_5

    .line 6828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6829
    .local v18, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 6830
    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 6831
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->createMiddleImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v18

    .line 6832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6838
    :cond_3
    :goto_4
    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    add-int v20, v20, v2

    .line 6827
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 6834
    :cond_4
    if-eqz v18, :cond_3

    .line 6835
    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    goto :goto_4

    .line 6841
    .end local v18           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    move/from16 v0, v20

    if-eq v0, v2, :cond_6

    .line 6842
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRequery: incorrect count: query count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", partial load total count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6846
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsPartialBuilt:Z

    goto :goto_2
.end method
