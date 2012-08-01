.class Lcom/htc/album/TabPluginDevice/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field mUnion:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/CropImage;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1589
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    .line 1590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    .line 1592
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/album/TabPluginDevice/CropImage$2;Landroid/media/FaceDetector$Face;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1588
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$2;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/album/TabPluginDevice/CropImage$2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1588
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->makeDefault()V

    return-void
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .locals 13
    .parameter "f"

    .prologue
    .line 1596
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 1598
    .local v7, midPoint:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 1599
    .local v10, r:I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 1600
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 1601
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 1603
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 1604
    .local v8, midX:I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 1606
    .local v9, midY:I
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->makeHighlightView()Lcom/htc/album/TabPluginDevice/HighlightView;

    move-result-object v0

    .line 1608
    .local v0, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1609
    .local v11, width:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1611
    .local v6, height:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1613
    .local v2, imageRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v12, v9

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1614
    .local v3, faceRect:Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1615
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 1616
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1618
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 1619
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1621
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 1622
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1624
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 1625
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1627
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$900(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 1629
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    if-nez v1, :cond_5

    .line 1630
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    .line 1635
    :goto_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->add(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 1636
    return-void

    .line 1627
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1632
    :cond_5
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method private makeDefault()V
    .locals 19

    .prologue
    .line 1643
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->makeHighlightView()Lcom/htc/album/TabPluginDevice/HighlightView;

    move-result-object v1

    .line 1645
    .local v1, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 1646
    .local v15, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1648
    .local v11, height:I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1671
    .local v3, imageRect:Landroid/graphics/Rect;
    move v8, v15

    .line 1672
    .local v8, cropWidth:I
    move v7, v11

    .line 1674
    .local v7, cropHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1675
    int-to-float v2, v15

    int-to-float v5, v11

    div-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpg-float v2, v2, v5

    if-gez v2, :cond_6

    .line 1676
    move v8, v15

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    mul-int/2addr v2, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    div-int v7, v2, v5

    .line 1699
    :cond_0
    :goto_0
    mul-int/lit8 v2, v8, 0x4

    div-int/lit8 v8, v2, 0x5

    .line 1700
    mul-int/lit8 v2, v7, 0x4

    div-int/lit8 v7, v2, 0x5

    .line 1701
    if-gtz v8, :cond_1

    .line 1702
    const/4 v8, 0x1

    .line 1703
    :cond_1
    if-gtz v7, :cond_2

    .line 1704
    const/4 v7, 0x1

    .line 1706
    :cond_2
    sub-int v2, v15, v8

    div-int/lit8 v16, v2, 0x2

    .line 1707
    .local v16, x:I
    sub-int v2, v11, v7

    div-int/lit8 v17, v2, 0x2

    .line 1709
    .local v17, y:I
    new-instance v4, Landroid/graphics/RectF;

    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v5, v0

    add-int v6, v16, v8

    int-to-float v6, v6

    add-int v18, v17, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v4, v2, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1710
    .local v4, cropRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mImageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$900(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/TabPluginDevice/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->add(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1900(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    const/16 v5, 0x7f04

    if-ne v2, v5, :cond_5

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 1716
    .local v9, display:Landroid/view/Display;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v12

    .line 1717
    .local v12, rotation:I
    :goto_2
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 1718
    .local v10, displaySize:Landroid/graphics/Point;
    invoke-virtual {v9, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1721
    const/4 v2, 0x1

    if-eq v12, v2, :cond_3

    const/4 v2, 0x3

    if-ne v12, v2, :cond_4

    .line 1722
    :cond_3
    iget v2, v10, Landroid/graphics/Point;->y:I

    iget v5, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v2, v5}, Landroid/graphics/Point;->set(II)V

    .line 1724
    :cond_4
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1100(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    int-to-float v5, v5

    div-float v13, v2, v5

    .line 1725
    .local v13, spotlightX:F
    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1200(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    int-to-float v5, v5

    div-float v14, v2, v5

    .line 1726
    .local v14, spotlightY:F
    invoke-virtual {v1, v13, v14}, Lcom/htc/album/TabPluginDevice/HighlightView;->setSpotlightRatio(FF)V

    .line 1728
    .end local v9           #display:Landroid/view/Display;
    .end local v10           #displaySize:Landroid/graphics/Point;
    .end local v12           #rotation:I
    .end local v13           #spotlightX:F
    .end local v14           #spotlightY:F
    :cond_5
    return-void

    .line 1680
    .end local v4           #cropRect:Landroid/graphics/RectF;
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_6
    move v7, v11

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    mul-int/2addr v2, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    div-int v8, v2, v5

    goto/16 :goto_0

    .line 1710
    .restart local v4       #cropRect:Landroid/graphics/RectF;
    .restart local v16       #x:I
    .restart local v17       #y:I
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 1716
    .restart local v9       #display:Landroid/view/Display;
    :cond_8
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private makeHighlightView()Lcom/htc/album/TabPluginDevice/HighlightView;
    .locals 2

    .prologue
    .line 1639
    new-instance v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/HighlightView;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1731
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1732
    const/4 v7, 0x0

    .line 1743
    :goto_0
    return-object v7

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 1737
    const/high16 v0, 0x4380

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    .line 1739
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1740
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    iget v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1741
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1743
    .local v7, faceBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1747
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mImageMatrix:Landroid/graphics/Matrix;

    .line 1748
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1750
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    .line 1751
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2500(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1752
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 1754
    .local v0, detector:Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mNumFaces:I

    .line 1764
    .end local v0           #detector:Landroid/media/FaceDetector;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2600(Lcom/htc/album/TabPluginDevice/CropImage;)S

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1792
    :goto_1
    return-void

    .line 1758
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1759
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1760
    const/4 v1, 0x0

    goto :goto_0

    .line 1767
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    new-instance v3, Lcom/htc/album/TabPluginDevice/CropImage$2$1;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/CropImage$2$1;-><init>(Lcom/htc/album/TabPluginDevice/CropImage$2;)V

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2702(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1791
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
