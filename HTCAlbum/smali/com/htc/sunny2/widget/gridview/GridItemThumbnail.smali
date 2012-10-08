.class public Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
.super Lcom/htc/sunny2/widget/gridview/GridViewItem;
.source "GridItemThumbnail.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemOverlayState;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;


# static fields
.field private static final FLAG_DRM:I = 0x2

.field private static final FLAG_PLAYABLE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GridItemThumbnail"

.field private static final SPRITE_LAYER_ARROW_DOWN:I = 0x3

.field private static final SPRITE_LAYER_BACKGROUND:I = 0x0

.field private static final SPRITE_LAYER_BACKGROUND_LIGHT:I = 0x1

.field private static final SPRITE_LAYER_BESTSHOT:I = 0x10

.field private static final SPRITE_LAYER_BOTTOM_TEXT:I = 0x2

.field private static final SPRITE_LAYER_BURSTSHOT:I = 0xf

.field private static final SPRITE_LAYER_CENTER_TEXT:I = 0x4

.field private static final SPRITE_LAYER_COUNT:I = 0x11

.field private static final SPRITE_LAYER_DELETE:I = 0xb

.field private static final SPRITE_LAYER_DRM:I = 0xa

.field private static final SPRITE_LAYER_DRM_CORRUPT:I = 0x7

.field private static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x5

.field private static final SPRITE_LAYER_INKED:I = 0xd

.field private static final SPRITE_LAYER_IS_3D:I = 0xe

.field private static final SPRITE_LAYER_PICKER:I = 0xb

.field private static final SPRITE_LAYER_PLAYABLE:I = 0x9

.field private static final SPRITE_LAYER_SELECTOR:I = 0xc

.field protected static final SPRITE_LAYER_THUMBNAIL:I = 0x8

.field private static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x6


# instance fields
.field private mBgTexture:Lcom/htc/sunny2/Texture;

.field private mBottomTexture:Lcom/htc/sunny2/Texture;

.field private mBottomView:Landroid/widget/TextView;

.field private mCenterTextTexture:Lcom/htc/sunny2/Texture;

.field private mCenterTextView:Landroid/widget/TextView;

.field protected mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

.field protected mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

.field private mPrivateFlag:I

.field private mShareTextureKey:Ljava/lang/String;

.field protected mSprite:Lcom/htc/sunny2/Sprite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 79
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 80
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemThumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setItemAnimation(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"
    .parameter "param"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 79
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 80
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    .line 85
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v0, :cond_0

    .line 86
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 88
    :cond_0
    if-eqz p3, :cond_1

    .line 89
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 91
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemThumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setItemAnimation(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 97
    return-void
.end method

.method private setBottomText(Ljava/lang/String;)V
    .locals 22
    .parameter "text"

    .prologue
    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 854
    .local v2, spriteText:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v16

    .line 855
    .local v16, spriteArrowDown:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 856
    .local v17, tView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunny2/Texture;

    move-object/from16 v18, v0

    .line 858
    .local v18, texture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v12, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 859
    .local v12, nItemW:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v11, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 862
    .local v11, nItemH:I
    move v13, v12

    .line 864
    .local v13, nNewItemW:I
    if-eqz p1, :cond_6

    .line 866
    if-nez v17, :cond_0

    .line 868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 869
    .local v8, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 870
    const v3, 0x7f030011

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .end local v17           #tView:Landroid/widget/TextView;
    check-cast v17, Landroid/widget/TextView;

    .line 873
    .restart local v17       #tView:Landroid/widget/TextView;
    :goto_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v13, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomView:Landroid/widget/TextView;

    .line 876
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    const/high16 v3, 0x4000

    invoke-static {v13, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 879
    .local v10, measureW:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 880
    .local v9, measureH:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v9}, Landroid/widget/TextView;->measure(II)V

    .line 881
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v13, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 883
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHeight()I

    move-result v19

    .line 885
    .local v19, viewH:I
    neg-int v3, v12

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v5, v3, v4

    .line 886
    .local v5, mImgOriginalX:F
    div-int/lit8 v3, v19, 0x2

    sub-int v3, v11, v3

    int-to-float v6, v3

    .line 888
    .local v6, mImgOriginalY:F
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v6, v3

    .line 898
    :goto_1
    const/4 v3, 0x0

    cmpg-float v3, v6, v3

    if-ltz v3, :cond_1

    int-to-float v3, v11

    cmpl-float v3, v6, v3

    if-lez v3, :cond_2

    .line 900
    :cond_1
    const-string v3, "GridItemThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setBottomText] mImgOriginalY = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", nItemH = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", viewH/2 = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v7, v19, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", M1="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v20, 0x7f07002a

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    div-int/lit8 v3, v19, 0x2

    sub-int v3, v11, v3

    int-to-float v6, v3

    .line 904
    :cond_2
    int-to-float v3, v13

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 905
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 907
    if-nez v18, :cond_5

    .line 909
    invoke-static/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v18

    .line 911
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 913
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunny2/Texture;

    .line 920
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v15

    .line 921
    .local v15, nTextTextureW:I
    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v14

    .line 924
    .local v14, nTextTextureH:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v7, v13

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v7, v7, v20

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v2, v3, v4, v7, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 925
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 926
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 933
    .end local v5           #mImgOriginalX:F
    .end local v6           #mImgOriginalY:F
    .end local v9           #measureH:I
    .end local v10           #measureW:I
    .end local v14           #nTextTextureH:I
    .end local v15           #nTextTextureW:I
    .end local v19           #viewH:I
    :goto_3
    return-void

    .line 872
    .restart local v8       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .end local v17           #tView:Landroid/widget/TextView;
    check-cast v17, Landroid/widget/TextView;

    .restart local v17       #tView:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 895
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #mImgOriginalX:F
    .restart local v6       #mImgOriginalY:F
    .restart local v9       #measureH:I
    .restart local v10       #measureW:I
    .restart local v19       #viewH:I
    :cond_4
    const/high16 v3, 0x40c0

    sub-float/2addr v6, v3

    goto/16 :goto_1

    .line 917
    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Texture;->setView(Landroid/view/View;)V

    goto :goto_2

    .line 930
    .end local v5           #mImgOriginalX:F
    .end local v6           #mImgOriginalY:F
    .end local v9           #measureH:I
    .end local v10           #measureW:I
    .end local v19           #viewH:I
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 931
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_3
.end method

.method private setCenterText(Ljava/lang/String;)V
    .locals 18
    .parameter "text"

    .prologue
    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 797
    .local v1, layer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextView:Landroid/widget/TextView;

    .line 798
    .local v14, tView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    .line 800
    .local v15, texture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v11, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 801
    .local v11, nItemW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v10, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 803
    .local v10, nItemH:I
    if-eqz p1, :cond_3

    .line 805
    if-nez v14, :cond_0

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 808
    .local v7, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .end local v14           #tView:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 812
    .restart local v14       #tView:Landroid/widget/TextView;
    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v11, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextView:Landroid/widget/TextView;

    .line 815
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    const/high16 v2, 0x4000

    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 818
    .local v9, measureW:I
    const/high16 v2, -0x8000

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 819
    .local v8, measureH:I
    invoke-virtual {v14, v9, v8}, Landroid/widget/TextView;->measure(II)V

    .line 820
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v14, v2, v3, v11, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 822
    neg-int v2, v11

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 823
    .local v4, mImgOriginalX:F
    int-to-float v2, v10

    const/high16 v3, 0x4000

    div-float v5, v2, v3

    .line 824
    .local v5, mImgOriginalY:F
    int-to-float v2, v11

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 825
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 827
    if-nez v15, :cond_2

    .line 829
    invoke-static {v14}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v15

    .line 831
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v15}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 833
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    .line 840
    :goto_1
    invoke-virtual {v15}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v13

    .line 841
    .local v13, nTextTextureW:I
    invoke-virtual {v15}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v12

    .line 843
    .local v12, nTextTextureH:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v6, v11

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v6, v6, v16

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v12

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v1, v2, v3, v6, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 850
    .end local v4           #mImgOriginalX:F
    .end local v5           #mImgOriginalY:F
    .end local v8           #measureH:I
    .end local v9           #measureW:I
    .end local v12           #nTextTextureH:I
    .end local v13           #nTextTextureW:I
    :goto_2
    return-void

    .line 811
    .restart local v7       #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .end local v14           #tView:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .restart local v14       #tView:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 837
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #mImgOriginalX:F
    .restart local v5       #mImgOriginalY:F
    .restart local v8       #measureH:I
    .restart local v9       #measureW:I
    :cond_2
    invoke-virtual {v15, v14}, Lcom/htc/sunny2/Texture;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 848
    .end local v4           #mImgOriginalX:F
    .end local v5           #mImgOriginalY:F
    .end local v8           #measureH:I
    .end local v9           #measureW:I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_2
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 12
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 449
    if-nez p2, :cond_1

    .line 451
    const-string v8, "GridItemThumbnail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Sunny2Framework][GridItemThumbnail][bindMediaData]: null:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    move-object v3, p2

    .line 455
    .local v3, mData:Lcom/htc/sunny2/IMediaData;
    const/4 v4, 0x0

    .line 456
    .local v4, mediaDataGallery:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    instance-of v8, v3, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v8, :cond_a

    move-object v4, v3

    .line 458
    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 466
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v6

    .line 468
    .local v6, thumbnailLayer:Lcom/htc/sunny2/Sprite$Layer;
    const/16 v8, 0xff

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    .line 470
    instance-of v8, p2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v8, :cond_3

    move-object v1, p2

    .line 471
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 472
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v8

    if-ne v10, v8, :cond_2

    .line 473
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v11, 0xf

    invoke-virtual {v8, v11}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 475
    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v8

    if-ne v10, v8, :cond_3

    .line 476
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v11, 0x10

    invoke-virtual {v8, v11}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 480
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    if-eqz v8, :cond_4

    .line 481
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    invoke-interface {v8, p1, p0, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V

    .line 483
    :cond_4
    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_5
    move v8, v10

    :goto_1
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setPlayable(Z)V

    .line 484
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 485
    instance-of v8, v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v8, :cond_6

    move-object v8, v3

    .line 487
    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setInked(Z)V

    .line 491
    :cond_6
    instance-of v8, v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v8, :cond_c

    move-object v8, v3

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v8

    if-eqz v8, :cond_c

    move v2, v10

    .line 492
    .local v2, is3D:Z
    :goto_2
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setIs3D(Z)V

    .line 494
    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setCorrupted(Z)V

    .line 496
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v10, v8, :cond_7

    .line 498
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v7

    .line 499
    .local v7, useLayer:Lcom/htc/sunny2/Sprite$Layer;
    invoke-virtual {v7, v10}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 502
    .end local v7           #useLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v8, :cond_8

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v8

    if-nez v8, :cond_8

    .line 503
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    invoke-interface {v8, p1, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunny2/IMediaData;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setThumbTexture(Lcom/htc/sunny2/Texture;)V

    .line 505
    :cond_8
    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v5

    .line 506
    .local v5, rotateDegrees:I
    rem-int/lit16 v5, v5, 0x168

    .line 507
    if-gez v5, :cond_9

    .line 508
    add-int/lit16 v5, v5, 0x168

    .line 510
    :cond_9
    invoke-virtual {v6, v5}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 512
    instance-of v8, v3, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    if-eqz v8, :cond_0

    move-object v8, v3

    .line 514
    check-cast v8, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setCenterText(Ljava/lang/String;)V

    move-object v8, v3

    .line 516
    check-cast v8, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getCenterText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBottomText(Ljava/lang/String;)V

    .line 518
    check-cast v3, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    .end local v3           #mData:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getBackground()I

    move-result v0

    .line 519
    .local v0, bgResId:I
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBackground(I)V

    goto/16 :goto_0

    .line 462
    .end local v0           #bgResId:I
    .end local v2           #is3D:Z
    .end local v5           #rotateDegrees:I
    .end local v6           #thumbnailLayer:Lcom/htc/sunny2/Sprite$Layer;
    .restart local v3       #mData:Lcom/htc/sunny2/IMediaData;
    :cond_a
    const-string v8, "GridItemThumbnail"

    const-string v9, "[Sunny2Framework][GridItemThumbnail][bindMediaData]: not instance of IMediaDataGallery"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v6       #thumbnailLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_b
    move v8, v9

    .line 483
    goto/16 :goto_1

    :cond_c
    move v2, v9

    .line 491
    goto :goto_2
.end method

.method public create()Lcom/htc/sunny2/ViewItem;
    .locals 4

    .prologue
    .line 439
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    .line 440
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 442
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    .line 443
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 444
    return-object v0
.end method

.method public create(Z)Lcom/htc/sunny2/ViewItem;
    .locals 1
    .parameter "isChild"

    .prologue
    .line 946
    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 51

    .prologue
    .line 122
    invoke-super/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->createResource()V

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v44

    .line 125
    .local v44, sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    if-nez v44, :cond_0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture()Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v44

    .line 128
    const/4 v3, 0x0

    move-object/from16 v0, v44

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;)V

    .line 131
    :cond_0
    move-object/from16 v0, v44

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v44

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move/from16 v41, v0

    .line 134
    .local v41, nItemW:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move/from16 v40, v0

    .line 136
    .local v40, nItemH:I
    move/from16 v0, v41

    neg-int v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v5, v3, v4

    .line 137
    .local v5, fImgOriginalX:F
    move/from16 v0, v40

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float v6, v3, v4

    .line 139
    .local v6, fImgOriginalY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_1

    .line 141
    const/16 v3, 0x11

    invoke-static {v3}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 151
    .local v2, spriteLayerBackground:Lcom/htc/sunny2/Sprite$Layer;
    move/from16 v0, v41

    int-to-float v3, v0

    move/from16 v0, v40

    int-to-float v4, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 156
    const/4 v3, 0x0

    const-string v4, "NAME_TEXTURE_BACKGROUND_DARK"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 161
    move/from16 v0, v41

    int-to-float v3, v0

    move/from16 v0, v40

    int-to-float v4, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 166
    const/4 v3, 0x0

    const-string v4, "NAME_TEXTURE_BACKGROUND_LIGHT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 167
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 169
    const/4 v13, 0x0

    .line 170
    .local v13, fGeoPosX:F
    const/4 v14, 0x0

    .line 174
    .local v14, fGeoPosY:F
    const/4 v7, 0x0

    .line 175
    .local v7, spriteLayerCorrupt:Lcom/htc/sunny2/Sprite$Layer;
    const/16 v47, 0x0

    .line 176
    .local v47, textureCorrupt:Lcom/htc/sunny2/Texture;
    const/16 v42, 0x5

    .local v42, nLayer:I
    :goto_0
    const/4 v3, 0x7

    move/from16 v0, v42

    if-lt v3, v0, :cond_5

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v7

    .line 180
    const/4 v3, 0x5

    move/from16 v0, v42

    if-ne v3, v0, :cond_3

    .line 181
    const-string v3, "NAME_TEXTUREE_IMAGE_CORRUPT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v47

    .line 187
    :cond_2
    :goto_1
    invoke-virtual/range {v47 .. v47}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v8, v3

    invoke-virtual/range {v47 .. v47}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v9, v3

    const/4 v12, 0x0

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 188
    const/4 v3, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v7, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 189
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 176
    add-int/lit8 v42, v42, 0x1

    goto :goto_0

    .line 182
    :cond_3
    const/4 v3, 0x6

    move/from16 v0, v42

    if-ne v3, v0, :cond_4

    .line 183
    const-string v3, "NAME_TEXTUREE_VIDEO_CORRUPT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v47

    goto :goto_1

    .line 184
    :cond_4
    const/4 v3, 0x7

    move/from16 v0, v42

    if-ne v3, v0, :cond_2

    .line 185
    const-string v3, "NAME_TEXTUREE_DRM_CORRUPT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v47

    goto :goto_1

    .line 199
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v8

    .line 200
    .local v8, spriteLayerThumb:Lcom/htc/sunny2/Sprite$Layer;
    add-int/lit8 v3, v41, -0x2

    int-to-float v9, v3

    add-int/lit8 v3, v40, -0x2

    int-to-float v10, v3

    const/4 v13, 0x0

    move v11, v5

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 205
    .end local v13           #fGeoPosX:F
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v9

    .line 211
    .local v9, spriteLayerPlayer:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_PLAYABLE"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v43

    .line 212
    .local v43, playTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v43 .. v43}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v10, v3

    invoke-virtual/range {v43 .. v43}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v11, v3

    const/4 v14, 0x0

    move v12, v5

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 213
    .end local v14           #fGeoPosY:F
    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v9, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 214
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v10

    .line 220
    .local v10, spriteLayerInk:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_INKED"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v38

    .line 221
    .local v38, inkedTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v38 .. v38}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v39

    .line 222
    .local v39, inkedWidth:I
    invoke-virtual/range {v38 .. v38}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v37

    .line 223
    .local v37, inkedHeight:I
    move/from16 v0, v39

    int-to-float v3, v0

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 224
    .restart local v13       #fGeoPosX:F
    move/from16 v0, v40

    int-to-float v3, v0

    move/from16 v0, v37

    int-to-float v4, v0

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    sub-float v14, v3, v4

    .line 225
    .restart local v14       #fGeoPosY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_6

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v13, v3

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v14, v3

    .line 230
    :cond_6
    move/from16 v0, v39

    int-to-float v11, v0

    move/from16 v0, v37

    int-to-float v12, v0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 231
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v10, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 232
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v15

    .line 238
    .local v15, spriteLayerBurstShot:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_BURSTSHOT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v35

    .line 239
    .local v35, burstTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v36

    .line 240
    .local v36, burstWidth:I
    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v34

    .line 241
    .local v34, burstHeight:I
    move/from16 v0, v36

    int-to-float v3, v0

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 242
    move/from16 v0, v40

    int-to-float v3, v0

    move/from16 v0, v34

    int-to-float v4, v0

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    sub-float v14, v3, v4

    .line 243
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v20, 0x0

    move/from16 v18, v13

    move/from16 v19, v14

    invoke-virtual/range {v15 .. v20}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 244
    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v15, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 245
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v16

    .line 251
    .local v16, spriteLayerBestShot:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_BESTSHOT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v32

    .line 252
    .local v32, bestTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v32 .. v32}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v33

    .line 253
    .local v33, bestWidth:I
    invoke-virtual/range {v32 .. v32}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v31

    .line 254
    .local v31, bestHeight:I
    move/from16 v0, v33

    int-to-float v3, v0

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 255
    move/from16 v0, v40

    int-to-float v3, v0

    move/from16 v0, v31

    int-to-float v4, v0

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    sub-float v14, v3, v4

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v13, v3

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v14, v3

    .line 261
    :cond_7
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v21, 0x0

    move/from16 v19, v13

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 262
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 263
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v17

    .line 269
    .local v17, spriteLayer3D:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_3D"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v46

    .line 271
    .local v46, texture3D:Lcom/htc/sunny2/Texture;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 273
    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v30

    .line 274
    .local v30, ThreeDTextureWidth:I
    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v29

    .line 275
    .local v29, ThreeDTextureHeight:I
    move/from16 v0, v41

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v30

    int-to-float v4, v0

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    add-float v13, v3, v4

    .line 276
    move/from16 v0, v29

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_8

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v13, v3

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v14, v3

    .line 288
    .end local v29           #ThreeDTextureHeight:I
    .end local v30           #ThreeDTextureWidth:I
    :cond_8
    :goto_2
    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v18, v0

    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v19, v0

    const/16 v22, 0x0

    move/from16 v20, v13

    move/from16 v21, v14

    invoke-virtual/range {v17 .. v22}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 289
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 290
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v18

    .line 296
    .local v18, spriteLayerDRM:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_DRM"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v48

    .line 298
    .local v48, textureDRM:Lcom/htc/sunny2/Texture;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 300
    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v28

    .line 301
    .local v28, DRMTextureWidth:I
    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v27

    .line 302
    .local v27, DRMTextureHeight:I
    move/from16 v0, v28

    int-to-float v3, v0

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 303
    move/from16 v0, v27

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_9

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v13, v3

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v14, v3

    .line 315
    .end local v27           #DRMTextureHeight:I
    .end local v28           #DRMTextureWidth:I
    :cond_9
    :goto_3
    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v19, v0

    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    const/16 v23, 0x0

    move/from16 v21, v13

    move/from16 v22, v14

    invoke-virtual/range {v18 .. v23}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 316
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 317
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v19

    .line 323
    .local v19, spriteLayerPicker:Lcom/htc/sunny2/Sprite$Layer;
    const/16 v50, 0x0

    .line 324
    .local v50, texturePicked:Lcom/htc/sunny2/Texture;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v3, v4, :cond_f

    .line 326
    const-string v3, "NAME_TEXTUREE_UNPICKED"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v50

    .line 327
    move/from16 v0, v41

    int-to-float v3, v0

    neg-float v3, v3

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_X:I

    int-to-float v4, v4

    add-float v13, v3, v4

    .line 329
    move/from16 v0, v40

    int-to-float v3, v0

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_Y:I

    int-to-float v4, v4

    sub-float v14, v3, v4

    .line 332
    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v21, v0

    const/16 v24, 0x0

    move/from16 v22, v13

    move/from16 v23, v14

    invoke-virtual/range {v19 .. v24}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 333
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 341
    :cond_a
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v20

    .line 347
    .local v20, spriteLayerFocused:Lcom/htc/sunny2/Sprite$Layer;
    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v25, 0x0

    move/from16 v23, v5

    move/from16 v24, v6

    invoke-virtual/range {v20 .. v25}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 348
    const/4 v3, 0x0

    const-string v4, "NAME_TEXTUREE_SELECTED"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 349
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 354
    const/16 v45, 0x0

    .line 355
    .local v45, spriteLayerText:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v45

    .line 356
    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v45

    .line 359
    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v21

    .line 365
    .local v21, spriteLayerDown:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_ARROW_DOWN"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v49

    .line 366
    .local v49, textureDown:Lcom/htc/sunny2/Texture;
    move v13, v5

    .line 367
    invoke-virtual/range {v49 .. v49}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f07002a

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float v14, v3, v4

    .line 368
    const/4 v3, 0x0

    cmpl-float v3, v3, v14

    if-gtz v3, :cond_b

    move/from16 v0, v40

    int-to-float v3, v0

    cmpl-float v3, v14, v3

    if-lez v3, :cond_c

    .line 370
    :cond_b
    const-string v3, "GridItemThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(fGeoPosX, fGeoPosY) = ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ")"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move v14, v6

    .line 374
    :cond_c
    invoke-virtual/range {v49 .. v49}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v22, v0

    invoke-virtual/range {v49 .. v49}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v23, v0

    const/16 v26, 0x0

    move/from16 v24, v13

    move/from16 v25, v14

    invoke-virtual/range {v21 .. v26}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 375
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 376
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 379
    return-void

    .line 285
    .end local v18           #spriteLayerDRM:Lcom/htc/sunny2/Sprite$Layer;
    .end local v19           #spriteLayerPicker:Lcom/htc/sunny2/Sprite$Layer;
    .end local v20           #spriteLayerFocused:Lcom/htc/sunny2/Sprite$Layer;
    .end local v21           #spriteLayerDown:Lcom/htc/sunny2/Sprite$Layer;
    .end local v45           #spriteLayerText:Lcom/htc/sunny2/Sprite$Layer;
    .end local v48           #textureDRM:Lcom/htc/sunny2/Texture;
    .end local v49           #textureDown:Lcom/htc/sunny2/Texture;
    .end local v50           #texturePicked:Lcom/htc/sunny2/Texture;
    :cond_d
    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move/from16 v0, v41

    int-to-float v4, v0

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_X:I

    int-to-float v4, v4

    add-float v13, v3, v4

    .line 286
    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_Y:I

    int-to-float v4, v4

    sub-float v14, v3, v4

    goto/16 :goto_2

    .line 312
    .restart local v18       #spriteLayerDRM:Lcom/htc/sunny2/Sprite$Layer;
    .restart local v48       #textureDRM:Lcom/htc/sunny2/Texture;
    :cond_e
    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 313
    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    goto/16 :goto_3

    .line 335
    .restart local v19       #spriteLayerPicker:Lcom/htc/sunny2/Sprite$Layer;
    .restart local v50       #texturePicked:Lcom/htc/sunny2/Texture;
    :cond_f
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v3, v4, :cond_a

    .line 337
    const-string v3, "NAME_TEXTUREE_DELETE"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v50

    .line 338
    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v21, v0

    const/16 v24, 0x0

    move/from16 v22, v5

    move/from16 v23, v6

    invoke-virtual/range {v19 .. v24}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 339
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto/16 :goto_4
.end method

.method public freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 386
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 391
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunny2/Texture;

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 396
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunny2/Texture;

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 407
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V

    .line 408
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    .line 411
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v0

    .line 412
    .local v0, sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    if-eqz v0, :cond_4

    .line 413
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 414
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v1, :cond_4

    .line 415
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    .line 416
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->release()V

    .line 420
    :cond_4
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->freeResource()V

    .line 421
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 564
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method protected getSharedTexture()Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 558
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 114
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sget v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setMeasuredDimension(II)V

    .line 115
    return-void
.end method

.method public setBackground(I)V
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 755
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunny2/Texture;

    if-nez v2, :cond_0

    .line 757
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunny2/Texture;

    .line 767
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v4, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 768
    return-void

    .line 761
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 762
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 763
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 764
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 765
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0
    .parameter "contentGetter"

    .prologue
    .line 789
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    .line 790
    return-void
.end method

.method public setCorrupted(Z)V
    .locals 6
    .parameter "isCorrupted"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 631
    if-eqz p1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 634
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 635
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 636
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 637
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 638
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 639
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 640
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 642
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 649
    :goto_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    .line 651
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 658
    :goto_1
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_1
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 8
    .parameter "mediaData"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 673
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v0, v3

    .line 674
    .local v0, isDrm:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 676
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 677
    const/4 v1, 0x0

    .line 678
    .local v1, isStateSuccess:Z
    instance-of v4, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v4, :cond_1

    .line 680
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v1

    .line 682
    :cond_1
    if-eqz v1, :cond_3

    .line 684
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 685
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 704
    .end local v1           #isStateSuccess:Z
    :goto_1
    return-void

    .end local v0           #isDrm:Z
    .restart local p1
    :cond_2
    move v0, v2

    .line 673
    goto :goto_0

    .line 689
    .end local p1
    .restart local v0       #isDrm:Z
    .restart local v1       #isStateSuccess:Z
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 690
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 691
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 692
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 693
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 694
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 695
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_1

    .line 700
    .end local v1           #isStateSuccess:Z
    .restart local p1
    :cond_4
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 701
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 702
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_1
.end method

.method public setInked(Z)V
    .locals 2
    .parameter "isInked"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 708
    return-void
.end method

.method public setIs3D(Z)V
    .locals 2
    .parameter "is3D"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 712
    return-void
.end method

.method public setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 8
    .parameter "isSelected"
    .parameter "controller"

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 575
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v0

    .line 577
    .local v0, sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 579
    .local v2, useLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    packed-switch v3, :pswitch_data_0

    .line 618
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    .line 619
    invoke-virtual {v2, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 582
    :pswitch_0
    const/4 v1, 0x0

    .line 583
    .local v1, temp:Lcom/htc/sunny2/Texture;
    if-eqz p1, :cond_1

    .line 585
    const-string v3, "NAME_TEXTUREE_PICKED"

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 591
    :goto_1
    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {v2, v6, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_0

    .line 589
    :cond_1
    const-string v3, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_1

    .line 607
    .end local v1           #temp:Lcom/htc/sunny2/Texture;
    :pswitch_1
    if-eqz p1, :cond_2

    .line 609
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    .line 615
    :goto_2
    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 613
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    goto :goto_2

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlayable(Z)V
    .locals 2
    .parameter "isPlayable"

    .prologue
    .line 661
    if-eqz p1, :cond_0

    .line 663
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 670
    return-void

    .line 667
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 2
    .parameter "isPressed"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 17
    .parameter "style"

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move/from16 v0, p1

    iput v0, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v15

    .line 728
    .local v15, sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    if-nez v2, :cond_1

    .line 752
    .end local v15           #sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    :cond_0
    :goto_0
    return-void

    .line 730
    .restart local v15       #sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v14, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 731
    .local v14, nItemW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v13, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 733
    .local v13, nItemH:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 734
    .local v1, pickerLayer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v2, v3, :cond_2

    .line 736
    const-string v2, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v15, v2}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v16

    .line 737
    .local v16, unpickedTexture:Lcom/htc/sunny2/Texture;
    int-to-float v2, v14

    neg-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_X:I

    int-to-float v3, v3

    add-float v4, v2, v3

    .line 738
    .local v4, pickerX:F
    int-to-float v2, v13

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_Y:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    .line 740
    .local v5, pickerY:F
    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 741
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_0

    .line 743
    .end local v4           #pickerX:F
    .end local v5           #pickerY:F
    .end local v16           #unpickedTexture:Lcom/htc/sunny2/Texture;
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v2, v3, :cond_0

    .line 745
    const-string v2, "NAME_TEXTUREE_DELETE"

    invoke-virtual {v15, v2}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    .line 746
    .local v12, deleteTexture:Lcom/htc/sunny2/Texture;
    int-to-float v2, v14

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float v9, v2, v3

    .line 747
    .local v9, deleteX:F
    int-to-float v2, v13

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    .line 748
    .local v10, deleteY:F
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    int-to-float v8, v2

    const/4 v11, 0x0

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 749
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v12}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto/16 :goto_0
.end method

.method public setThumbTexture(Lcom/htc/sunny2/Texture;)V
    .locals 4
    .parameter "texture"

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 772
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 774
    if-eqz p1, :cond_0

    .line 776
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 778
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 779
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 786
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 784
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public unbindMediaData()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 528
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 529
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setThumbTexture(Lcom/htc/sunny2/Texture;)V

    .line 532
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 533
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 534
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 535
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 536
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 537
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 538
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 539
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 540
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 541
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 542
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 543
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 544
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 545
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 546
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 552
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTURE_BACKGROUND_DARK"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 554
    :cond_0
    return-void
.end method

.method public workaround_SetBestIndicator(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 941
    return-void
.end method

.method public workaround_SetBurstIndicator(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 937
    return-void
.end method
