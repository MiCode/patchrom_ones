.class public Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;
.super Landroid/os/HandlerThread;
.source "SlideshowFusionDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    }
.end annotation


# static fields
.field private static final DEQUE_SIZE:I = 0x1

.field public static final MSG_DECODE_IMAGE:I = 0xc350

.field public static final PRIORITY_BACKGROUND:I = 0x2

.field public static final PRIORITY_FOREGROUND:I = 0x1

.field public static final PRIORITY_INIT_BACKGROUND:I


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 26
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    .line 27
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 28
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 55
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 56
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "priority"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 22
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 26
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    .line 27
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 28
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 62
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 63
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    return-object v0
.end method

.method private decodeWebp(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "DI"
    .parameter "width"
    .parameter "height"
    .parameter "shouldRotate"

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v11

    .line 404
    .local v11, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v11, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionDecoder][decodeWebp]image null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    .line 408
    const/4 v1, 0x0

    .line 479
    :goto_0
    return-object v1

    .line 411
    :cond_0
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v10

    .line 412
    .local v10, degreesRotated:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionDecoder][decodeWebp]degreesRotated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]enter rotate"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 419
    const/16 v10, 0x5a

    .line 435
    :cond_1
    :goto_1
    const/4 v12, 0x1

    .line 436
    .local v12, isScaleFill:Z
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v2, :pswitch_data_0

    .line 452
    const/4 v12, 0x0

    .line 456
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionDecoder][decodeWebp]prefer size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 460
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 461
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 462
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 465
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    move/from16 v0, p2

    int-to-float v3, v0

    div-float v15, v2, v3

    .line 466
    .local v15, rx:F
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v16, v2, v3

    .line 467
    .local v16, ry:F
    if-eqz v12, :cond_4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 468
    .local v14, ratio:F
    :goto_3
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v14

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v9, v2

    .line 469
    .local v9, decodeSizeW:I
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v14

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v8, v2

    .line 470
    .local v8, decodeSizeH:I
    invoke-static {v13, v9, v8}, Lcom/htc/opensense2/album/util/ImageUtils;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 471
    const/4 v2, 0x0

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 472
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 475
    .local v1, result:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 476
    .local v6, matrix:Landroid/graphics/Matrix;
    int-to-float v2, v10

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 477
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 479
    goto/16 :goto_0

    .line 423
    .end local v1           #result:Landroid/graphics/Bitmap;
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v8           #decodeSizeH:I
    .end local v9           #decodeSizeW:I
    .end local v12           #isScaleFill:Z
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #ratio:F
    .end local v15           #rx:F
    .end local v16           #ry:F
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    if-nez v2, :cond_3

    .line 425
    const/16 v10, 0x5a

    goto/16 :goto_1

    .line 430
    :cond_3
    const/16 v10, 0x10e

    goto/16 :goto_1

    .line 439
    .restart local v12       #isScaleFill:Z
    :pswitch_0
    const/16 p2, 0x80

    .line 440
    const/16 p3, 0x80

    .line 441
    goto/16 :goto_2

    .line 443
    :pswitch_1
    const/16 p2, 0x320

    .line 444
    const/16 p3, 0x320

    .line 445
    goto/16 :goto_2

    .line 447
    :pswitch_2
    const/16 p2, 0x190

    .line 448
    const/16 p3, 0x12c

    .line 449
    goto/16 :goto_2

    .line 467
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #rx:F
    .restart local v16       #ry:F
    :cond_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_3

    .line 436
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeWithScalado(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "DI"
    .parameter "width"
    .parameter "height"
    .parameter "shouldRotate"

    .prologue
    const/16 v10, 0x5a

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 302
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v6, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v5, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 303
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_0

    .line 305
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]image null"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iput-object v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    .line 398
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v4

    .line 310
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    const-string v5, "image/jps"

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 312
    .local v3, isJPS:Z
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    .line 313
    .local v1, handle:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v1, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    .line 314
    if-nez v1, :cond_1

    .line 316
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]can\'t get scalado valid handle"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iput-object v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 321
    :cond_1
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v0

    .line 322
    .local v0, degreesRotated:I
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]degreesRotated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    if-nez v4, :cond_6

    if-eqz p4, :cond_6

    .line 326
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]enter rotate"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 329
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 349
    :goto_1
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v4, :pswitch_data_0

    .line 376
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 379
    :goto_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, p2, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 380
    if-eqz v3, :cond_2

    .line 382
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 385
    :cond_2
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]prefer size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v4, v2, Lcom/htc/sunny2/IMediaData;

    if-eqz v4, :cond_8

    .line 389
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    check-cast v2, Lcom/htc/sunny2/IMediaData;

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I

    .line 396
    :cond_3
    :goto_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v4

    if-eqz v4, :cond_3

    .line 398
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    .line 333
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    if-nez v4, :cond_5

    .line 335
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    goto :goto_1

    .line 340
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/16 v5, 0x10e

    invoke-virtual {v4, v1, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    goto :goto_1

    .line 346
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    goto/16 :goto_1

    .line 352
    :pswitch_0
    const/16 p2, 0x80

    .line 353
    const/16 p3, 0x80

    .line 354
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    goto/16 :goto_2

    .line 357
    :pswitch_1
    const/16 p2, 0x320

    .line 358
    const/16 p3, 0x320

    .line 359
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    goto/16 :goto_2

    .line 362
    :pswitch_2
    if-lt p2, p3, :cond_7

    .line 364
    iput-boolean v9, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isPortrait:Z

    .line 370
    :goto_4
    const/16 p2, 0x190

    .line 371
    const/16 p3, 0x12c

    .line 372
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    goto/16 :goto_2

    .line 368
    :cond_7
    iput-boolean v7, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isPortrait:Z

    goto :goto_4

    .line 393
    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    goto :goto_3

    .line 349
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldRotate(IIII)Z
    .locals 1
    .parameter "h"
    .parameter "w"
    .parameter "screenH"
    .parameter "screenW"

    .prologue
    const/4 v0, 0x1

    .line 283
    if-le p1, p2, :cond_1

    .line 285
    if-ge p3, p4, :cond_2

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    if-ge p1, p2, :cond_2

    .line 292
    if-gt p3, p4, :cond_0

    .line 297
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method protected decodeImage(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 14
    .parameter "DI"

    .prologue
    .line 192
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage] + "

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 194
    .local v6, start:J
    if-nez p1, :cond_0

    .line 196
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]DecodeItem null"

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v11, :cond_1

    .line 201
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]mList null"

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v11, 0x0

    iput-object v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 205
    :cond_1
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v12, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v11, v12}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 206
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_2

    .line 208
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]image null"

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v11, 0x0

    iput-object v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 213
    :cond_2
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]image: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v4, 0x0

    .line 215
    .local v4, mTempBmp:Landroid/graphics/Bitmap;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v10

    .line 216
    .local v10, w:I
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v2

    .line 217
    .local v2, h:I
    iget v1, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 218
    .local v1, displayW:I
    iget v0, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 220
    .local v0, displayH:I
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", displayW = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", displayH = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    if-nez v11, :cond_3

    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v12, 0x5

    if-eq v11, v12, :cond_3

    .line 224
    if-lt v10, v2, :cond_8

    .line 226
    if-lt v0, v1, :cond_6

    move v10, v0

    .line 227
    :goto_1
    if-lt v0, v1, :cond_7

    move v2, v1

    .line 236
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v5, 0x0

    .line 240
    .local v5, shouldRotate:Z
    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_c

    .line 242
    if-lt v2, v10, :cond_b

    const/4 v5, 0x1

    .line 249
    :goto_3
    const-string v11, "image/webp"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 251
    invoke-direct {p0, p1, v10, v2, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodeWebp(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 259
    :goto_4
    if-eqz v4, :cond_e

    .line 261
    const-string v11, "video/3gpp-3d"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "video/mp4-3d"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 263
    :cond_4
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]: Shouldn\'t run to here, Slideshow not support Video !!!"

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v8, v11, v6

    .line 275
    .local v8, time:J
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage] - , time "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iput-object v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .end local v5           #shouldRotate:Z
    .end local v8           #time:J
    :cond_6
    move v10, v1

    .line 226
    goto/16 :goto_1

    :cond_7
    move v2, v0

    .line 227
    goto/16 :goto_2

    .line 231
    :cond_8
    if-ge v0, v1, :cond_9

    move v10, v0

    .line 232
    :goto_5
    if-ge v0, v1, :cond_a

    move v2, v1

    :goto_6
    goto/16 :goto_2

    :cond_9
    move v10, v1

    .line 231
    goto :goto_5

    :cond_a
    move v2, v0

    .line 232
    goto :goto_6

    .line 242
    .restart local v5       #shouldRotate:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    .line 246
    :cond_c
    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    iget v12, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    invoke-direct {p0, v2, v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->shouldRotate(IIII)Z

    move-result v5

    goto :goto_3

    .line 255
    :cond_d
    invoke-direct {p0, p1, v10, v2, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodeWithScalado(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_4

    .line 268
    :cond_e
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]: Bitmap curImage.thumbBitmap is NG !"

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v11, 0x0

    iput-object v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public initHandler()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->setImageList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 69
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 72
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .line 78
    .local v0, d:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    iput-object v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 85
    .end local v0           #d:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 86
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 87
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->quit()Z

    .line 88
    return-void
.end method

.method public setDecodeCompleteCallback(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    .line 50
    return-void
.end method

.method public setImageList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 45
    return-void
.end method
