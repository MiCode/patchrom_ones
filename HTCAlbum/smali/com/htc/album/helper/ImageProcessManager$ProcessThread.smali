.class Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
.super Ljava/lang/Thread;
.source "ImageProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;
    }
.end annotation


# instance fields
.field private cancelProcess:Z

.field private currentProcessedBMP:Landroid/graphics/Bitmap;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mIsSDCardFull:Z

.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1062
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1015
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 1016
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 1017
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1018
    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    .line 1019
    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    .line 1020
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1063
    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 1065
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setPriority(I)V

    .line 1066
    const-string v0, "ImageProcessor"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setName(Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/ObserverAdapter;)V
    .locals 2
    .parameter
    .parameter "activity"
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1046
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1015
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 1016
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 1017
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1018
    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    .line 1019
    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    .line 1020
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1047
    iput-object p3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 1048
    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 1049
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1050
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1057
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setPriority(I)V

    .line 1058
    const-string v0, "ImageProcessor"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setName(Ljava/lang/String;)V

    .line 1059
    return-void

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_0
.end method

.method private DoRun(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 23
    .parameter "image"
    .parameter "dataPath"
    .parameter "mimeType"
    .parameter "lDataSize"
    .parameter "lModifyTime"

    .prologue
    .line 1708
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1714
    const/4 v11, 0x0

    .line 1716
    .local v11, fos:Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 1717
    .local v18, root:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2200(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v2, 0x0

    const-string v3, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1202(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1721
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1200(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v18           #root:Ljava/io/File;
    .local v19, root:Ljava/io/File;
    move-object/from16 v18, v19

    .line 1751
    .end local v19           #root:Ljava/io/File;
    .restart local v18       #root:Ljava/io/File;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1753
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1756
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 1759
    move-object/from16 v10, p2

    .line 1760
    .local v10, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1762
    .local v9, fileName:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 1763
    .local v16, lastIndexOfSlash:I
    const-string v1, "."

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 1764
    .local v15, lastIndexOfDot:I
    if-ltz v16, :cond_9

    .line 1766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$802(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1774
    :goto_1
    add-int/lit8 v17, v16, 0x1

    .line 1775
    .local v17, nextCharIndexOfLastSlash:I
    move/from16 v0, v17

    if-lt v15, v0, :cond_1

    .line 1778
    move/from16 v0, v17

    invoke-virtual {v10, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 1779
    .local v22, tempFileName:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1781
    move-object/from16 v9, v22

    .line 1794
    .end local v22           #tempFileName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1795
    .local v20, strFilenameAtTheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1798
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 1801
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1502(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1811
    :goto_2
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1812
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1814
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1816
    :cond_3
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .local v12, fos:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v1, v2, v3, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1818
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 1819
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 1821
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1822
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v12

    .line 1832
    .end local v8           #file:Ljava/io/File;
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v15           #lastIndexOfDot:I
    .end local v16           #lastIndexOfSlash:I
    .end local v17           #nextCharIndexOfLastSlash:I
    .end local v18           #root:Ljava/io/File;
    .end local v20           #strFilenameAtTheSameFolder:Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 1725
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #root:Ljava/io/File;
    :cond_5
    if-eqz p1, :cond_8

    .line 1727
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v13

    .line 1728
    .local v13, is3D:Z
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v14

    .line 1729
    .local v14, isInked:Z
    if-eqz v13, :cond_6

    .line 1731
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const-string v2, "/mnt/sdcard/3DFlatten"

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1202(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1742
    :goto_4
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1200(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v18           #root:Ljava/io/File;
    .restart local v19       #root:Ljava/io/File;
    move-object/from16 v18, v19

    .line 1743
    .end local v19           #root:Ljava/io/File;
    .restart local v18       #root:Ljava/io/File;
    goto/16 :goto_0

    .line 1733
    :cond_6
    if-eqz v14, :cond_7

    .line 1735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const-string v2, "/mnt/sdcard/InkMerge"

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1202(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1825
    .end local v13           #is3D:Z
    .end local v14           #isInked:Z
    :catch_0
    move-exception v7

    .line 1827
    .local v7, e:Ljava/lang/Exception;
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1802(Lcom/htc/album/helper/ImageProcessManager;Z)Z

    .line 1828
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]exception occured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1739
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v13       #is3D:Z
    .restart local v14       #isInked:Z
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread]no image info to set saving root folder."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1746
    .end local v13           #is3D:Z
    .end local v14           #isInked:Z
    :cond_8
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread]image is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1770
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v15       #lastIndexOfDot:I
    .restart local v16       #lastIndexOfSlash:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1200(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$802(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .restart local v17       #nextCharIndexOfLastSlash:I
    .restart local v20       #strFilenameAtTheSameFolder:Ljava/lang/String;
    :cond_a
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p6

    move-wide/from16 v5, p4

    .line 1805
    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v21

    .line 1806
    .local v21, strHashFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1200(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1502(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 1825
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v21           #strHashFileName:Ljava/lang/String;
    .restart local v8       #file:Ljava/io/File;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_5
.end method

.method private DoRun(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .parameter "dataPath"
    .parameter "mimeType"
    .parameter "lDataSize"
    .parameter "lModifyTime"

    .prologue
    .line 1836
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->DoRun(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1837
    return-void
.end method

.method static synthetic access$2300(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1842
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setPriority(I)V

    .line 1843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    .line 1844
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;->onProcessCancel()V

    .line 1848
    :cond_0
    return-void
.end method

.method public checkFileExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "strPath"

    .prologue
    .line 1137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1144
    :goto_0
    return v1

    .line 1139
    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][checkFileExist]: fileCheck.exists()+"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v0, fileCheck:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1142
    .local v1, isExist:Z
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][checkFileExist]: fileCheck.exists()-"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkSDCardFull()Z
    .locals 2

    .prologue
    .line 1202
    const-wide/32 v0, 0x500000

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    .line 1203
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-eqz v0, :cond_0

    .line 1205
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][checkSDCardFull]: Storage Size small than 5242880 byte, skip save to 2D."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    return v0
.end method

.method public clearCache(Ljava/lang/String;JJ)Z
    .locals 24
    .parameter "strTargetPath"
    .parameter "lKeepTime"
    .parameter "lExcuteDuration"

    .prologue
    .line 1071
    const-wide/16 p2, 0x0

    .line 1073
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1075
    :cond_0
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][clearCache]: clearcache parameter NG !"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/4 v6, 0x0

    .line 1125
    :goto_0
    return v6

    .line 1079
    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ImageProcessManager][clearCache]: Start, CurTime: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1082
    .local v14, lTimeStart:J
    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    sub-long v10, v6, p2

    .line 1083
    .local v10, lCurTime:J
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v3

    .line 1084
    .local v3, uriBase:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1085
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 1088
    .local v16, nCount:I
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "date_modified"

    aput-object v7, v4, v6

    .line 1090
    .local v4, columns:[Ljava/lang/String;
    const-string v5, ""

    .line 1091
    .local v5, szWhere:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data like \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "date_modified"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1093
    const/4 v8, 0x0

    .line 1096
    .local v8, cur:Landroid/database/Cursor;
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "date_modified"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1097
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-nez v6, :cond_3

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1099
    const-string v6, "_data"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1100
    .local v17, strData:Ljava/lang/String;
    const-string v6, "_id"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1101
    .local v18, strId:Ljava/lang/String;
    const-string v6, "date_modified"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1102
    .local v12, lModiftTime:J
    new-instance v6, Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1103
    .local v19, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ImageProcessManager][clearCache]: Delete - ID: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Data: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", URI: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", ModifyTime: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1108
    add-int/lit8 v16, v16, 0x1

    .line 1111
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v6, v14

    cmp-long v6, v6, p4

    if-ltz v6, :cond_2

    .line 1120
    .end local v12           #lModiftTime:J
    .end local v17           #strData:Ljava/lang/String;
    .end local v18           #strId:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1123
    :cond_4
    :goto_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ImageProcessManager][clearCache]: End, Delete "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " temp files, Use Time: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1114
    :catch_0
    move-exception v9

    .line 1116
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][clearCache]: delete cache NG !"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
.end method

.method public doProcessImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "image"

    .prologue
    .line 1213
    instance-of v0, p1, Lcom/htc/sunny2/IMediaData;

    .line 1214
    .local v0, isIMediaData:Z
    if-eqz v0, :cond_0

    .line 1216
    check-cast p1, Lcom/htc/sunny2/IMediaData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Lcom/htc/sunny2/IMediaData;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1218
    :goto_0
    return-object v1

    .restart local p1
    :cond_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public doProcessImage(Lcom/htc/sunny2/IMediaData;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "image"

    .prologue
    .line 1223
    const/4 v8, 0x0

    .line 1224
    .local v8, is3D:Z
    const/4 v9, 0x0

    .line 1225
    .local v9, isInked:Z
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v15, :cond_1

    move-object/from16 v15, p1

    .line 1227
    check-cast v15, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v8

    move-object/from16 v15, p1

    .line 1228
    check-cast v15, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v9

    .line 1235
    :goto_0
    if-eqz v8, :cond_10

    .line 1238
    const/4 v14, -0x1

    .line 1239
    .local v14, ret:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    .line 1240
    .local v5, handle:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    .line 1241
    .local v4, filePath:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v11

    .line 1242
    .local v11, mimeType:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v10

    .line 1243
    .local v10, mediaSourceType:I
    if-nez v10, :cond_5

    .line 1246
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_4

    .line 1248
    if-eqz v11, :cond_0

    .line 1250
    const-string v15, "image/jps"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1252
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 1253
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v14

    .line 1360
    :cond_0
    :goto_1
    if-nez v14, :cond_d

    .line 1362
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const-wide/16 v16, 0x7d0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v14

    goto :goto_1

    .line 1232
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #handle:I
    .end local v10           #mediaSourceType:I
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v14           #ret:I
    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]image not instance of IImage"

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1255
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v5       #handle:I
    .restart local v10       #mediaSourceType:I
    .restart local v11       #mimeType:Ljava/lang/String;
    .restart local v14       #ret:I
    :cond_2
    const-string v15, "image/mpo"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1258
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v14

    .line 1259
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v12

    .line 1260
    .local v12, mpoPhotoCount:I
    if-lez v12, :cond_3

    .line 1262
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_1

    .line 1266
    :cond_3
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mpo file contains no photos!"

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1273
    .end local v12           #mpoPhotoCount:I
    :cond_4
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]FilePath is empty"

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1276
    :cond_5
    const/4 v15, 0x1

    if-ne v10, v15, :cond_a

    .line 1279
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 1280
    .local v13, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v13, :cond_9

    .line 1282
    if-eqz v11, :cond_8

    .line 1284
    const-string v15, "image/jps"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1286
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 1289
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    goto/16 :goto_1

    .line 1291
    :catch_0
    move-exception v2

    .line 1293
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1296
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_6
    const-string v15, "image/mpo"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1301
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I

    move-result v14

    .line 1302
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v12

    .line 1303
    .restart local v12       #mpoPhotoCount:I
    if-lez v12, :cond_7

    .line 1305
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1312
    .end local v12           #mpoPhotoCount:I
    :catch_1
    move-exception v2

    .line 1314
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1309
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .restart local v12       #mpoPhotoCount:I
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mpo file contains no photos!"

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1322
    .end local v12           #mpoPhotoCount:I
    :cond_8
    :try_start_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result v14

    goto/16 :goto_1

    .line 1324
    :catch_2
    move-exception v2

    .line 1326
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1332
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_9
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]MediaData ParcelFileDescriptor is null"

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1335
    .end local v13           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_a
    const/4 v15, 0x2

    if-ne v10, v15, :cond_c

    .line 1338
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 1339
    .local v7, is:Ljava/io/InputStream;
    if-eqz v7, :cond_b

    .line 1343
    :try_start_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v7, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    move-result v14

    goto/16 :goto_1

    .line 1345
    :catch_3
    move-exception v2

    .line 1347
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1352
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_b
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]MediaData InputStream is null"

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1357
    .end local v7           #is:Ljava/io/InputStream;
    :cond_c
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]Unknown source type"

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1365
    :cond_d
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1400
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #handle:I
    .end local v10           #mediaSourceType:I
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v14           #ret:I
    :cond_e
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-nez v15, :cond_f

    .line 1403
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HtcAlbum][ImageProcessManager][doProcessImage IMediaData]ScaladoLib2 FINISH bmp == null"

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    return-object v15

    .line 1369
    :cond_10
    if-eqz v9, :cond_e

    .line 1374
    const/4 v6, 0x0

    .line 1375
    .local v6, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v15, :cond_11

    move-object/from16 v6, p1

    .line 1377
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1380
    :cond_11
    if-eqz v6, :cond_e

    .line 1382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;
    invoke-static {v15}, Lcom/htc/album/helper/ImageProcessManager;->access$700(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-result-object v15

    new-instance v16, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->setMergeInfo(Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;
    invoke-static {v15}, Lcom/htc/album/helper/ImageProcessManager;->access$700(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->asyncMerge()Z

    .line 1384
    monitor-enter p0

    .line 1388
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1394
    :goto_3
    :try_start_6
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v15

    .line 1390
    :catch_4
    move-exception v3

    .line 1392
    .local v3, e1:Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method public doProcessImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "path"
    .parameter "type"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1412
    const/4 v4, 0x0

    .line 1413
    .local v4, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    .line 1414
    .local v5, tempHandle:I
    const/4 v3, -0x1

    .line 1415
    .local v3, ret:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 1416
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v7, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 1417
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 1419
    move-object v0, p1

    .line 1420
    .local v0, filePath:Ljava/lang/String;
    move-object v1, p2

    .line 1422
    .local v1, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1424
    if-eqz v1, :cond_0

    .line 1426
    const-string v6, "image/jps"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1428
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 1429
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    .line 1452
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 1454
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v5, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v3

    goto :goto_0

    .line 1431
    :cond_1
    const-string v6, "image/mpo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1434
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    .line 1435
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v2

    .line 1436
    .local v2, mpoPhotoCount:I
    if-lez v2, :cond_2

    .line 1438
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_0

    .line 1442
    :cond_2
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage]mpo file contains no photos!"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1449
    .end local v2           #mpoPhotoCount:I
    :cond_3
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage]FilePath is empty"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1457
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1458
    const/4 v5, 0x0

    .line 1459
    if-nez v4, :cond_5

    .line 1462
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HtcAlbum][ImageProcessManager][doProcessImage]ScaladoLib2 FINISH bmp == null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :cond_5
    return-object v4
.end method

.method public finished()V
    .locals 12

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1852
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1800(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1885
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1887
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 1889
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]mActivity is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    .line 2009
    :goto_1
    return-void

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1900(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1871
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1900(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1873
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v1, 0x440001

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 1879
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v1, 0x44

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    goto :goto_0

    .line 1895
    :cond_3
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1897
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]resultDataPath is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto :goto_1

    .line 1902
    :cond_4
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2402(Lcom/htc/album/helper/ImageProcessManager;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1904
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2400(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1905
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]resultUri is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1910
    :cond_5
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 1912
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1913
    .local v9, cv:Landroid/content/ContentValues;
    const-string v0, "orientation"

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1914
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2400(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1925
    .end local v9           #cv:Landroid/content/ContentValues;
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-eq v0, v6, :cond_7

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-eq v0, v5, :cond_7

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 1928
    :cond_7
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$3;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$3;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1976
    :cond_8
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_9

    .line 1978
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 1980
    :cond_9
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$2400(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/helper/ImageProcessManager;->handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2007
    :goto_3
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_1

    .line 1917
    :cond_a
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 1919
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1920
    .restart local v9       #cv:Landroid/content/ContentValues;
    const-string v0, "orientation"

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1921
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2400(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1984
    .end local v9           #cv:Landroid/content/ContentValues;
    :cond_b
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_c

    .line 1986
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]mActivity is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_1

    .line 1993
    :cond_c
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1700(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1995
    .local v10, i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v0, v10, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    if-eqz v0, :cond_d

    move-object v0, v10

    .line 1997
    check-cast v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_d

    move-object v0, v10

    check-cast v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_d

    move-object v0, v10

    .line 1999
    check-cast v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    .end local v10           #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, v10, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    goto :goto_4

    .line 2004
    :cond_e
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #calls: Lcom/htc/album/helper/ImageProcessManager;->shareMultiProcessedMedia()V
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2900(Lcom/htc/album/helper/ImageProcessManager;)V

    goto/16 :goto_3
.end method

.method public generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 1181
    const/4 v3, 0x0

    .line 1184
    .local v3, x2:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 1185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, candidate:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1188
    .local v1, exists:Z
    if-nez v1, :cond_0

    .line 1194
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1195
    .local v2, strNewFilename:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1197
    return-object v2
.end method

.method public makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 5
    .parameter "strFilePath"
    .parameter "strModifyTime"
    .parameter "lFileSize"

    .prologue
    .line 1130
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1131
    .local v0, hash:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    const-string v1, "%08X-%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2013
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    #calls: Lcom/htc/album/helper/ImageProcessManager;->setKeepScreenOn(Landroid/app/Activity;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$3000(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Z)V

    .line 2027
    iput-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 2028
    iput-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 2029
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2031
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2032
    iput-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 2034
    :cond_1
    return-void
.end method

.method public run()V
    .locals 32

    .prologue
    .line 1471
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;->onProcessStart()V

    .line 1479
    :cond_0
    const-string v3, "/mnt/sdcard/3DFlatten"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x5dc

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 1480
    const-string v3, "/mnt/sdcard/InkMerge"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x5dc

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 1482
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkSDCardFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1484
    const-string v3, "/mnt/sdcard/3DFlatten"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 1485
    const-string v3, "/mnt/sdcard/InkMerge"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkSDCardFull()Z

    .line 1489
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-nez v2, :cond_5

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v18, v0

    .line 1493
    .local v18, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->position:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1100(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v17

    .line 1497
    .local v17, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v17, :cond_3

    .line 1499
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_2
    :goto_0
    return-void

    .line 1503
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v18       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_3
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v19

    .line 1504
    .local v19, is3D:Z
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v21

    .line 1506
    .local v21, isInked:Z
    if-eqz v19, :cond_6

    .line 1508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const-string v3, "/mnt/sdcard/3DFlatten"

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1202(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1521
    :goto_1
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v26

    .line 1522
    .local v26, strFilename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1200(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1523
    .local v29, strFullPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkFileExist(Ljava/lang/String;)Z

    move-result v20

    .line 1525
    .local v20, isFileExist:Z
    if-eqz v20, :cond_9

    .line 1530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1533
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1534
    .local v12, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$802(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1536
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1537
    .local v27, strFilenameAttheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 1543
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1502(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1675
    .end local v12           #fileName:Ljava/lang/String;
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v19           #is3D:Z
    .end local v20           #isFileExist:Z
    .end local v21           #isInked:Z
    .end local v26           #strFilename:Ljava/lang/String;
    .end local v27           #strFilenameAttheSameFolder:Ljava/lang/String;
    .end local v29           #strFullPath:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$000(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-nez v2, :cond_14

    .line 1677
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->finished()V

    goto/16 :goto_0

    .line 1510
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v18       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v19       #is3D:Z
    .restart local v21       #isInked:Z
    :cond_6
    if-eqz v21, :cond_7

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const-string v3, "/mnt/sdcard/InkMerge"

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1202(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1516
    :cond_7
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image not 3D or image not inked"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1546
    .restart local v12       #fileName:Ljava/lang/String;
    .restart local v20       #isFileExist:Z
    .restart local v26       #strFilename:Ljava/lang/String;
    .restart local v27       #strFilenameAttheSameFolder:Ljava/lang/String;
    .restart local v29       #strFullPath:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, v29

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1502(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1553
    .end local v12           #fileName:Ljava/lang/String;
    .end local v27           #strFilenameAttheSameFolder:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1554
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v8

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    invoke-direct/range {v2 .. v9}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->DoRun(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_2

    .line 1560
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v19           #is3D:Z
    .end local v20           #isFileExist:Z
    .end local v21           #isInked:Z
    .end local v26           #strFilename:Ljava/lang/String;
    .end local v29           #strFullPath:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->pickerResult:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1600(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "picker_index_list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 1561
    .local v22, pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1702(Lcom/htc/album/helper/ImageProcessManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1562
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 1565
    .local v23, pos:Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkSDCardFull()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-nez v2, :cond_5

    .line 1571
    :cond_c
    new-instance v24, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;-><init>(Lcom/htc/album/helper/ImageProcessManager;)V

    .line 1572
    .local v24, processedIImage:Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v17

    .line 1573
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v17, :cond_b

    .line 1578
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1582
    :cond_e
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1583
    .local v13, filename:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v13, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 1584
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 1585
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 1586
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1700(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1594
    .end local v13           #filename:Ljava/lang/String;
    :cond_f
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v28

    .line 1595
    .local v28, strFilenameHashed:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1200(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1596
    .local v30, strFullPathHashed:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkFileExist(Ljava/lang/String;)Z

    move-result v20

    .line 1598
    .restart local v20       #isFileExist:Z
    if-eqz v20, :cond_11

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1606
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 1609
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1610
    .restart local v12       #fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$802(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1612
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1613
    .restart local v27       #strFilenameAttheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1615
    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 1669
    .end local v12           #fileName:Ljava/lang/String;
    .end local v27           #strFilenameAttheSameFolder:Ljava/lang/String;
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1700(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1622
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1627
    const/4 v14, 0x0

    .line 1629
    .local v14, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1200(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1630
    .local v25, root:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1632
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdir()Z

    .line 1634
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_10

    .line 1638
    const/16 v31, 0x0

    .line 1639
    .local v31, x:I
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1640
    .restart local v12       #fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1641
    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 1642
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 1645
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1648
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 1650
    :cond_13
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1651
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .local v15, fos:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {v2, v3, v4, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1652
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 1653
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1656
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 1659
    .end local v11           #file:Ljava/io/File;
    .end local v12           #fileName:Ljava/lang/String;
    .end local v25           #root:Ljava/io/File;
    .end local v31           #x:I
    :catch_0
    move-exception v10

    .line 1661
    .local v10, e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 1663
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .line 1665
    .local v10, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1679
    .end local v10           #e:Ljava/io/IOException;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v20           #isFileExist:Z
    .end local v22           #pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23           #pos:Ljava/lang/Integer;
    .end local v24           #processedIImage:Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;
    .end local v28           #strFilenameHashed:Ljava/lang/String;
    .end local v30           #strFullPathHashed:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-eqz v2, :cond_2

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1800(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1900(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v2, :cond_15

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v3, 0x440001

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v3, 0x44

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 1692
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1702
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_0

    .line 1663
    .restart local v11       #file:Ljava/io/File;
    .restart local v12       #fileName:Ljava/lang/String;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v18       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v20       #isFileExist:Z
    .restart local v22       #pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23       #pos:Ljava/lang/Integer;
    .restart local v24       #processedIImage:Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;
    .restart local v25       #root:Ljava/io/File;
    .restart local v28       #strFilenameHashed:Ljava/lang/String;
    .restart local v30       #strFullPathHashed:Ljava/lang/String;
    .restart local v31       #x:I
    :catch_2
    move-exception v10

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1659
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method public updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "strPath"
    .parameter "strMimeType"

    .prologue
    const/4 v7, 0x0

    .line 1151
    :try_start_0
    iget-object v8, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-static {v8, p1, p2}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1152
    .local v5, uriImage:Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 1176
    .end local v5           #uriImage:Landroid/net/Uri;
    :goto_0
    return v7

    .line 1157
    .restart local v5       #uriImage:Landroid/net/Uri;
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1158
    .local v6, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v1, v8, v10

    .line 1160
    .local v1, lCurTime:J
    const-string v8, "date_modified"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1162
    iget-object v8, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1163
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1168
    .local v3, nResult:I
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][ImageProcessManager][updateModifyTime]: UpdateTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    const/4 v7, 0x1

    goto :goto_0

    .line 1170
    .end local v1           #lCurTime:J
    .end local v3           #nResult:I
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #uriImage:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1172
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[HTCAlbum][ImageProcessManager][updateModifyTime]: updateModifyTime NG !"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
