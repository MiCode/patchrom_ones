.class public Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
.super Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;
.source "FadeInAndCollapsedAnimation.java"


# instance fields
.field private mEnableTransition:Z

.field private mTargetChildIdx:I

.field private mView:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;I)V
    .locals 6
    .parameter "v"
    .parameter "targetChildIdx"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;-><init>()V

    .line 17
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableTransitionCache4GridviewFolderList()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mEnableTransition:Z

    .line 21
    iput-object p1, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 22
    iput p2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mTargetChildIdx:I

    .line 24
    iget-boolean v2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mEnableTransition:Z

    if-nez v2, :cond_0

    .line 25
    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setAlphaAnimation(II)V

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v1

    .line 28
    .local v1, startPos:Lcom/htc/sunny2/view/Vector3F;
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    .line 29
    .local v0, endPos:Lcom/htc/sunny2/view/Vector3F;
    iget v2, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v3, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    const/high16 v5, -0x3c6a

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 32
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setFillAfter(Z)V

    .line 33
    const-wide/16 v2, 0x258

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setDuration(J)V

    .line 34
    sget-object v2, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 36
    return-void
.end method

.method private onPlayFolderCollapse()V
    .locals 24

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mTargetChildIdx:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v12

    .line 65
    .local v12, mTargetChildView:Lcom/htc/sunny2/view/SView;
    instance-of v0, v12, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object v11, v12

    .line 66
    check-cast v11, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 68
    .local v11, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getFolderItemCount()I

    move-result v13

    .line 69
    .local v13, nImageCount:I
    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getOriginalPosition()[Lcom/htc/sunny2/view/Vector3F;

    move-result-object v16

    .line 70
    .local v16, positions:[Lcom/htc/sunny2/view/Vector3F;
    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getOriginalRotation()[Lcom/htc/sunny2/view/Vector3F;

    move-result-object v17

    .line 71
    .local v17, rotations:[Lcom/htc/sunny2/view/Vector3F;
    if-eqz v16, :cond_0

    if-eqz v17, :cond_0

    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v13, v0, :cond_1

    .line 111
    .end local v11           #item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    .end local v13           #nImageCount:I
    .end local v16           #positions:[Lcom/htc/sunny2/view/Vector3F;
    .end local v17           #rotations:[Lcom/htc/sunny2/view/Vector3F;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v11       #item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    .restart local v13       #nImageCount:I
    .restart local v16       #positions:[Lcom/htc/sunny2/view/Vector3F;
    .restart local v17       #rotations:[Lcom/htc/sunny2/view/Vector3F;
    :cond_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 77
    .local v14, num:I
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 79
    const/16 v6, 0x12c

    .line 80
    .local v6, duration:I
    sget-object v10, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 81
    .local v10, intpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;
    const/16 v5, 0x190

    .line 82
    .local v5, delay:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v14, :cond_2

    .line 85
    new-instance v4, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 86
    .local v4, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    int-to-long v0, v6

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 87
    int-to-long v0, v5

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 88
    invoke-virtual {v4, v10}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 89
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 91
    aget-object v7, v16, v9

    .line 92
    .local v7, endPos:Lcom/htc/sunny2/view/Vector3F;
    sget-object v20, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_POSTION_OFFSET:[Lcom/htc/sunny2/view/Vector3F;

    aget-object v15, v20, v9

    .line 93
    .local v15, off:Lcom/htc/sunny2/view/Vector3F;
    new-instance v18, Lcom/htc/sunny2/view/Vector3F;

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v20, v0

    iget v0, v15, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v21, v0

    iget v0, v15, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v22, v0

    iget v0, v15, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    .line 96
    .local v18, startPos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 98
    aget-object v8, v17, v9

    .line 99
    .local v8, endRote:Lcom/htc/sunny2/view/Vector3F;
    sget-object v20, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_ROTATION_OFFSET:[Lcom/htc/sunny2/view/Vector3F;

    aget-object v15, v20, v9

    .line 100
    new-instance v19, Lcom/htc/sunny2/view/Vector3F;

    iget v0, v8, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v20, v0

    iget v0, v15, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v8, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v21, v0

    iget v0, v15, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v22, v0

    iget v0, v15, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-direct/range {v19 .. v22}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    .line 103
    .local v19, startRot:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 104
    const/16 v20, 0x0

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 106
    invoke-virtual {v11, v9, v4}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setupSpriteAnimation(ILcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 82
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 109
    .end local v4           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v7           #endPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v8           #endRote:Lcom/htc/sunny2/view/Vector3F;
    .end local v15           #off:Lcom/htc/sunny2/view/Vector3F;
    .end local v18           #startPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v19           #startRot:Lcom/htc/sunny2/view/Vector3F;
    :cond_2
    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->startAnimation()V

    goto/16 :goto_0
.end method


# virtual methods
.method public animate()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->animate()V

    .line 41
    iget-wide v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 42
    .local v0, ratio:F
    const/high16 v1, 0x3e80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 45
    :cond_0
    return-void
.end method

.method protected isValidAnimation()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t prepare the FadeInAndCollapsedAnimation for null GridView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->onStart()V

    .line 60
    return-void
.end method
