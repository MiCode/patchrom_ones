.class public Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;
.super Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
.source "GridItem4CarMode.java"


# static fields
.field private static CARMODE_GRID_SIZE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "GridItem4CarMode"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "param"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 29
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v3, :cond_0

    .line 30
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 32
    :cond_0
    if-eqz p3, :cond_1

    .line 33
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v3, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 35
    :cond_1
    sget v3, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 37
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->getScreenShort(Landroid/content/Context;)I

    move-result v0

    .line 38
    .local v0, displayHeight:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 39
    .local v1, nSpacing:I
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->CARMODE_ACTION_BAR_HEIGHT_DIMEN:I

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v3, v4

    sub-int v3, v0, v3

    div-int/lit8 v2, v3, 0x2

    .line 40
    .local v2, size:I
    sput v2, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    .line 41
    const-string v3, "GridItem4CarMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GridItem4CarMode] Griditem size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0           #displayHeight:I
    .end local v1           #nSpacing:I
    .end local v2           #size:I
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    sget v4, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 44
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    sget v4, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 45
    return-void
.end method

.method public static final getScreenShort(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 135
    .local v2, screenShort:I
    :try_start_0
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 136
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 146
    .end local v0           #display:Landroid/view/Display;
    :goto_0
    return v2

    .line 140
    :catch_0
    move-exception v1

    .line 142
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "GridItem4CarMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getScreenShort] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v2, 0x500

    goto :goto_0
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 7
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 93
    const-string v4, "GridItem4CarMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Sunny2Framework][GridItem4CarMode][bindMediaData]: null:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 96
    :cond_0
    move-object v0, p2

    .line 97
    .local v0, mData:Lcom/htc/sunny2/IMediaData;
    const/4 v1, 0x0

    .line 98
    .local v1, mediaDataGallery:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    instance-of v4, v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v4, :cond_4

    move-object v1, v0

    .line 100
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 108
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    .line 110
    .local v3, thumbnailLayer:Lcom/htc/sunny2/Sprite$Layer;
    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    .line 112
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    if-eqz v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    invoke-interface {v4, p1, p0, v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V

    .line 115
    :cond_1
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->setCorrupted(Z)V

    .line 117
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v4, :cond_2

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 118
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    invoke-interface {v4, p1, v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunny2/IMediaData;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->setThumbTexture(Lcom/htc/sunny2/Texture;)V

    .line 120
    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v2

    .line 121
    .local v2, rotateDegrees:I
    rem-int/lit16 v2, v2, 0x168

    .line 122
    if-gez v2, :cond_3

    .line 124
    add-int/lit16 v2, v2, 0x168

    .line 126
    :cond_3
    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    goto :goto_0

    .line 104
    .end local v2           #rotateDegrees:I
    .end local v3           #thumbnailLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_4
    const-string v4, "GridItem4CarMode"

    const-string v5, "[Sunny2Framework][GridItem4CarMode][bindMediaData]: not instance of IMediaDataGallery"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public create()Lcom/htc/sunny2/ViewItem;
    .locals 4

    .prologue
    .line 79
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    .line 80
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 82
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    .line 83
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 84
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    return v0
.end method

.method protected getSharedTexture()Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail4CarMode;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail4CarMode;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 53
    sget v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    sget v1, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->setMeasuredDimension(II)V

    .line 54
    return-void
.end method
