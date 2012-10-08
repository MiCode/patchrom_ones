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

    .line 488
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 479
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 480
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 481
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 482
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    .line 484
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 489
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 490
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 491
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 492
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    .line 494
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 495
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
    .line 501
    .local p3, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .line 502
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 503
    invoke-virtual {p2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    .line 504
    return-void

    .line 503
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteEmptyBurstFolder(Ljava/lang/String;)Z
    .locals 8
    .parameter "imagePath"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 525
    if-nez p1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v4

    .line 528
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 532
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, directory:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    .line 536
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 537
    .local v3, isDeleteSuccess:Z
    if-ne v3, v5, :cond_2

    .line 539
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DeleteManager][deleteEmptyBurstFolder] directory["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] has been deleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 540
    goto :goto_0

    .line 544
    :cond_2
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DeleteManager][deleteEmptyBurstFolder] Delete directory["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 29
    .parameter "arg0"

    .prologue
    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 586
    .local v26, resolver:Landroid/content/ContentResolver;
    const/16 v18, 0x1

    .line 589
    .local v18, isBurstList:Z
    const/4 v3, 0x1

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 590
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 591
    .local v8, bundle:Landroid/os/Bundle;
    const-string v3, "folder_type"

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v3, "key_bucket_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v4}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v3, "key_folder_name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v4}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v4, "key_BurstShot_CoverFilePath"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    check-cast v3, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getCoverfilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v8}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 601
    .end local v8           #bundle:Landroid/os/Bundle;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v20

    check-cast v20, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 602
    .local v20, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 604
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    if-eqz v3, :cond_c

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v27

    .line 607
    .local v27, size:I
    const/16 v21, -0x1

    .line 608
    .local v21, nCover:I
    const/16 v19, 0x1

    .line 609
    .local v19, isDeleteSuccess:Z
    const/16 v24, 0x0

    .local v24, pos:I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 613
    const/16 v19, 0x0

    .line 688
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    if-lez v27, :cond_1

    const/4 v3, -0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_1

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 691
    invoke-virtual/range {v20 .. v21}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v15

    .line 692
    .local v15, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v15, :cond_1

    .line 693
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v17

    .line 694
    .local v17, imagePath:Ljava/lang/String;
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyBurstFolder(Ljava/lang/String;)Z

    .line 827
    .end local v15           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v17           #imagePath:Ljava/lang/String;
    .end local v19           #isDeleteSuccess:Z
    .end local v21           #nCover:I
    .end local v24           #pos:I
    .end local v27           #size:I
    :cond_1
    :goto_2
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$500()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 828
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$500()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    .line 829
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/album/helper/DeleteManager;->access$502(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/modules/collection/Collection;

    .line 835
    :goto_3
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateRotationInformation(Landroid/content/Context;)V

    .line 837
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 598
    .end local v20           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 617
    .restart local v19       #isDeleteSuccess:Z
    .restart local v20       #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .restart local v21       #nCover:I
    .restart local v24       #pos:I
    .restart local v27       #size:I
    :cond_3
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v15

    .line 619
    .restart local v15       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v15, :cond_a

    if-nez v18, :cond_a

    const/4 v3, 0x1

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-ne v3, v4, :cond_a

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/FavoritesCollection;

    if-eqz v3, :cond_5

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 609
    :cond_4
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 626
    :cond_5
    new-instance v2, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .local v2, collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 633
    .restart local v8       #bundle:Landroid/os/Bundle;
    const-string v3, "folder_type"

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v3, "key_bucket_id"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v3, "key_folder_name"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v3, "key_BurstShot_CoverFilePath"

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v8}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 640
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 641
    .local v10, burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v11

    .line 643
    .local v11, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    if-ge v13, v11, :cond_6

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 647
    const/16 v19, 0x0

    .line 658
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    const/4 v3, -0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_7

    .line 660
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 661
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v17

    .line 662
    .restart local v17       #imagePath:Ljava/lang/String;
    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 664
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyBurstFolder(Ljava/lang/String;)Z

    .line 668
    .end local v17           #imagePath:Ljava/lang/String;
    :cond_7
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->release()V

    goto/16 :goto_4

    .line 650
    :cond_8
    invoke-virtual {v10, v13}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v9

    .line 651
    .local v9, burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 653
    move/from16 v21, v13

    .line 643
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 656
    :cond_9
    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v13}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto :goto_6

    .line 672
    .end local v2           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v10           #burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v11           #count:I
    .end local v13           #i:I
    :cond_a
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_b

    if-eqz v15, :cond_b

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 674
    move/from16 v21, v24

    .line 675
    goto/16 :goto_4

    .line 677
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 678
    if-nez v18, :cond_4

    if-eqz v15, :cond_4

    .line 680
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v17

    .line 681
    .restart local v17       #imagePath:Ljava/lang/String;
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyBurstFolder(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 703
    .end local v15           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v17           #imagePath:Ljava/lang/String;
    .end local v19           #isDeleteSuccess:Z
    .end local v21           #nCover:I
    .end local v24           #pos:I
    .end local v27           #size:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 704
    .local v28, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 706
    const/16 v23, -0x1

    .line 707
    .local v23, oldBestPos:I
    const/16 v22, 0x0

    .line 708
    .local v22, newBestPos:I
    const/16 v25, 0x0

    .line 711
    .local v25, resetBest:Z
    const/4 v3, 0x1

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_f

    .line 712
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 713
    .local v24, pos:Ljava/lang/Integer;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v15

    .line 714
    .restart local v15       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v15, :cond_d

    .line 716
    const/4 v3, 0x1

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-ne v3, v4, :cond_e

    .line 717
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 720
    :cond_e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, v22

    if-ne v3, v0, :cond_d

    .line 721
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 726
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v24           #pos:Ljava/lang/Integer;
    :cond_f
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 728
    .restart local v24       #pos:Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 805
    .end local v24           #pos:Ljava/lang/Integer;
    :cond_11
    const/4 v3, 0x1

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 808
    :try_start_0
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v15

    .line 809
    .restart local v15       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v15, :cond_1a

    .line 811
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    .line 812
    .local v10, burstList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    invoke-virtual {v10}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v3

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 814
    invoke-virtual {v10}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->startRequery()Z

    .line 815
    invoke-virtual {v10}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->expand()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 821
    .end local v10           #burstList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    .end local v15           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v12

    .line 822
    .local v12, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doInBackground] expand burst fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 729
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v24       #pos:Ljava/lang/Integer;
    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v15

    .line 731
    .restart local v15       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v15, :cond_18

    if-nez v18, :cond_18

    const/4 v3, 0x1

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-ne v3, v4, :cond_18

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/FavoritesCollection;

    if-eqz v3, :cond_13

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v4}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto/16 :goto_8

    .line 738
    :cond_13
    new-instance v2, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .restart local v2       #collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 745
    .restart local v8       #bundle:Landroid/os/Bundle;
    const-string v3, "folder_type"

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v3, "key_bucket_id"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v3, "key_folder_name"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v3, "key_BurstShot_CoverFilePath"

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v8}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 751
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 752
    .local v10, burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v11

    .restart local v11       #count:I
    const/16 v21, 0x0

    .line 753
    .restart local v21       #nCover:I
    const/16 v19, 0x1

    .line 754
    .restart local v19       #isDeleteSuccess:Z
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_9
    if-ge v13, v11, :cond_14

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 758
    const/16 v19, 0x0

    .line 769
    :cond_14
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_15

    .line 771
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 772
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v17

    .line 773
    .restart local v17       #imagePath:Ljava/lang/String;
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 775
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyBurstFolder(Ljava/lang/String;)Z

    .line 779
    .end local v17           #imagePath:Ljava/lang/String;
    :cond_15
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->release()V

    goto/16 :goto_8

    .line 761
    :cond_16
    invoke-virtual {v10, v13}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v9

    .line 762
    .restart local v9       #burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 764
    move/from16 v21, v13

    .line 754
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 767
    :cond_17
    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v13}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto :goto_a

    .line 783
    .end local v2           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v10           #burstList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v11           #count:I
    .end local v13           #i:I
    .end local v19           #isDeleteSuccess:Z
    .end local v21           #nCover:I
    :cond_18
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, v23

    if-ne v3, v0, :cond_19

    if-eqz v15, :cond_19

    .line 784
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    .line 785
    .local v10, burstList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    if-eqz v10, :cond_19

    if-eqz v20, :cond_19

    .line 787
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v16

    .line 788
    .local v16, imageNewBest:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v16, :cond_19

    .line 790
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v3}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->setBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    .line 794
    .end local v10           #burstList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    .end local v16           #imageNewBest:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v4}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 795
    if-eqz v15, :cond_10

    .line 797
    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v17

    .line 798
    .restart local v17       #imagePath:Ljava/lang/String;
    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 800
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyBurstFolder(Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 819
    .end local v17           #imagePath:Ljava/lang/String;
    .end local v24           #pos:Ljava/lang/Integer;
    :cond_1a
    :try_start_1
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[doInBackground] image is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 832
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v22           #newBestPos:I
    .end local v23           #oldBestPos:I
    .end local v25           #resetBest:Z
    .end local v28           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 477
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isBurstFolder(Ljava/lang/String;)Z
    .locals 3
    .parameter "imagepath"

    .prologue
    const/4 v1, 0x0

    .line 513
    if-nez p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 516
    :cond_1
    const-string v0, ".*/DCIM/[0-9]+BURST/.*"

    .line 517
    .local v0, pattern:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 508
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

    .line 874
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 875
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->cancelDeleting()V

    .line 877
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 880
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 887
    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 888
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 889
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    .line 890
    :cond_0
    return-void

    .line 884
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

    .line 849
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 850
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 851
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteEnd()V

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 853
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_1

    .line 855
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v1, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 856
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 862
    :goto_0
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 863
    return-void

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 477
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/high16 v3, 0x12

    .line 560
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    .line 568
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 570
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 571
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 572
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteStart()V

    .line 573
    :cond_0
    return-void

    .line 566
    .end local v0           #callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
