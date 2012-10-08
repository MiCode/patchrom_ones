.class Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V
    .locals 0
    .parameter

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1767
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V
    .locals 16
    .parameter "decoder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1771
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v10, :cond_0

    .line 1810
    :goto_0
    return-void

    .line 1773
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move/from16 v0, p2

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v11, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move-result v11

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static {v10, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1774
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move/from16 v0, p3

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v11, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move-result v11

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static {v10, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1775
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1776
    move/from16 v0, p2

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    .line 1777
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto :goto_0

    .line 1779
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto :goto_0

    .line 1782
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 1783
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/16 v11, 0xfa

    if-le v10, v11, :cond_5

    const/4 v9, 0x1

    .line 1784
    .local v9, sourceWidthHeightOverPanoramaThreshold:Z
    :goto_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_6

    mul-int/lit8 v10, p3, 0x4

    move/from16 v0, p2

    if-le v0, v10, :cond_6

    const/4 v8, 0x1

    .line 1785
    .local v8, sourceIsWideAndAspectRatioOverPanoramaThreshold:Z
    :goto_2
    move/from16 v0, p3

    move/from16 v1, p2

    if-le v0, v1, :cond_7

    mul-int/lit8 v10, p2, 0x4

    move/from16 v0, p3

    if-le v0, v10, :cond_7

    const/4 v7, 0x1

    .line 1786
    .local v7, sourceIsTallAndAspectRatioOverPanoramaThreshold:Z
    :goto_3
    if-nez v8, :cond_3

    if-eqz v7, :cond_8

    :cond_3
    const/4 v6, 0x1

    .line 1788
    .local v6, sourceAspectRatioOverPanoramaThreshold:Z
    :goto_4
    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    .line 1789
    const/high16 v3, -0x4080

    .line 1790
    .local v3, maxSizeWidth:F
    const/high16 v2, -0x4080

    .line 1791
    .local v2, maxSizeHeight:F
    sget-boolean v10, Lcom/htc/sunny2/common/Constants;->FLAG_NVIDIA:Z

    if-eqz v10, :cond_9

    .line 1793
    const/high16 v3, 0x4500

    .line 1794
    const/high16 v2, 0x4500

    .line 1801
    :goto_5
    move/from16 v0, p2

    int-to-float v10, v0

    div-float v10, v3, v10

    move/from16 v0, p3

    int-to-float v11, v0

    div-float v11, v2, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1802
    .local v5, scaleRatioLimitDueToTexture:F
    const-wide/high16 v10, 0x4150

    move/from16 v0, p3

    int-to-double v12, v0

    move/from16 v0, p2

    int-to-double v14, v0

    mul-double/2addr v12, v14

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1803
    .local v4, scaleRatio:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    move/from16 v0, p2

    int-to-float v11, v0

    mul-float/2addr v11, v4

    const/high16 v12, 0x3f80

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1804
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    move/from16 v0, p3

    int-to-float v11, v0

    mul-float/2addr v11, v4

    const/high16 v12, 0x3f80

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1808
    .end local v2           #maxSizeHeight:F
    .end local v3           #maxSizeWidth:F
    .end local v4           #scaleRatio:F
    .end local v5           #scaleRatioLimitDueToTexture:F
    .end local v6           #sourceAspectRatioOverPanoramaThreshold:Z
    .end local v7           #sourceIsTallAndAspectRatioOverPanoramaThreshold:Z
    .end local v8           #sourceIsWideAndAspectRatioOverPanoramaThreshold:Z
    .end local v9           #sourceWidthHeightOverPanoramaThreshold:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto/16 :goto_0

    .line 1783
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1784
    .restart local v9       #sourceWidthHeightOverPanoramaThreshold:Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1785
    .restart local v8       #sourceIsWideAndAspectRatioOverPanoramaThreshold:Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .line 1786
    .restart local v7       #sourceIsTallAndAspectRatioOverPanoramaThreshold:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 1798
    .restart local v2       #maxSizeHeight:F
    .restart local v3       #maxSizeWidth:F
    .restart local v6       #sourceAspectRatioOverPanoramaThreshold:Z
    :cond_9
    const/high16 v3, 0x4580

    .line 1799
    const/high16 v2, 0x4580

    goto :goto_5
.end method
