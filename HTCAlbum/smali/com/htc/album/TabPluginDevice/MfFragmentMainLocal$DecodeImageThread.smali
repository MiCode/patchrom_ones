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
.field static final SOURCE_CAMERA_CONTINUOUS:I = 0x1002

.field static final SOURCE_CAMERA_PREVIEW:I = 0x1001

.field static final SOURCE_PREVIEW:I = 0x1003

.field private static final TAG:Ljava/lang/String; = "DecodeImageThread"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFilePath:Ljava/lang/String;

.field private mFileUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mOrientation:I

.field private mSourceType:I

.field private mType:I

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2
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
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mOrientation:I

    .line 691
    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {p1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$000(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 692
    return-void
.end method

.method private decode(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 23
    .parameter "context"
    .parameter "fileUri"
    .parameter "filePath"

    .prologue
    .line 793
    if-nez p2, :cond_1

    .line 794
    const/4 v2, 0x0

    .line 887
    :cond_0
    :goto_0
    return-object v2

    .line 797
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 798
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 800
    .local v18, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 801
    .local v9, d:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v12, 0x0

    .line 802
    .local v12, fileStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 805
    .local v4, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 807
    .local v10, dm:Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    .line 808
    .local v22, screenW:I
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    .line 809
    .local v21, screenH:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 811
    .local v20, scheme:Ljava/lang/String;
    if-eqz v20, :cond_3

    const/4 v7, 0x1

    const-string v8, "content"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_3

    .line 812
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v12

    move-object v13, v12

    .line 822
    .end local v12           #fileStream:Ljava/io/InputStream;
    .local v13, fileStream:Ljava/io/InputStream;
    :goto_1
    :try_start_1
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 824
    .local v14, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 825
    const/4 v7, 0x0

    invoke-static {v13, v7, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 826
    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 827
    .local v5, srcBmpW:I
    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 829
    .local v6, srcBmpH:I
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 831
    if-eqz v20, :cond_5

    const/4 v7, 0x1

    const-string v8, "content"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_5

    .line 832
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v12

    .line 842
    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    :goto_2
    move/from16 v0, v22

    if-gt v5, v0, :cond_2

    move/from16 v0, v21

    if-le v6, v0, :cond_8

    .line 843
    :cond_2
    const/16 v19, 0x1

    .line 844
    .local v19, sampleSize:I
    move/from16 v16, v5

    .line 845
    .local v16, originalWidth:I
    move v15, v6

    .line 846
    .local v15, originalHeight:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    move/from16 v0, v21

    if-le v15, v0, :cond_7

    .line 847
    shl-int/lit8 v19, v19, 0x1

    .line 848
    shr-int/lit8 v16, v16, 0x1

    .line 849
    shr-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 814
    .end local v5           #srcBmpW:I
    .end local v6           #srcBmpH:I
    .end local v14           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #originalHeight:I
    .end local v16           #originalWidth:I
    .end local v19           #sampleSize:I
    :cond_3
    if-eqz v20, :cond_4

    const/4 v7, 0x1

    :try_start_2
    const-string v8, "file"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_4

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v17

    .line 816
    .local v17, path:Ljava/lang/String;
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 817
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    goto :goto_1

    .line 819
    .end local v13           #fileStream:Ljava/io/InputStream;
    .end local v17           #path:Ljava/lang/String;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    :cond_4
    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    goto :goto_1

    .line 834
    .restart local v5       #srcBmpW:I
    .restart local v6       #srcBmpH:I
    .restart local v14       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    if-eqz v20, :cond_6

    const/4 v7, 0x1

    :try_start_3
    const-string v8, "file"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_6

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v17

    .line 836
    .restart local v17       #path:Ljava/lang/String;
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 837
    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_2

    .line 839
    .end local v12           #fileStream:Ljava/io/InputStream;
    .end local v17           #path:Ljava/lang/String;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    :cond_6
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_2

    .line 851
    .restart local v15       #originalHeight:I
    .restart local v16       #originalWidth:I
    .restart local v19       #sampleSize:I
    :cond_7
    :try_start_4
    move/from16 v0, v19

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 856
    .end local v15           #originalHeight:I
    .end local v16           #originalWidth:I
    .end local v19           #sampleSize:I
    :cond_8
    const/4 v7, 0x0

    iput-boolean v7, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 857
    const/4 v7, 0x0

    invoke-static {v12, v7, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 862
    if-eqz v4, :cond_d

    .line 863
    new-instance v2, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mOrientation:I

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IILjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    .line 881
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .local v2, d:Landroid/graphics/drawable/BitmapDrawable;
    :goto_4
    if-eqz v12, :cond_0

    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 882
    :catch_0
    move-exception v11

    .line 883
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 869
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #srcBmpW:I
    .end local v6           #srcBmpH:I
    .end local v10           #dm:Landroid/util/DisplayMetrics;
    .end local v11           #e:Ljava/io/IOException;
    .end local v14           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #scheme:Ljava/lang/String;
    .end local v21           #screenH:I
    .end local v22           #screenW:I
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v11

    .line 870
    .local v11, e:Ljava/lang/Exception;
    :goto_5
    :try_start_6
    const-string v7, "DecodeImageThread"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 881
    if-eqz v12, :cond_9

    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_9
    move-object v2, v9

    .line 884
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 882
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v11

    .line 883
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v9

    .line 885
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 872
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v11           #e:Ljava/io/IOException;
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v11

    .line 873
    .local v11, e:Ljava/lang/OutOfMemoryError;
    :goto_6
    :try_start_8
    const-string v7, "DecodeImageThread"

    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 874
    if-eqz v4, :cond_a

    .line 875
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 876
    const/4 v4, 0x0

    .line 881
    :cond_a
    if-eqz v12, :cond_b

    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_b
    move-object v2, v9

    .line 884
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 882
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v11

    .line 883
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v9

    .line 885
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 880
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v11           #e:Ljava/io/IOException;
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v7

    .line 881
    :goto_7
    if-eqz v12, :cond_c

    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 884
    :cond_c
    :goto_8
    throw v7

    .line 882
    :catch_5
    move-exception v11

    .line 883
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 880
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v10       #dm:Landroid/util/DisplayMetrics;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    .restart local v20       #scheme:Ljava/lang/String;
    .restart local v21       #screenH:I
    .restart local v22       #screenW:I
    :catchall_1
    move-exception v7

    move-object v12, v13

    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_7

    .line 872
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    :catch_6
    move-exception v11

    move-object v12, v13

    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_6

    .line 869
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    :catch_7
    move-exception v11

    move-object v12, v13

    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_5

    .restart local v5       #srcBmpW:I
    .restart local v6       #srcBmpH:I
    .restart local v14       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_d
    move-object v2, v9

    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_4
.end method

.method private decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 18
    .parameter "context"
    .parameter "filePath"
    .parameter "mimeType"

    .prologue
    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 747
    .local v12, res:Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 749
    .local v10, metrics:Landroid/util/DisplayMetrics;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 751
    .local v11, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 752
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 753
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 754
    .local v16, srcBmpW:I
    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 756
    .local v15, srcBmpH:I
    iget v14, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 757
    .local v14, screenW:I
    iget v13, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 759
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

    .line 766
    .local v1, tempItem:Lcom/htc/sunny2/common/CacheItem;
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 767
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 768
    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 769
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 770
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 771
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 772
    iput v14, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 773
    iput v13, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 775
    new-instance v17, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 776
    .local v17, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    .line 777
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 778
    const/16 v3, 0x22

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 782
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskSetup()V

    .line 783
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskIterate()Z

    move-result v3

    if-nez v3, :cond_0

    .line 784
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskEnd()V

    .line 785
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->release()V

    .line 787
    new-instance v2, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    iget-object v4, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mOrientation:I

    move-object v3, v12

    move/from16 v5, v16

    move v6, v15

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IILjava/lang/String;I)V

    .line 788
    .local v2, d:Landroid/graphics/drawable/BitmapDrawable;
    return-object v2
.end method

.method private updateSourceType(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 695
    iput v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 699
    .local v0, fileUri:Landroid/net/Uri;
    iget v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/16 v3, 0x1001

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/16 v3, 0x1003

    if-ne v2, v3, :cond_2

    .line 701
    :cond_0
    const-string v2, "camera_last_file_path"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    if-eqz v1, :cond_3

    const-string v2, "BURST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 708
    iput v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    .line 709
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    .line 742
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    iget v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_4

    .line 720
    const-string v2, "camera_last_file_path"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    if-eqz v1, :cond_1

    .line 723
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getCoverImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    .line 731
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFilePath:Ljava/lang/String;

    .line 733
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getRotationInformation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mOrientation:I

    .line 734
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    .line 735
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    goto :goto_0

    .line 726
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 891
    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->setPriority(I)V

    .line 893
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mIntent:Landroid/content/Intent;

    .line 894
    .local v2, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    .line 896
    .local v0, activity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 897
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$100(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 939
    :goto_0
    return-void

    .line 901
    :cond_1
    const-string v6, "camera_last_file_mime"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, mimeType:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 903
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 905
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image/jp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 907
    :cond_3
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$200(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 908
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

    .line 912
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->updateSourceType(Landroid/content/Context;Landroid/content/Intent;)V

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 915
    .local v4, startTime:J
    const/4 v1, 0x0

    .line 916
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    packed-switch v6, :pswitch_data_0

    .line 926
    :pswitch_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$300(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    goto :goto_0

    .line 918
    :pswitch_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->decode(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 932
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$400(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 933
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$500(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 921
    :pswitch_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v3}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 922
    goto :goto_1

    .line 937
    :cond_5
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$600(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    goto/16 :goto_0

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
