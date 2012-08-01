.class Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
.super Ljava/lang/Thread;
.source "PickerMultiItemScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerMultiItemScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultWorker"
.end annotation


# instance fields
.field mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field mCallerIntent:Landroid/content/Intent;

.field mConversionIntent:Landroid/content/Intent;

.field mStop:Z

.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemScene;


# direct methods
.method public constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "adapter"
    .parameter "callerIntent"

    .prologue
    const/4 v1, 0x0

    .line 684
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 680
    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    .line 685
    iput-object p2, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 686
    iput-object p3, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    .line 687
    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    .line 688
    return-void
.end method


# virtual methods
.method public getConversionIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 696
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "[ResultWorker][run] ++"

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    const/16 v23, 0x2b11

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 700
    .local v4, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    new-instance v9, Ljava/util/ArrayList;

    const/16 v22, 0x14

    move/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    .local v9, list3DIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    const/16 v22, 0x14

    move/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 702
    .local v12, listInkIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/ArrayList;

    const/16 v22, 0x14

    move/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 704
    .local v13, listPhotoToProcess:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "request_htc_upload_list"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 706
    .local v17, requestHtcUploadList:Z
    :goto_0
    if-eqz v17, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v11, listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    .line 709
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 711
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 713
    .local v21, totalItems:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v10, listAndroid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    .local v6, flag:I
    const/4 v2, 0x1

    .local v2, FLAG_IMAGE:I
    const/4 v3, 0x2

    .line 716
    .local v3, FLAG_VIDEO:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 718
    .local v16, pos:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 764
    .end local v16           #pos:Ljava/lang/Integer;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 766
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "[ResultWorker][run] Load completed!!"

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    #setter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v23}, Lcom/htc/album/picker/PickerMultiItemScene;->access$502(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/content/Intent;)Landroid/content/Intent;

    .line 768
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    .line 769
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_2

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "3d_image_index_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 773
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_3

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "ink_index_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 777
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_4

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 781
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 782
    .local v15, pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "picker_index_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    if-eqz v17, :cond_c

    .end local v11           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 785
    if-ne v6, v2, :cond_d

    const-string v20, "image/*"

    .line 788
    .local v20, strType:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    .end local v15           #pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20           #strType:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    const/16 v23, 0x2b12

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    const/16 v23, 0x2b10

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 797
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "[ResultWorker][run] --"

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void

    .line 704
    .end local v2           #FLAG_IMAGE:I
    .end local v3           #FLAG_VIDEO:I
    .end local v6           #flag:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10           #listAndroid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v17           #requestHtcUploadList:Z
    .end local v21           #totalItems:I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 706
    .restart local v17       #requestHtcUploadList:Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 721
    .restart local v2       #FLAG_IMAGE:I
    .restart local v3       #FLAG_VIDEO:I
    .restart local v6       #flag:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10       #listAndroid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v11       #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v16       #pos:Ljava/lang/Integer;
    .restart local v21       #totalItems:I
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 723
    .local v18, selectedItem:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v18, :cond_0

    .line 729
    :try_start_0
    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v19

    .line 730
    .local v19, selectedUri:Landroid/net/Uri;
    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v22

    if-nez v22, :cond_a

    .line 732
    new-instance v22, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_8
    :goto_7
    if-eqz v17, :cond_9

    .line 743
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 744
    .local v5, data:Landroid/os/Bundle;
    const-string v22, "com.htc.opensense.upload.URI"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v22, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v22, "com.htc.opensense.upload.TITLE"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v22, "com.htc.opensense.upload.DESCRIPTION"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    .end local v5           #data:Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v22

    if-eqz v22, :cond_b

    move/from16 v22, v3

    :goto_8
    or-int v6, v6, v22

    goto/16 :goto_2

    .line 735
    :cond_a
    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 737
    new-instance v22, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 755
    .end local v19           #selectedUri:Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 758
    .local v14, oom:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ResultWorker][run] Error: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    goto/16 :goto_3

    .end local v14           #oom:Ljava/lang/OutOfMemoryError;
    .restart local v19       #selectedUri:Landroid/net/Uri;
    :cond_b
    move/from16 v22, v2

    .line 753
    goto :goto_8

    .end local v16           #pos:Ljava/lang/Integer;
    .end local v18           #selectedItem:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v19           #selectedUri:Landroid/net/Uri;
    .restart local v15       #pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c
    move-object v11, v10

    .line 783
    goto/16 :goto_4

    .line 785
    .end local v11           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_d
    if-ne v6, v3, :cond_e

    const-string v20, "video/*"

    goto/16 :goto_5

    :cond_e
    const-string v20, "*/*"

    goto/16 :goto_5

    .line 792
    .end local v15           #pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11       #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_f
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "[ResultWorker][run] Loading canceled!!"

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    .line 808
    return-void
.end method
