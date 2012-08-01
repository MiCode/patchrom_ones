.class Lcom/htc/album/helper/DeleteManager$DeleteTask;
.super Landroid/os/AsyncTask;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDoDeleteAll:Z

.field private mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 2
    .parameter "fragment"
    .parameter "collection"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 423
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 424
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 425
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 426
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    .line 428
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 433
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 434
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 435
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 436
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    .line 438
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 439
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 2
    .parameter "fragment"
    .parameter "collection"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    .local p3, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .line 446
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 447
    invoke-virtual {p2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    .line 448
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 27
    .parameter "arg0"

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 490
    .local v20, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x1

    .line 493
    .local v12, isBurstList:Z
    const/16 v23, 0x1

    const-string v24, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 494
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v4, bundle:Landroid/os/Bundle;
    const-string v23, "folder_type"

    const-string v24, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v23, "key_bucket_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v23, "key_folder_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 505
    .end local v4           #bundle:Landroid/os/Bundle;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 506
    .local v14, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 508
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v21

    .line 511
    .local v21, size:I
    const/16 v18, 0x0

    .local v18, pos:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 639
    .end local v18           #pos:I
    .end local v21           #size:I
    :cond_0
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Lcom/htc/album/modules/collection/Collection;

    move-result-object v23

    if-eqz v23, :cond_12

    .line 640
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Lcom/htc/album/modules/collection/Collection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    .line 641
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/htc/album/helper/DeleteManager;->access$402(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/modules/collection/Collection;

    .line 647
    :goto_2
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    return-object v23

    .line 502
    .end local v14           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 516
    .restart local v14       #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .restart local v18       #pos:I
    .restart local v21       #size:I
    :cond_2
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v11

    .line 518
    .local v11, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v11, :cond_7

    if-nez v12, :cond_7

    const/16 v23, 0x1

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 520
    new-instance v7, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const-string v24, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v25

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .local v7, collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 526
    .restart local v4       #bundle:Landroid/os/Bundle;
    const-string v23, "folder_type"

    const-string v24, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v23, "key_bucket_id"

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v23, "key_folder_name"

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v4}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 532
    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 533
    .local v6, burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v8

    .local v8, count:I
    const/4 v15, 0x0

    .line 534
    .local v15, nCover:I
    const/4 v13, 0x1

    .line 535
    .local v13, isDeleteSuccess:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v8, :cond_3

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 539
    const/4 v13, 0x0

    .line 550
    :cond_3
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_4

    .line 551
    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v15}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 552
    :cond_4
    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->release()V

    .line 511
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v6           #burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v7           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v8           #count:I
    .end local v9           #i:I
    .end local v13           #isDeleteSuccess:Z
    .end local v15           #nCover:I
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 542
    .restart local v4       #bundle:Landroid/os/Bundle;
    .restart local v6       #burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .restart local v7       #collection:Lcom/htc/album/modules/collection/Collection;
    .restart local v8       #count:I
    .restart local v9       #i:I
    .restart local v13       #isDeleteSuccess:Z
    .restart local v15       #nCover:I
    :cond_5
    invoke-virtual {v6, v9}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v5

    .line 543
    .local v5, burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 545
    move v15, v9

    .line 535
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 548
    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v9}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto :goto_5

    .line 556
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v7           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v8           #count:I
    .end local v9           #i:I
    .end local v13           #isDeleteSuccess:Z
    .end local v15           #nCover:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto :goto_4

    .line 562
    .end local v11           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #pos:I
    .end local v21           #size:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 563
    .local v22, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 565
    const/16 v17, -0x1

    .line 566
    .local v17, oldBestPos:I
    const/16 v16, 0x0

    .line 567
    .local v16, newBestPos:I
    const/16 v19, 0x0

    .line 570
    .local v19, resetBest:Z
    const/16 v23, 0x1

    const-string v24, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 571
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_9
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 572
    .local v18, pos:Ljava/lang/Integer;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v11

    .line 573
    .restart local v11       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/16 v23, 0x1

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 574
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 577
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 578
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 583
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #pos:Ljava/lang/Integer;
    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 585
    .restart local v18       #pos:Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v23

    if-nez v23, :cond_0

    .line 587
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v11

    .line 589
    .restart local v11       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v11, :cond_11

    if-nez v12, :cond_11

    const/16 v23, 0x1

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 592
    new-instance v7, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const-string v24, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v25

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .restart local v7       #collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 598
    .restart local v4       #bundle:Landroid/os/Bundle;
    const-string v23, "folder_type"

    const-string v24, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v23, "key_bucket_id"

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v23, "key_folder_name"

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v4}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 603
    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 604
    .restart local v6       #burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v8

    .restart local v8       #count:I
    const/4 v15, 0x0

    .line 605
    .restart local v15       #nCover:I
    const/4 v13, 0x1

    .line 606
    .restart local v13       #isDeleteSuccess:Z
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_8
    if-ge v9, v8, :cond_d

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 610
    const/4 v13, 0x0

    .line 621
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_e

    .line 622
    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v15}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 623
    :cond_e
    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->release()V

    goto/16 :goto_7

    .line 613
    :cond_f
    invoke-virtual {v6, v9}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v5

    .line 614
    .restart local v5       #burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 616
    move v15, v9

    .line 606
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 619
    :cond_10
    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v9}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto :goto_9

    .line 627
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v7           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v8           #count:I
    .end local v9           #i:I
    .end local v13           #isDeleteSuccess:Z
    .end local v15           #nCover:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v23, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 628
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 629
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    .line 630
    .local v6, burstList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_c

    .line 632
    const/16 v23, 0x0

    move/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->setBestShot(IZ)V

    goto/16 :goto_7

    .line 644
    .end local v6           #burstList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v16           #newBestPos:I
    .end local v17           #oldBestPos:I
    .end local v18           #pos:Ljava/lang/Integer;
    .end local v19           #resetBest:Z
    .end local v22           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 421
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    const/high16 v2, 0x12

    .line 684
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 685
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->cancelDeleting()V

    .line 687
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_1

    .line 689
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 690
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 697
    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 698
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 699
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    .line 700
    :cond_0
    return-void

    .line 694
    .end local v0           #callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x12

    .line 659
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 660
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteEnd()V

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 663
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v1, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 666
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 672
    :goto_0
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 673
    return-void

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 421
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/high16 v3, 0x12

    .line 464
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    .line 472
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 474
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 475
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 476
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteStart()V

    .line 477
    :cond_0
    return-void

    .line 470
    .end local v0           #callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
