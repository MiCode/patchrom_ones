.class public Lcom/htc/sunny2/widget/gridview/GridItemFolder;
.super Lcom/htc/sunny2/widget/gridview/GridViewItem;
.source "GridItemFolder.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemFolder;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotItemFolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridItemFolder$1;,
        Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = " "

.field private static final FOLDER_ITEM_SPRITE_LAYER_BKG:I = 0x0

.field private static final FOLDER_ITEM_SPRITE_LAYER_COUNT:I = 0x2

.field private static final FOLDER_ITEM_SPRITE_LAYER_THUMB:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GridItemFolder"

.field private static final ROTATE_DEGREE:F = -8.0f

.field protected static final SPRITE_LAYER_BACKGROUND:I = 0x1

.field protected static final SPRITE_LAYER_COUNT:I = 0x3

.field protected static final SPRITE_LAYER_FOLDER_NAME:I = 0x2

.field protected static final SPRITE_LAYER_SELECTOR:I


# instance fields
.field private mBGTexture:Lcom/htc/sunny2/Texture;

.field private mBkSprite:Lcom/htc/sunny2/Sprite;

.field private mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

.field private mDataIndex:I

.field private mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

.field private mFolderSprite:[Lcom/htc/sunny2/Sprite;

.field private mIsSelected:Z

.field private mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

.field private mMediaData:Lcom/htc/sunny2/IMediaData;

.field private mSelectedTexture:Lcom/htc/sunny2/Texture;

.field private mShareTextureKey:Ljava/lang/String;

.field private mTextTextureContainer:Lcom/htc/sunny2/Texture;

.field private mTextViewContainer:Landroid/view/ViewGroup;

.field private mTextViewDateTime:Landroid/widget/TextView;

.field private mTextViewName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 1
    .parameter "context"
    .parameter "sContext"
    .parameter "param"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "sContext"
    .parameter "param"
    .parameter "prototypeKey"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mDataIndex:I

    .line 73
    invoke-static {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    .line 75
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    .line 77
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder;Lcom/htc/sunny2/widget/gridview/GridItemFolder$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    .line 78
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mIsSelected:Z

    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 88
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget-boolean v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->enableItemFixedDimension()V

    .line 91
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->enableItemFocusedAnimation()V

    .line 94
    :cond_0
    if-nez p4, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemFolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    .line 105
    :goto_0
    new-instance v0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setItemAnimation(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 106
    return-void

    .line 100
    :cond_1
    iput-object p4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunny2/RenderThreadHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunny2/RenderThreadHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunny2/RenderThreadHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    return-object v0
.end method

.method private adjustRotation4FolderSprite(Lcom/htc/sunny2/Sprite;I)F
    .locals 4
    .parameter "sprite"
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x3f00

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, fRotation:F
    const/4 v1, 0x1

    if-ne v1, p2, :cond_2

    .line 742
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    mul-float v0, v1, v2

    .line 746
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 747
    invoke-virtual {p1, v3, v3, v0}, Lcom/htc/sunny2/Sprite;->setRotate(FFF)V

    .line 749
    :cond_1
    return v0

    .line 743
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 744
    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method private setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter "szName"
    .parameter "szDateTime"

    .prologue
    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 666
    .local v2, spriteText:Lcom/htc/sunny2/Sprite$Layer;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 668
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 732
    :goto_0
    return-void

    .line 671
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v13, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 672
    .local v13, nItemW:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v12, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 676
    .local v12, nItemH:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 679
    .local v9, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/ViewGroup;

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewName:Landroid/widget/TextView;

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewDateTime:Landroid/widget/TextView;

    .line 685
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewName:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewDateTime:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    .line 690
    .local v18, textViewContainer:Landroid/view/ViewGroup;
    const/high16 v3, 0x4000

    invoke-static {v13, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 691
    .local v11, measureW:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 692
    .local v10, measureH:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v10}, Landroid/view/ViewGroup;->measure(II)V

    .line 693
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v13, v7}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 696
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    .line 698
    .local v14, nTextNewHeight:I
    const/4 v5, 0x0

    .line 699
    .local v5, fOrigXImage:F
    const/4 v6, 0x0

    .line 700
    .local v6, fOrigYTextview:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemToTextGap()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v14

    const/high16 v7, 0x4000

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    int-to-float v4, v12

    const/high16 v7, 0x4000

    div-float/2addr v4, v7

    sub-float v6, v3, v4

    .line 702
    invoke-virtual {v2}, Lcom/htc/sunny2/Sprite$Layer;->getGeometry()[I

    move-result-object v8

    .line 703
    .local v8, geometry:[I
    const/4 v3, 0x0

    aget v3, v8, v3

    if-ne v13, v3, :cond_2

    const/4 v3, 0x1

    aget v3, v8, v3

    if-ne v14, v3, :cond_2

    float-to-int v3, v5

    const/4 v4, 0x2

    aget v4, v8, v4

    if-ne v3, v4, :cond_2

    float-to-int v3, v6

    const/4 v4, 0x3

    aget v4, v8, v4

    if-eq v3, v4, :cond_3

    .line 709
    :cond_2
    int-to-float v3, v13

    int-to-float v4, v14

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 712
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    .line 713
    .local v17, textTexture:Lcom/htc/sunny2/Texture;
    if-nez v17, :cond_4

    .line 715
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v17

    .line 716
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 717
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunny2/Texture;

    .line 724
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v16

    .line 725
    .local v16, nTextTextureW:I
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v15

    .line 727
    .local v15, nTextTextureH:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v7, v13

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v7, v7, v19

    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v7, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 731
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 721
    .end local v15           #nTextTextureH:I
    .end local v16           #nTextTextureW:I
    :cond_4
    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Texture;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setupAnimation(IIILcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V
    .locals 11
    .parameter "folderIdx"
    .parameter "duration"
    .parameter "delayTime"
    .parameter "postionOffset"
    .parameter "rotateOffset"
    .parameter "intpolator"

    .prologue
    .line 548
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge p1, v5, :cond_0

    .line 550
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v4, v5, p1

    .line 552
    .local v4, s:Lcom/htc/sunny2/Sprite;
    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->getPosition()[F

    move-result-object v2

    .line 553
    .local v2, pos:[F
    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->getRotate()[F

    move-result-object v3

    .line 555
    .local v3, rotate:[F
    new-instance v1, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 556
    .local v1, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    int-to-long v5, p2

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 557
    int-to-long v5, p3

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 558
    new-instance v5, Lcom/htc/sunny2/view/Vector3F;

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v8, v2, v8

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    const/4 v7, 0x0

    aget v7, v2, v7

    iget v8, p4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v2, v8

    iget v9, p4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v2, v9

    iget v10, p4, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    add-float/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 560
    new-instance v5, Lcom/htc/sunny2/view/Vector3F;

    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    const/4 v8, 0x2

    aget v8, v3, v8

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    const/4 v7, 0x0

    aget v7, v3, v7

    move-object/from16 v0, p5

    iget v8, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    move-object/from16 v0, p5

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    move-object/from16 v0, p5

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    add-float/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 562
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 564
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v4, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;Lcom/htc/sunny2/Sprite;Lcom/htc/sunny2/view/animation/SAnimationController;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->addUnit(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;)V

    .line 566
    .end local v1           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v2           #pos:[F
    .end local v3           #rotate:[F
    .end local v4           #s:Lcom/htc/sunny2/Sprite;
    :cond_0
    return-void
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 21
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    .line 310
    if-nez p2, :cond_1

    .line 312
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MediaData="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is null at bindMediaData"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 313
    .local v12, msg:Ljava/lang/String;
    const-string v18, "GridItemFolder"

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v12           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mDataIndex:I

    .line 318
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mMediaData:Lcom/htc/sunny2/IMediaData;

    .line 320
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/htc/sunny2/IMediaDataFolder;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v11, p2

    .line 322
    check-cast v11, Lcom/htc/sunny2/IMediaDataFolder;

    .line 323
    .local v11, mediaFolder:Lcom/htc/sunny2/IMediaDataFolder;
    invoke-interface {v11}, Lcom/htc/sunny2/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, folderName:Ljava/lang/String;
    invoke-interface {v11}, Lcom/htc/sunny2/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, dateName:Ljava/lang/String;
    if-nez v7, :cond_2

    const-string v7, " "

    .end local v7           #folderName:Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_3

    const-string v5, " "

    .end local v5           #dateName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v11           #mediaFolder:Lcom/htc/sunny2/IMediaDataFolder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 332
    const/4 v13, 0x0

    .local v13, nIndex:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_5

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v13}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Lcom/htc/sunny2/Texture;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v13, v2}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setThumbTexture(IILcom/htc/sunny2/Texture;)V

    .line 332
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 339
    .end local v13           #nIndex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V

    .line 342
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 345
    .local v15, nItemW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 347
    .local v14, nItemH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v8

    .line 348
    .local v8, itemHeight:I
    sub-int v18, v8, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v4, v18, v19

    .line 349
    .local v4, bgTextureY:F
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v10

    .line 350
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v13, 0x0

    .restart local v13       #nIndex:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_8

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    move-object/from16 v18, v0

    aget-object v16, v18, v13

    .line 353
    .local v16, sprite:Lcom/htc/sunny2/Sprite;
    const/16 v18, 0x0

    neg-float v0, v4

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->adjustRotation4FolderSprite(Lcom/htc/sunny2/Sprite;I)F

    .line 355
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v13, :cond_7

    .line 356
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/sunny2/IMediaData;

    .line 357
    .local v17, subMediaData:Lcom/htc/sunny2/IMediaData;
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 358
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v9

    .line 359
    .local v9, layer:Lcom/htc/sunny2/Sprite$Layer;
    check-cast v17, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local v17           #subMediaData:Lcom/htc/sunny2/IMediaData;
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v6

    .line 360
    .local v6, degree:I
    if-eqz v6, :cond_7

    .line 361
    invoke-virtual {v9, v6}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 350
    .end local v6           #degree:I
    .end local v9           #layer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 367
    .end local v4           #bgTextureY:F
    .end local v8           #itemHeight:I
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    .end local v13           #nIndex:I
    .end local v14           #nItemH:I
    .end local v15           #nItemW:I
    .end local v16           #sprite:Lcom/htc/sunny2/Sprite;
    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->isSelected()Z

    move-result v18

    if-eqz v18, :cond_0

    goto/16 :goto_0
.end method

.method public create()Lcom/htc/sunny2/ViewItem;
    .locals 4

    .prologue
    .line 298
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v1

    .line 299
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 301
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    .line 302
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    .line 303
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 304
    return-object v0
.end method

.method public create(Z)Lcom/htc/sunny2/ViewItem;
    .locals 1
    .parameter "isChild"

    .prologue
    .line 736
    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 21

    .prologue
    .line 118
    invoke-super/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->createResource()V

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v19

    .line 121
    .local v19, sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    if-nez v19, :cond_0

    .line 123
    new-instance v19, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;

    .end local v19           #sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v7}, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;-><init>(Landroid/content/Context;II)V

    .line 126
    .restart local v19       #sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;)V

    .line 129
    :cond_0
    move-object/from16 v0, v19

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 131
    const-string v3, "NAME_TEXTURE_BACKGROUND"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    .line 132
    const-string v3, "NAME_TEXTURE_SELECTED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSelectedTexture:Lcom/htc/sunny2/Texture;

    .line 139
    const/16 v17, 0x0

    .line 141
    .local v17, nItemHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->isItemFixedDimension()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemDimension()I

    move-result v14

    .line 144
    .local v14, nImageDimension:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iput v14, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemToTextGap()I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    add-int/2addr v4, v7

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 154
    :cond_2
    move/from16 v17, v14

    .line 169
    .end local v14           #nImageDimension:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move/from16 v18, v0

    .line 170
    .local v18, nItemWTotal:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move/from16 v16, v0

    .line 174
    .local v16, nItemHTotal:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_6

    .line 176
    sub-int v3, v17, v16

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 177
    .local v13, bgTextureY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    new-array v3, v3, [Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    .line 178
    const/4 v15, 0x0

    .local v15, nIndex:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v15, v3, :cond_6

    .line 180
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v20

    .line 181
    .local v20, sprite:Lcom/htc/sunny2/Sprite;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aput-object v20, v3, v15

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 184
    const/4 v3, 0x0

    neg-float v4, v13

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v7}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->adjustRotation4FolderSprite(Lcom/htc/sunny2/Sprite;I)F

    .line 187
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 188
    .local v2, layer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    int-to-float v3, v3

    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 189
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 191
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 197
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 178
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 158
    .end local v2           #layer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v13           #bgTextureY:F
    .end local v15           #nIndex:I
    .end local v16           #nItemHTotal:I
    .end local v18           #nItemWTotal:I
    .end local v20           #sprite:Lcom/htc/sunny2/Sprite;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 161
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemToTextGap()I

    move-result v7

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    add-int/2addr v4, v7

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 164
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    goto/16 :goto_0

    .line 202
    .restart local v16       #nItemHTotal:I
    .restart local v18       #nItemWTotal:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_7

    .line 204
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 208
    :cond_7
    const/4 v5, 0x0

    .line 209
    .local v5, mImgOriginalX:F
    const/4 v2, 0x0

    .line 212
    .restart local v2       #layer:Lcom/htc/sunny2/Sprite$Layer;
    sub-int v3, v17, v16

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v6, v3, v4

    .line 213
    .local v6, selectedTextureY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 214
    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 215
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSelectedTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 216
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    sub-int v3, v3, v17

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 220
    .restart local v13       #bgTextureY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v9, v3

    const/high16 v3, 0x4000

    add-float v11, v13, v3

    const/4 v12, 0x0

    move-object v7, v2

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 222
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 223
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 227
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 228
    return-void
.end method

.method public enableSnapShotFolderImageIRT(Z)V
    .locals 7
    .parameter "bEnable"

    .prologue
    const/4 v6, 0x1

    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, nNodeId:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-lt v6, v3, :cond_1

    .line 504
    :cond_0
    return-void

    .line 494
    :cond_1
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v2, v3, v0

    .line 497
    .local v2, sprite:Lcom/htc/sunny2/Sprite;
    invoke-virtual {v2}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v1

    .line 498
    invoke-virtual {v2}, Lcom/htc/sunny2/Sprite;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 500
    invoke-static {v1, v6, v6}, Lcom/htc/sunny2/Sunny2;->SceneNode_RemovePartialSceneRenderFlag(IIZ)V

    .line 501
    const-string v3, "GridItemFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GridItemFolder][enableSnapShotFolderImageIRT]: hide: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public enableSnapShotSelectorIRT(Z)V
    .locals 5
    .parameter "bEnable"

    .prologue
    const/4 v4, 0x1

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, nNodeId:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-lt v4, v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    .line 480
    if-eqz p1, :cond_1

    .line 481
    invoke-static {v0, v4, v4}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddPartialSceneRenderFlag(IIZ)V

    goto :goto_0

    .line 484
    :cond_1
    const-string v1, "GridItemFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GridItemFolder][enableSnapShotSelectorIRT]: hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static {v0, v4, v4}, Lcom/htc/sunny2/Sunny2;->SceneNode_RemovePartialSceneRenderFlag(IIZ)V

    goto :goto_0
.end method

.method public freeResource()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 233
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->stop()V

    .line 235
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 238
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunny2/Texture;

    .line 241
    :cond_0
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/ViewGroup;

    .line 242
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewName:Landroid/widget/TextView;

    .line 243
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewDateTime:Landroid/widget/TextView;

    .line 245
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_2

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v3, v0

    .line 250
    .local v1, s:Lcom/htc/sunny2/Sprite;
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 251
    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V

    .line 252
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aput-object v4, v3, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v1           #s:Lcom/htc/sunny2/Sprite;
    :cond_1
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    .line 257
    .end local v0           #i:I
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 260
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->release()V

    .line 261
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunny2/Sprite;

    .line 264
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v2

    .line 265
    .local v2, sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    if-eqz v2, :cond_4

    .line 267
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 268
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v3, :cond_4

    .line 270
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    .line 271
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->release()V

    .line 275
    :cond_4
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->freeResource()V

    .line 276
    return-void
.end method

.method public getFolderItemCount()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    return v0
.end method

.method public getOriginalPosition()[Lcom/htc/sunny2/view/Vector3F;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 515
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 516
    .local v4, nItemW:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 517
    .local v3, nItemH:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    .line 519
    .local v2, itemHeight:I
    sub-int v6, v2, v3

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float v0, v6, v7

    .line 520
    .local v0, bgTextureY:F
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    new-array v5, v6, [Lcom/htc/sunny2/view/Vector3F;

    .line 521
    .local v5, pos:[Lcom/htc/sunny2/view/Vector3F;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v1, v6, :cond_0

    .line 523
    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    neg-float v7, v0

    invoke-direct {v6, v8, v7, v8}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v6, v5, v1

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_0
    return-object v5
.end method

.method public getOriginalRotation()[Lcom/htc/sunny2/view/Vector3F;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 531
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    new-array v1, v2, [Lcom/htc/sunny2/view/Vector3F;

    .line 532
    .local v1, rot:[Lcom/htc/sunny2/view/Vector3F;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v2, :cond_0

    .line 534
    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->adjustRotation4FolderSprite(Lcom/htc/sunny2/Sprite;I)F

    move-result v3

    invoke-direct {v2, v4, v4, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v2, v1, v0

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_0
    return-object v1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 112
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v1, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 113
    .local v1, nItemW:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 114
    .local v0, nItemH:I
    invoke-virtual {p0, v1, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setMeasuredDimension(II)V

    .line 115
    return-void
.end method

.method public setAlpha4FolderItem(IF)V
    .locals 3
    .parameter "nIndex"
    .parameter "fAlpha"

    .prologue
    .line 583
    const/4 v0, 0x0

    .local v0, nImageIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v2, :cond_1

    .line 585
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v2, v0

    .line 586
    .local v1, sprite:Lcom/htc/sunny2/Sprite;
    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_0

    .line 588
    invoke-virtual {v1, p2}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    .line 583
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    .end local v1           #sprite:Lcom/htc/sunny2/Sprite;
    :cond_1
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 419
    return-void
.end method

.method public setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0
    .parameter "contentGetter"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;

    .line 465
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "isPressed"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 414
    return-void
.end method

.method public setThumbTexture(IILcom/htc/sunny2/Texture;)V
    .locals 6
    .parameter "nIndexFolder"
    .parameter "nIndexImage"
    .parameter "texture"

    .prologue
    const/4 v4, 0x1

    .line 429
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-lt p2, v3, :cond_0

    .line 431
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 436
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v2, v3, p2

    .line 437
    .local v2, sprite:Lcom/htc/sunny2/Sprite;
    invoke-virtual {v2, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 438
    .local v1, layer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, isVisible:Z
    if-nez p2, :cond_3

    .line 443
    invoke-virtual {v2, v4}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 444
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_2

    .line 445
    :cond_1
    const/4 v0, 0x0

    .line 449
    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 461
    :goto_1
    return-void

    .line 447
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 453
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_5

    .line 454
    :cond_4
    const/4 v0, 0x0

    .line 458
    :goto_2
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 459
    invoke-virtual {v2, v0}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto :goto_1

    .line 456
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public setThumbTexture(Lcom/htc/sunny2/Texture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 423
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setThumbTexture(IILcom/htc/sunny2/Texture;)V

    .line 424
    return-void
.end method

.method public setupSpriteAnimation(ILcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 4
    .parameter "folderIdx"
    .parameter "controller"

    .prologue
    .line 570
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 572
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v0, v1, p1

    .line 573
    .local v0, s:Lcom/htc/sunny2/Sprite;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0, p2}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;Lcom/htc/sunny2/Sprite;Lcom/htc/sunny2/view/animation/SAnimationController;)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->addUnit(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;)V

    .line 575
    .end local v0           #s:Lcom/htc/sunny2/Sprite;
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->start()V

    .line 580
    return-void
.end method

.method public unbindMediaData()V
    .locals 4

    .prologue
    .line 379
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mMediaData:Lcom/htc/sunny2/IMediaData;

    .line 380
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mDataIndex:I

    .line 381
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_0

    .line 382
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v1, v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v2, v3, v1

    .line 384
    .local v2, sprite:Lcom/htc/sunny2/Sprite;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 385
    .local v0, layer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v0           #layer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v1           #nIndex:I
    .end local v2           #sprite:Lcom/htc/sunny2/Sprite;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->stop()V

    .line 389
    return-void
.end method
