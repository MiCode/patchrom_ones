.class Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;
.super Ljava/lang/Thread;
.source "MfFragmentMainLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeImageThread"
.end annotation


# static fields
.field static final CONTINUOUS_SHOT_DEFAULT_COVER_FILE_NAME:Ljava/lang/String; = "/IMAG0002_COVER.jpg"

.field static final KEY_CAMERA_FILE_PATH:Ljava/lang/String; = "camera_last_file_path"

.field static final KEY_CAMERA_MIMETYPE:Ljava/lang/String; = "camera_last_file_mime"

.field static final SOURCE_CAMERA_CONTINUOUS:I = 0x1002

.field static final SOURCE_CAMERA_PREVIEW:I = 0x1001

.field static final SOURCE_PREVIEW:I = 0x1003

.field private static final TAG:Ljava/lang/String; = "DecodeImageThread"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFilePath:Ljava/lang/String;

.field private mFileUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mSourceType:I

.field private mType:I

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "intent"
    .parameter "type"

    .prologue
    .line 684
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    .line 685
    const-string v0, "DecodeImageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 686
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    .line 687
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mIntent:Landroid/content/Intent;

    .line 688
    iput p4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    .line 689
    return-void
.end method

.method private decode(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 23
    .parameter "context"
    .parameter "fileUri"
    .parameter "filePath"

    .prologue
    .line 787
    if-nez p2, :cond_1

    .line 788
    const/4 v2, 0x0

    .line 870
    :cond_0
    :goto_0
    return-object v2

    .line 791
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 792
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 794
    .local v17, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 795
    .local v8, d:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v11, 0x0

    .line 798
    .local v11, fileStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 800
    .local v9, dm:Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 801
    .local v21, screenW:I
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 802
    .local v20, screenH:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 804
    .local v19, scheme:Ljava/lang/String;
    if-eqz v19, :cond_3

    const/4 v7, 0x1

    const-string v22, "content"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v22

    if-ne v7, v0, :cond_3

    .line 805
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    move-object v12, v11

    .line 815
    .end local v11           #fileStream:Ljava/io/InputStream;
    .local v12, fileStream:Ljava/io/InputStream;
    :goto_1
    :try_start_1
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 817
    .local v13, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 818
    const/4 v7, 0x0

    invoke-static {v12, v7, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 819
    iget v5, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 820
    .local v5, srcBmpW:I
    iget v6, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 822
    .local v6, srcBmpH:I
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 824
    if-eqz v19, :cond_5

    const/4 v7, 0x1

    const-string v22, "content"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v22

    if-ne v7, v0, :cond_5

    .line 825
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v11

    .line 835
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v11       #fileStream:Ljava/io/InputStream;
    :goto_2
    move/from16 v0, v21

    if-gt v5, v0, :cond_2

    move/from16 v0, v20

    if-le v6, v0, :cond_8

    .line 836
    :cond_2
    const/16 v18, 0x1

    .line 837
    .local v18, sampleSize:I
    move v15, v5

    .line 838
    .local v15, originalWidth:I
    move v14, v6

    .line 839
    .local v14, originalHeight:I
    :goto_3
    move/from16 v0, v21

    if-le v15, v0, :cond_7

    move/from16 v0, v20

    if-le v14, v0, :cond_7

    .line 840
    shl-int/lit8 v18, v18, 0x1

    .line 841
    shr-int/lit8 v15, v15, 0x1

    .line 842
    shr-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 807
    .end local v5           #srcBmpW:I
    .end local v6           #srcBmpH:I
    .end local v13           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #originalHeight:I
    .end local v15           #originalWidth:I
    .end local v18           #sampleSize:I
    :cond_3
    if-eqz v19, :cond_4

    const/4 v7, 0x1

    :try_start_2
    const-string v22, "file"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v22

    if-ne v7, v0, :cond_4

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v16

    .line 809
    .local v16, path:Ljava/lang/String;
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 810
    .end local v11           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_1

    .line 812
    .end local v12           #fileStream:Ljava/io/InputStream;
    .end local v16           #path:Ljava/lang/String;
    .restart local v11       #fileStream:Ljava/io/InputStream;
    :cond_4
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v11           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_1

    .line 827
    .restart local v5       #srcBmpW:I
    .restart local v6       #srcBmpH:I
    .restart local v13       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    if-eqz v19, :cond_6

    const/4 v7, 0x1

    :try_start_3
    const-string v22, "file"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v22

    if-ne v7, v0, :cond_6

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v16

    .line 829
    .restart local v16       #path:Ljava/lang/String;
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 830
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v11       #fileStream:Ljava/io/InputStream;
    goto :goto_2

    .line 832
    .end local v11           #fileStream:Ljava/io/InputStream;
    .end local v16           #path:Ljava/lang/String;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    :cond_6
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v11       #fileStream:Ljava/io/InputStream;
    goto :goto_2

    .line 844
    .restart local v14       #originalHeight:I
    .restart local v15       #originalWidth:I
    .restart local v18       #sampleSize:I
    :cond_7
    :try_start_4
    move/from16 v0, v18

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 846
    .end local v14           #originalHeight:I
    .end local v15           #originalWidth:I
    .end local v18           #sampleSize:I
    :cond_8
    const/4 v7, 0x0

    iput-boolean v7, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 847
    const/4 v7, 0x0

    invoke-static {v11, v7, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 852
    .local v4, bmp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_b

    .line 853
    new-instance v2, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 864
    .end local v8           #d:Landroid/graphics/drawable/BitmapDrawable;
    .local v2, d:Landroid/graphics/drawable/BitmapDrawable;
    :goto_4
    if-eqz v11, :cond_0

    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 865
    :catch_0
    move-exception v10

    .line 866
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 859
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #srcBmpW:I
    .end local v6           #srcBmpH:I
    .end local v9           #dm:Landroid/util/DisplayMetrics;
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v19           #scheme:Ljava/lang/String;
    .end local v20           #screenH:I
    .end local v21           #screenW:I
    .restart local v8       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v10

    .line 860
    .local v10, e:Ljava/lang/Exception;
    :goto_5
    :try_start_6
    const-string v7, "DecodeImageThread"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v7, v0, v10}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 864
    if-eqz v11, :cond_9

    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_9
    move-object v2, v8

    .line 867
    .end local v8           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 865
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v8       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v10

    .line 866
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v8

    .line 868
    .end local v8           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 863
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #e:Ljava/io/IOException;
    .restart local v8       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v7

    .line 864
    :goto_6
    if-eqz v11, :cond_a

    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 867
    :cond_a
    :goto_7
    throw v7

    .line 865
    :catch_3
    move-exception v10

    .line 866
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 863
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #fileStream:Ljava/io/InputStream;
    .restart local v9       #dm:Landroid/util/DisplayMetrics;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    .restart local v19       #scheme:Ljava/lang/String;
    .restart local v20       #screenH:I
    .restart local v21       #screenW:I
    :catchall_1
    move-exception v7

    move-object v11, v12

    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v11       #fileStream:Ljava/io/InputStream;
    goto :goto_6

    .line 859
    .end local v11           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    :catch_4
    move-exception v10

    move-object v11, v12

    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v11       #fileStream:Ljava/io/InputStream;
    goto :goto_5

    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    .restart local v5       #srcBmpW:I
    .restart local v6       #srcBmpH:I
    .restart local v13       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_b
    move-object v2, v8

    .end local v8           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_4
.end method

.method private decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 18
    .parameter "context"
    .parameter "filePath"
    .parameter "mimeType"

    .prologue
    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 741
    .local v12, res:Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 743
    .local v10, metrics:Landroid/util/DisplayMetrics;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 745
    .local v11, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 746
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 747
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 748
    .local v16, srcBmpW:I
    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 750
    .local v15, srcBmpH:I
    iget v14, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 751
    .local v14, screenW:I
    iget v13, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 753
    .local v13, screenH:I
    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v3, 0xc

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 760
    .local v1, tempItem:Lcom/htc/sunny2/common/CacheItem;
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 761
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 762
    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 763
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 764
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 765
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 766
    iput v14, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 767
    iput v13, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 769
    new-instance v17, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 770
    .local v17, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    .line 771
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 772
    const/16 v3, 0x22

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 776
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskSetup()V

    .line 777
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskIterate()Z

    move-result v3

    if-nez v3, :cond_0

    .line 778
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskEnd()V

    .line 779
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->release()V

    .line 781
    new-instance v2, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    iget-object v4, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object v3, v12

    move/from16 v5, v16

    move v6, v15

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IILjava/lang/String;)V

    .line 782
    .local v2, d:Landroid/graphics/drawable/BitmapDrawable;
    return-object v2
.end method

.method private updateSourceType(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 692
    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    .line 694
    const/4 v2, 0x0

    .line 695
    .local v2, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 696
    .local v1, fileUri:Landroid/net/Uri;
    iget v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/16 v4, 0x1001

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/16 v4, 0x1003

    if-ne v3, v4, :cond_4

    .line 698
    :cond_0
    const-string v3, "camera_last_file_path"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 701
    if-eqz v2, :cond_2

    const-string v3, "BURST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 702
    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    .line 703
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    .line 736
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    if-nez v2, :cond_3

    .line 709
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 725
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 727
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFilePath:Ljava/lang/String;

    .line 729
    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    .line 730
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    goto :goto_0

    .line 713
    :cond_4
    iget v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/16 v4, 0x1002

    if-ne v3, v4, :cond_5

    .line 714
    const-string v3, "camera_last_file_path"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    if-eqz v2, :cond_1

    .line 717
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 718
    .local v0, changeIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/IMAG0002_COVER.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    goto :goto_1

    .line 722
    .end local v0           #changeIndex:I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 732
    :cond_6
    if-eqz v1, :cond_1

    .line 733
    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    .line 734
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 874
    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->setPriority(I)V

    .line 876
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mIntent:Landroid/content/Intent;

    .line 877
    .local v2, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    .line 879
    .local v0, activity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    const-string v6, "camera_last_file_mime"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, mimeType:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 883
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 885
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image/jp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 887
    :cond_3
    const-string v6, "DecodeImageThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skip decode full screen preview photo, mimeType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->updateSourceType(Landroid/content/Context;Landroid/content/Intent;)V

    .line 893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 894
    .local v4, startTime:J
    const/4 v1, 0x0

    .line 895
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 900
    :pswitch_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v3}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 910
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$000(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 911
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$100(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 912
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$200(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 897
    :pswitch_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->decode(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 898
    goto :goto_1

    .line 895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
