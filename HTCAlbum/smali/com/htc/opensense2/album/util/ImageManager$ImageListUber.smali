.class public Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.implements Lcom/htc/sunny2/IMediaList;
.implements Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageListUber"
.end annotation


# instance fields
.field private mCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field private mDrmImageCount:I

.field private mDrmNonSetAsImageCount:I

.field private mDrmNonSetAsVideoCount:I

.field private mDrmNonShareImageCount:I

.field private mDrmNonShareVideoCount:I

.field private mDrmVideoCount:I

.field mHandler:Landroid/os/Handler;

.field private mImageCount:I

.field mIsPartialLoading:Z

.field private mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

.field private mNotifyPartialLoad:Z

.field private mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

.field mSkipCounts:[I

.field mSkipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSort:I

.field private mSubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCount:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;[Lcom/htc/opensense2/album/util/ImageManager$IImageList;I)V
    .locals 21
    .parameter
    .parameter "sublist"
    .parameter "sort"

    .prologue
    .line 6976
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6947
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 6960
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    .line 6962
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSkipCounts:[I

    .line 7049
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    .line 7054
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 6977
    const-wide/16 v8, 0x0

    .local v8, makeListTime:J
    const-wide/16 v11, 0x0

    .local v11, sortTime:J
    const-wide/16 v15, 0x0

    .line 6978
    .local v15, t1:J
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    .line 6979
    move-object/from16 v4, p2

    .local v4, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v4, v5

    .line 6980
    .local v7, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6979
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6983
    .end local v7           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSort:I

    .line 6984
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 6985
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 6986
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 6987
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    .line 6988
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    .line 6989
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    .line 6990
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    .line 6991
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    .line 6992
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    .line 6993
    move-object/from16 v4, p2

    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_7

    aget-object v7, v4, v5

    .line 6994
    .restart local v7       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 6995
    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 6997
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    .local v3, allCount:I
    move-object/from16 v17, v7

    .line 6998
    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getSharableCount()I

    move-result v10

    .line 6999
    .local v10, shareCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    move/from16 v17, v0

    sub-int v18, v3, v10

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    .line 7000
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    move/from16 v17, v0

    add-int v17, v17, v3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 7001
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    move-object/from16 v17, v7

    .line 7002
    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getSetAsCount()I

    move-result v17

    sub-int v17, v3, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    .line 7020
    .end local v3           #allCount:I
    .end local v10           #shareCount:I
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 7021
    new-instance v17, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$1;-><init>(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;Lcom/htc/opensense2/album/util/ImageManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    .line 7029
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v15

    add-long v8, v8, v17

    .line 7030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 7032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 7034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v15

    add-long v11, v11, v17

    .line 7036
    const-string v17, "ImageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ImageListUber] makeListTime = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v15

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6993
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 7005
    :cond_3
    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 7007
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    .restart local v3       #allCount:I
    move-object/from16 v17, v7

    .line 7008
    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getSharableCount()I

    move-result v10

    .line 7009
    .restart local v10       #shareCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    move/from16 v17, v0

    sub-int v18, v3, v10

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    .line 7010
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move/from16 v17, v0

    add-int v17, v17, v3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 7011
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    move-object/from16 v17, v7

    .line 7012
    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getSetAsCount()I

    move-result v17

    sub-int v17, v3, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    goto/16 :goto_2

    .line 7015
    .end local v3           #allCount:I
    .end local v10           #shareCount:I
    :cond_4
    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    move/from16 v17, v0

    if-nez v17, :cond_5

    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 7016
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    move/from16 v17, v0

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    goto/16 :goto_2

    .line 7017
    :cond_6
    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 7018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move/from16 v17, v0

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    goto/16 :goto_2

    .line 7038
    .end local v7           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 7044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v13, v17, v15

    .line 7046
    .local v13, sortTime2:J
    const-string v17, "ImageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeListTime = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms, traversal time = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms, sortTime = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "p)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7047
    return-void
.end method

.method static synthetic access$1900(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6944
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 6

    .prologue
    .line 7160
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7161
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v0, v3

    .line 7162
    .local v0, length:I
    const/4 v1, -0x1

    .line 7163
    .local v1, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 7164
    aget-object v2, v3, v1

    .line 7165
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->activate()V

    goto :goto_0

    .line 7167
    .end local v2           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    return-void
.end method

.method addExpandBurstImages(ILcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 8
    .parameter "index"
    .parameter "list"

    .prologue
    const/4 v6, 0x1

    .line 7627
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v4

    if-gt v4, p1, :cond_1

    .line 7654
    :cond_0
    :goto_0
    return-void

    .line 7629
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7630
    .local v3, tmpImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-interface {p2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 7632
    const/4 v0, 0x0

    .line 7633
    .local v0, bestImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7634
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 7635
    move-object v0, v2

    goto :goto_1

    .line 7638
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    if-eqz v0, :cond_4

    .line 7639
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7642
    :cond_4
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v5

    .line 7643
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7644
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4, p1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v4

    if-ne v6, v4, :cond_5

    .line 7645
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 7650
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7652
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7653
    const/4 v3, 0x0

    .line 7654
    goto :goto_0

    .line 7648
    :cond_5
    :try_start_1
    const-string v4, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[addExpandBurstImages] fail to add list:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7650
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public cancelDeleting()V
    .locals 2

    .prologue
    .line 7414
    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]cancelDeleting has been called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7415
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$602(Lcom/htc/opensense2/album/util/ImageManager;Z)Z

    .line 7416
    return-void
.end method

.method public checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 7147
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7148
    .local v2, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v1, v2

    .line 7149
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 7150
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V

    .line 7149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7151
    :cond_0
    return-void
.end method

.method public closeCursor()V
    .locals 6

    .prologue
    .line 7181
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7182
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_1

    .line 7183
    array-length v0, v3

    .line 7184
    .local v0, length:I
    const/4 v1, -0x1

    .line 7185
    .local v1, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 7186
    aget-object v2, v3, v1

    .line 7187
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    goto :goto_0

    .line 7190
    .end local v0           #length:I
    .end local v1           #pos:I
    .end local v2           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 7191
    return-void
.end method

.method public commitChanges()V
    .locals 5

    .prologue
    .line 7154
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7155
    .local v2, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v1, v2

    .line 7156
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 7157
    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->commitChanges()V

    .line 7156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7158
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 6

    .prologue
    .line 7170
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7171
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v0, v3

    .line 7172
    .local v0, length:I
    const/4 v1, -0x1

    .line 7173
    .local v1, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 7174
    aget-object v2, v3, v1

    .line 7175
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    goto :goto_0

    .line 7177
    .end local v2           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 4
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
    .line 6969
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6970
    .local v0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6971
    .local v2, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 6973
    .end local v2           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    return-object v0
.end method

.method public getCanSetAsImageCount()I
    .locals 2

    .prologue
    .line 7127
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCanSetAsVideoCount()I
    .locals 2

    .prologue
    .line 7131
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 7201
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7202
    const/4 v0, 0x0

    .line 7205
    :goto_0
    return v0

    .line 7204
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v1

    .line 7205
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 7206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDrmContentCount()I
    .locals 2

    .prologue
    .line 7123
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 4
    .parameter "index"

    .prologue
    .line 7212
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v1

    .line 7215
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 7217
    :cond_0
    const-string v0, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7218
    const/4 v0, 0x0

    monitor-exit v1

    .line 7223
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    monitor-exit v1

    goto :goto_0

    .line 7224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 7136
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    return v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 7355
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7356
    .local v2, subList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 7357
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 7358
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 7361
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return-object v1

    .line 7356
    .restart local v1       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7361
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 5
    .parameter "uri"

    .prologue
    .line 7345
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7346
    .local v2, subList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 7347
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 7348
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 7351
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return-object v1

    .line 7346
    .restart local v1       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7351
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_1
.end method

.method public getImages(Ljava/util/List;)V
    .locals 2
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
    .line 7228
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_0

    .line 7235
    :goto_0
    return-void

    .line 7231
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v1

    .line 7233
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7234
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 7617
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/IMediaData;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6965
    const-string v0, "ImageListUber"

    return-object v0
.end method

.method public getNonDrmImageCount()I
    .locals 2

    .prologue
    .line 7108
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNonDrmVideoCount()I
    .locals 2

    .prologue
    .line 7111
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableImageCount()I
    .locals 2

    .prologue
    .line 7115
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableVideoCount()I
    .locals 2

    .prologue
    .line 7119
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 7139
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    return v0
.end method

.method public isPartialLoading()Z
    .locals 1

    .prologue
    .line 7051
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    return v0
.end method

.method public isReleased()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 7194
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    new-array v3, v1, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7195
    .local v0, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v0, :cond_0

    .line 7196
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v1

    goto :goto_0
.end method

.method public modifySkipCountForDeletedImage(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 7386
    return-void
.end method

.method public onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    .locals 12
    .parameter "list"
    .parameter "start"
    .parameter "count"

    .prologue
    .line 7065
    instance-of v9, p1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    if-nez v9, :cond_0

    .line 7104
    :goto_0
    return-void

    .line 7067
    :cond_0
    const/4 v4, 0x0

    .line 7068
    .local v4, oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v10

    .line 7069
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7070
    .end local v4           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .local v5, oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7072
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7073
    .local v3, newCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7074
    .local v2, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    .line 7075
    .local v6, parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eq v6, p1, :cond_2

    if-nez v6, :cond_3

    :cond_2
    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_1

    .line 7076
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7070
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v3           #newCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .end local v5           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .end local v6           #parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v4       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :catchall_0
    move-exception v9

    :goto_3
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 7075
    .end local v4           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v3       #newCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v5       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v6       #parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 7079
    .end local v2           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7080
    const/4 v4, 0x0

    .line 7082
    .end local v5           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v4       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    move v0, p2

    .local v0, i:I
    :goto_4
    add-int v9, p2, p3

    if-ge v0, v9, :cond_6

    .line 7083
    invoke-interface {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    .line 7084
    .local v8, tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v8, :cond_5

    .line 7085
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7082
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7088
    .end local v8           #tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_6
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7090
    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v10

    .line 7091
    :try_start_3
    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    .line 7092
    .local v7, tmpCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    iput-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    .line 7093
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 7094
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7096
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    if-eqz v9, :cond_7

    .line 7097
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v9, p0, v10, v11}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 7098
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 7099
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    goto :goto_0

    .line 7094
    .end local v7           #tmpCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 7102
    .restart local v7       #tmpCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    goto :goto_0

    .line 7070
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #newCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .end local v4           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .end local v7           #tmpCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v5       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v4       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    goto :goto_3
.end method

.method removeExpandBurstImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 8
    .parameter "list"

    .prologue
    const/4 v7, 0x1

    .line 7663
    if-nez p1, :cond_0

    .line 7690
    :goto_0
    return-void

    .line 7665
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7666
    .local v3, tmpImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-interface {p1, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 7668
    const/4 v0, 0x0

    .line 7669
    .local v0, bestImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7670
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-ne v7, v4, :cond_1

    .line 7671
    move-object v0, v2

    goto :goto_1

    .line 7674
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    if-eqz v0, :cond_4

    .line 7675
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7681
    :goto_2
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v5

    .line 7682
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7683
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-ne v7, v4, :cond_3

    .line 7684
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 7686
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7688
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7689
    const/4 v3, 0x0

    .line 7690
    goto :goto_0

    .line 7678
    :cond_4
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[removeExpandBurstImages] fail to remove list:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7686
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 6
    .parameter "image"

    .prologue
    const/4 v3, 0x1

    .line 7389
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    new-array v5, v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7390
    .local v2, subList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v0, -0x1

    .line 7391
    .local v0, pos:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 7392
    aget-object v1, v2, v0

    .line 7393
    .local v1, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7394
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7398
    .end local v1           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 7402
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 7403
    .local v0, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    .line 7404
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 7405
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v1, :cond_0

    .line 7406
    invoke-interface {v1, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 7407
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7408
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 7411
    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    return-void
.end method

.method public removeImages([I[I[I[I)V
    .locals 11
    .parameter "imageIndex"
    .parameter "videoIndex"
    .parameter "drmImageIndex"
    .parameter "drmVideoIndex"

    .prologue
    .line 7434
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 7435
    const-string v8, "ImageManager"

    const-string v9, "[CANCEL_DELETE]cancelDeleting reset to false"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7437
    const/4 v3, 0x0

    .line 7439
    .local v3, items:[Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v8, 0x2

    new-array v6, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7440
    .local v6, lists:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v7, 0x0

    .line 7442
    .local v7, tmpList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v9

    .line 7443
    :try_start_0
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    monitor-exit v9

    .line 7518
    :cond_0
    :goto_0
    return-void

    .line 7444
    :cond_1
    if-eqz p1, :cond_5

    array-length v8, p1

    if-lez v8, :cond_5

    .line 7445
    array-length v8, p1

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7446
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 7448
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, p1

    if-ge v1, v8, :cond_2

    .line 7449
    aget v8, p1, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 7450
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 7451
    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    aget-object v8, v6, v8

    if-nez v8, :cond_4

    .line 7453
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 7457
    :cond_2
    move-object v0, v6

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    .line 7458
    .local v5, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_3

    .line 7459
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 7457
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7448
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7461
    .end local v1           #i:I
    :cond_5
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_6

    monitor-exit v9

    goto :goto_0

    .line 7515
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 7462
    :cond_6
    if-eqz p2, :cond_a

    :try_start_1
    array-length v8, p2

    if-lez v8, :cond_a

    .line 7463
    array-length v8, p2

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7464
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p2, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 7466
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v8, p2

    if-ge v1, v8, :cond_7

    .line 7467
    aget v8, p2, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 7468
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 7469
    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x1

    aget-object v8, v6, v8

    if-nez v8, :cond_9

    .line 7471
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 7475
    :cond_7
    move-object v0, v6

    .restart local v0       #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_4
    if-ge v2, v4, :cond_a

    aget-object v5, v0, v2

    .line 7476
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_8

    .line 7477
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 7475
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7466
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7479
    .end local v1           #i:I
    :cond_a
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_b

    monitor-exit v9

    goto/16 :goto_0

    .line 7480
    :cond_b
    if-eqz p3, :cond_f

    array-length v8, p3

    if-lez v8, :cond_f

    .line 7481
    array-length v8, p3

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7482
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p3, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 7484
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    array-length v8, p3

    if-ge v1, v8, :cond_c

    .line 7485
    aget v8, p3, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 7486
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 7487
    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v8, 0x1

    aget-object v8, v6, v8

    if-nez v8, :cond_e

    .line 7489
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 7493
    :cond_c
    move-object v0, v6

    .restart local v0       #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_6
    if-ge v2, v4, :cond_f

    aget-object v5, v0, v2

    .line 7494
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_d

    .line 7495
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 7493
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 7484
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7497
    .end local v1           #i:I
    :cond_f
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_10

    monitor-exit v9

    goto/16 :goto_0

    .line 7498
    :cond_10
    if-eqz p4, :cond_14

    array-length v8, p4

    if-lez v8, :cond_14

    .line 7499
    array-length v8, p4

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7500
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p4, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 7502
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7
    array-length v8, p4

    if-ge v1, v8, :cond_11

    .line 7503
    aget v8, p4, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 7504
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 7505
    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_13

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x1

    aget-object v8, v6, v8

    if-nez v8, :cond_13

    .line 7507
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 7511
    :cond_11
    move-object v0, v6

    .restart local v0       #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_8
    if-ge v2, v4, :cond_14

    aget-object v5, v0, v2

    .line 7512
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_12

    .line 7513
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 7511
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7502
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7515
    .end local v1           #i:I
    :cond_14
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7516
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 7517
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->startRequery()Z

    goto/16 :goto_0
.end method

.method public removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 7520
    return-void
.end method

.method public removeOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;)V
    .locals 1
    .parameter "changeCallback"

    .prologue
    .line 7523
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_0

    .line 7524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 7525
    :cond_0
    return-void
.end method

.method public resetCancelDelete()V
    .locals 2

    .prologue
    .line 7428
    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]resetCancelDelete has been called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7429
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$602(Lcom/htc/opensense2/album/util/ImageManager;Z)Z

    .line 7430
    return-void
.end method

.method public setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 7528
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 7529
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    .line 7530
    return-void
.end method

.method public setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 7057
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    .line 7058
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7059
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p0, v2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 7060
    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 7062
    :cond_0
    return-void
.end method

.method public startRequery()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 7533
    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v11}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 7534
    const-string v11, "ImageManager"

    const-string v12, "cancel_delete is true 1"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7609
    :goto_0
    return v10

    .line 7537
    :cond_0
    const-wide/16 v2, 0x0

    .local v2, makeListTime:J
    const-wide/16 v4, 0x0

    .local v4, sortTime:J
    const-wide/16 v8, 0x0

    .line 7539
    .local v8, t1:J
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 7540
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 7541
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 7542
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    .line 7544
    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v11

    .line 7545
    :try_start_0
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 7547
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7548
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 7549
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 2"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7550
    monitor-exit v11

    goto :goto_0

    .line 7605
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 7552
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 7553
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 7554
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 3"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7555
    monitor-exit v11

    goto :goto_0

    .line 7557
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7558
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    if-eqz v12, :cond_5

    .line 7559
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 7560
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 7570
    :cond_3
    :goto_2
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    if-eqz v12, :cond_4

    .line 7571
    new-instance v12, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;

    invoke-direct {v12, p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;-><init>(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V

    iget-object v13, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v12, v13}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    .line 7579
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v2, v12

    .line 7580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7581
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 7582
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 4"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7583
    monitor-exit v11

    goto/16 :goto_0

    .line 7562
    :cond_5
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    if-eqz v12, :cond_6

    .line 7563
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 7564
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    goto :goto_2

    .line 7566
    :cond_6
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    if-nez v12, :cond_7

    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    if-eqz v12, :cond_8

    .line 7567
    :cond_7
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    goto :goto_2

    .line 7568
    :cond_8
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    if-eqz v12, :cond_3

    .line 7569
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    goto :goto_2

    .line 7595
    :cond_9
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v1, v12}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 7597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v4, v12

    goto/16 :goto_1

    .line 7599
    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7600
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 7601
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 5"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7602
    monitor-exit v11

    goto/16 :goto_0

    .line 7604
    :cond_b
    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7605
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v8

    .line 7607
    .local v6, sortTime2:J
    const-string v10, "ImageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[requery]makeListTime= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms, traversal time= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms, sortTime= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "p)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7609
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
