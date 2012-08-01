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
    .line 6896
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6867
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 6880
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    .line 6882
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSkipCounts:[I

    .line 6969
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    .line 6974
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 6897
    const-wide/16 v8, 0x0

    .local v8, makeListTime:J
    const-wide/16 v11, 0x0

    .local v11, sortTime:J
    const-wide/16 v15, 0x0

    .line 6898
    .local v15, t1:J
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    .line 6899
    move-object/from16 v4, p2

    .local v4, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v4, v5

    .line 6900
    .local v7, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6899
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6903
    .end local v7           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSort:I

    .line 6904
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 6905
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 6906
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 6907
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    .line 6908
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    .line 6909
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    .line 6910
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    .line 6911
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    .line 6912
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    .line 6913
    move-object/from16 v4, p2

    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_7

    aget-object v7, v4, v5

    .line 6914
    .restart local v7       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 6915
    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 6917
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    .local v3, allCount:I
    move-object/from16 v17, v7

    .line 6918
    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getSharableCount()I

    move-result v10

    .line 6919
    .local v10, shareCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    move/from16 v17, v0

    sub-int v18, v3, v10

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    .line 6920
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    move/from16 v17, v0

    add-int v17, v17, v3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 6921
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    move-object/from16 v17, v7

    .line 6922
    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getSetAsCount()I

    move-result v17

    sub-int v17, v3, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    .line 6940
    .end local v3           #allCount:I
    .end local v10           #shareCount:I
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6941
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

    .line 6949
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v15

    add-long v8, v8, v17

    .line 6950
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 6952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v15

    add-long v11, v11, v17

    .line 6956
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

    .line 6913
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 6925
    :cond_3
    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 6927
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    .restart local v3       #allCount:I
    move-object/from16 v17, v7

    .line 6928
    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getSharableCount()I

    move-result v10

    .line 6929
    .restart local v10       #shareCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    move/from16 v17, v0

    sub-int v18, v3, v10

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    .line 6930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move/from16 v17, v0

    add-int v17, v17, v3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 6931
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    move-object/from16 v17, v7

    .line 6932
    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getSetAsCount()I

    move-result v17

    sub-int v17, v3, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    goto/16 :goto_2

    .line 6935
    .end local v3           #allCount:I
    .end local v10           #shareCount:I
    :cond_4
    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    move/from16 v17, v0

    if-nez v17, :cond_5

    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 6936
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

    .line 6937
    :cond_6
    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 6938
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

    .line 6958
    .end local v7           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 6964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v13, v17, v15

    .line 6966
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

    .line 6967
    return-void
.end method

.method static synthetic access$1900(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6864
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 6

    .prologue
    .line 7080
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7081
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v0, v3

    .line 7082
    .local v0, length:I
    const/4 v1, -0x1

    .line 7083
    .local v1, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 7084
    aget-object v2, v3, v1

    .line 7085
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->activate()V

    goto :goto_0

    .line 7087
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

    .line 7547
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v4

    if-gt v4, p1, :cond_1

    .line 7574
    :cond_0
    :goto_0
    return-void

    .line 7549
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7550
    .local v3, tmpImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-interface {p2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 7552
    const/4 v0, 0x0

    .line 7553
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

    .line 7554
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 7555
    move-object v0, v2

    goto :goto_1

    .line 7558
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    if-eqz v0, :cond_4

    .line 7559
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7562
    :cond_4
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v5

    .line 7563
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7564
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4, p1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v4

    if-ne v6, v4, :cond_5

    .line 7565
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 7570
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7572
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7573
    const/4 v3, 0x0

    .line 7574
    goto :goto_0

    .line 7568
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

    .line 7570
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
    .line 7334
    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]cancelDeleting has been called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7335
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$602(Lcom/htc/opensense2/album/util/ImageManager;Z)Z

    .line 7336
    return-void
.end method

.method public checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 7067
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7068
    .local v2, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v1, v2

    .line 7069
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 7070
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V

    .line 7069
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7071
    :cond_0
    return-void
.end method

.method public closeCursor()V
    .locals 6

    .prologue
    .line 7101
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7102
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_1

    .line 7103
    array-length v0, v3

    .line 7104
    .local v0, length:I
    const/4 v1, -0x1

    .line 7105
    .local v1, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 7106
    aget-object v2, v3, v1

    .line 7107
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    goto :goto_0

    .line 7110
    .end local v0           #length:I
    .end local v1           #pos:I
    .end local v2           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 7111
    return-void
.end method

.method public commitChanges()V
    .locals 5

    .prologue
    .line 7074
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7075
    .local v2, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v1, v2

    .line 7076
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 7077
    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->commitChanges()V

    .line 7076
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7078
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 6

    .prologue
    .line 7090
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7091
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v0, v3

    .line 7092
    .local v0, length:I
    const/4 v1, -0x1

    .line 7093
    .local v1, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 7094
    aget-object v2, v3, v1

    .line 7095
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    goto :goto_0

    .line 7097
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
    .line 6889
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6890
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

    .line 6891
    .local v2, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 6893
    .end local v2           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    return-object v0
.end method

.method public getCanSetAsImageCount()I
    .locals 2

    .prologue
    .line 7047
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCanSetAsVideoCount()I
    .locals 2

    .prologue
    .line 7051
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 7121
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7122
    const/4 v0, 0x0

    .line 7125
    :goto_0
    return v0

    .line 7124
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v1

    .line 7125
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 7126
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
    .line 7043
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 4
    .parameter "index"

    .prologue
    .line 7132
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v1

    .line 7135
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 7137
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

    .line 7138
    const/4 v0, 0x0

    monitor-exit v1

    .line 7143
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    monitor-exit v1

    goto :goto_0

    .line 7144
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
    .line 7056
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    return v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 7275
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7276
    .local v2, subList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 7277
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 7278
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 7281
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return-object v1

    .line 7276
    .restart local v1       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7281
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 5
    .parameter "uri"

    .prologue
    .line 7265
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7266
    .local v2, subList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 7267
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 7268
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 7271
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return-object v1

    .line 7266
    .restart local v1       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7271
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
    .line 7148
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_0

    .line 7155
    :goto_0
    return-void

    .line 7151
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v1

    .line 7153
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7154
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
    .line 7537
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/IMediaData;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6885
    const-string v0, "ImageListUber"

    return-object v0
.end method

.method public getNonDrmImageCount()I
    .locals 2

    .prologue
    .line 7028
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNonDrmVideoCount()I
    .locals 2

    .prologue
    .line 7031
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableImageCount()I
    .locals 2

    .prologue
    .line 7035
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableVideoCount()I
    .locals 2

    .prologue
    .line 7039
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 7059
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    return v0
.end method

.method public isPartialLoading()Z
    .locals 1

    .prologue
    .line 6971
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    return v0
.end method

.method public isReleased()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 7114
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    new-array v3, v1, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7115
    .local v0, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v0, :cond_0

    .line 7116
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
    .line 7306
    return-void
.end method

.method public onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    .locals 12
    .parameter "list"
    .parameter "start"
    .parameter "count"

    .prologue
    .line 6985
    instance-of v9, p1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    if-nez v9, :cond_0

    .line 7024
    :goto_0
    return-void

    .line 6987
    :cond_0
    const/4 v4, 0x0

    .line 6988
    .local v4, oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v10

    .line 6989
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6990
    .end local v4           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .local v5, oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 6992
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6993
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

    .line 6994
    .local v2, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    .line 6995
    .local v6, parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eq v6, p1, :cond_2

    if-nez v6, :cond_3

    :cond_2
    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_1

    .line 6996
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6990
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

    .line 6995
    .end local v4           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v3       #newCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v5       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v6       #parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 6999
    .end local v2           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7000
    const/4 v4, 0x0

    .line 7002
    .end local v5           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v4       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    move v0, p2

    .local v0, i:I
    :goto_4
    add-int v9, p2, p3

    if-ge v0, v9, :cond_6

    .line 7003
    invoke-interface {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    .line 7004
    .local v8, tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v8, :cond_5

    .line 7005
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7002
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7008
    .end local v8           #tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_6
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7010
    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v10

    .line 7011
    :try_start_3
    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    .line 7012
    .local v7, tmpCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    iput-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    .line 7013
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 7014
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7016
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    if-eqz v9, :cond_7

    .line 7017
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v9, p0, v10, v11}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 7018
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 7019
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    goto :goto_0

    .line 7014
    .end local v7           #tmpCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 7022
    .restart local v7       #tmpCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    goto :goto_0

    .line 6990
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

    .line 7583
    if-nez p1, :cond_0

    .line 7610
    :goto_0
    return-void

    .line 7585
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7586
    .local v3, tmpImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-interface {p1, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 7588
    const/4 v0, 0x0

    .line 7589
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

    .line 7590
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-ne v7, v4, :cond_1

    .line 7591
    move-object v0, v2

    goto :goto_1

    .line 7594
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    if-eqz v0, :cond_4

    .line 7595
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7601
    :goto_2
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v5

    .line 7602
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7603
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-ne v7, v4, :cond_3

    .line 7604
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 7606
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7608
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7609
    const/4 v3, 0x0

    .line 7610
    goto :goto_0

    .line 7598
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

    .line 7606
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

    .line 7309
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    new-array v5, v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7310
    .local v2, subList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v0, -0x1

    .line 7311
    .local v0, pos:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 7312
    aget-object v1, v2, v0

    .line 7313
    .local v1, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7314
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7318
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
    .line 7322
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 7323
    .local v0, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    .line 7324
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 7325
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v1, :cond_0

    .line 7326
    invoke-interface {v1, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 7327
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7328
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 7331
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
    .line 7354
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 7355
    const-string v8, "ImageManager"

    const-string v9, "[CANCEL_DELETE]cancelDeleting reset to false"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7357
    const/4 v3, 0x0

    .line 7359
    .local v3, items:[Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v8, 0x2

    new-array v6, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 7360
    .local v6, lists:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v7, 0x0

    .line 7362
    .local v7, tmpList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v9

    .line 7363
    :try_start_0
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    monitor-exit v9

    .line 7438
    :cond_0
    :goto_0
    return-void

    .line 7364
    :cond_1
    if-eqz p1, :cond_5

    array-length v8, p1

    if-lez v8, :cond_5

    .line 7365
    array-length v8, p1

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7366
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 7368
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, p1

    if-ge v1, v8, :cond_2

    .line 7369
    aget v8, p1, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 7370
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 7371
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

    .line 7373
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 7377
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

    .line 7378
    .local v5, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_3

    .line 7379
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 7377
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7368
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7381
    .end local v1           #i:I
    :cond_5
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_6

    monitor-exit v9

    goto :goto_0

    .line 7435
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 7382
    :cond_6
    if-eqz p2, :cond_a

    :try_start_1
    array-length v8, p2

    if-lez v8, :cond_a

    .line 7383
    array-length v8, p2

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7384
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p2, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 7386
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v8, p2

    if-ge v1, v8, :cond_7

    .line 7387
    aget v8, p2, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 7388
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 7389
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

    .line 7391
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 7395
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

    .line 7396
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_8

    .line 7397
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 7395
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7386
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7399
    .end local v1           #i:I
    :cond_a
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_b

    monitor-exit v9

    goto/16 :goto_0

    .line 7400
    :cond_b
    if-eqz p3, :cond_f

    array-length v8, p3

    if-lez v8, :cond_f

    .line 7401
    array-length v8, p3

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7402
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p3, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 7404
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    array-length v8, p3

    if-ge v1, v8, :cond_c

    .line 7405
    aget v8, p3, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 7406
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 7407
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

    .line 7409
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 7413
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

    .line 7414
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_d

    .line 7415
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 7413
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 7404
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7417
    .end local v1           #i:I
    :cond_f
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_10

    monitor-exit v9

    goto/16 :goto_0

    .line 7418
    :cond_10
    if-eqz p4, :cond_14

    array-length v8, p4

    if-lez v8, :cond_14

    .line 7419
    array-length v8, p4

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 7420
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p4, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 7422
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7
    array-length v8, p4

    if-ge v1, v8, :cond_11

    .line 7423
    aget v8, p4, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 7424
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 7425
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

    .line 7427
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 7431
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

    .line 7432
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_12

    .line 7433
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 7431
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7422
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7435
    .end local v1           #i:I
    :cond_14
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7436
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 7437
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->startRequery()Z

    goto/16 :goto_0
.end method

.method public removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 7440
    return-void
.end method

.method public removeOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;)V
    .locals 1
    .parameter "changeCallback"

    .prologue
    .line 7443
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_0

    .line 7444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 7445
    :cond_0
    return-void
.end method

.method public resetCancelDelete()V
    .locals 2

    .prologue
    .line 7348
    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]resetCancelDelete has been called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7349
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$602(Lcom/htc/opensense2/album/util/ImageManager;Z)Z

    .line 7350
    return-void
.end method

.method public setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 7448
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 7449
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    .line 7450
    return-void
.end method

.method public setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 6977
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    .line 6978
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6979
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p0, v2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 6980
    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 6982
    :cond_0
    return-void
.end method

.method public startRequery()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 7453
    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v11}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 7454
    const-string v11, "ImageManager"

    const-string v12, "cancel_delete is true 1"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7529
    :goto_0
    return v10

    .line 7457
    :cond_0
    const-wide/16 v2, 0x0

    .local v2, makeListTime:J
    const-wide/16 v4, 0x0

    .local v4, sortTime:J
    const-wide/16 v8, 0x0

    .line 7459
    .local v8, t1:J
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 7460
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 7461
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 7462
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    .line 7464
    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v11

    .line 7465
    :try_start_0
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 7467
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

    .line 7468
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 7469
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 2"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7470
    monitor-exit v11

    goto :goto_0

    .line 7525
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 7472
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 7473
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 7474
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 3"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7475
    monitor-exit v11

    goto :goto_0

    .line 7477
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7478
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    if-eqz v12, :cond_5

    .line 7479
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 7480
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 7490
    :cond_3
    :goto_2
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    if-eqz v12, :cond_4

    .line 7491
    new-instance v12, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;

    invoke-direct {v12, p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;-><init>(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V

    iget-object v13, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v12, v13}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    .line 7499
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v2, v12

    .line 7500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7501
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 7502
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 4"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7503
    monitor-exit v11

    goto/16 :goto_0

    .line 7482
    :cond_5
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    if-eqz v12, :cond_6

    .line 7483
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 7484
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    goto :goto_2

    .line 7486
    :cond_6
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    if-nez v12, :cond_7

    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    if-eqz v12, :cond_8

    .line 7487
    :cond_7
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    goto :goto_2

    .line 7488
    :cond_8
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    if-eqz v12, :cond_3

    .line 7489
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    goto :goto_2

    .line 7515
    :cond_9
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v1, v12}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 7517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v4, v12

    goto/16 :goto_1

    .line 7519
    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7520
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$600(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 7521
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 5"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7522
    monitor-exit v11

    goto/16 :goto_0

    .line 7524
    :cond_b
    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7525
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v8

    .line 7527
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

    .line 7529
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
