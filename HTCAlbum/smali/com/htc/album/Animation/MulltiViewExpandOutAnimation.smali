.class public Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;
.super Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;
.source "MulltiViewExpandOutAnimation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MulltiViewExpandOutAnimation"


# instance fields
.field private mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

.field private mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mStartPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mView:Lcom/htc/sunny2/widget/gridview/GridView;

.field private mXPosSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mYPosSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/Vector3F;)V
    .locals 4
    .parameter "v"
    .parameter "startPosition"

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;-><init>()V

    .line 18
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mXPosSet:Ljava/util/TreeSet;

    .line 19
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mYPosSet:Ljava/util/TreeSet;

    .line 29
    iput-object p1, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 30
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 32
    if-nez p2, :cond_0

    .line 33
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    goto :goto_0
.end method

.method private calMidpointPosition(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/Vector3F;
    .locals 9
    .parameter "startPos"
    .parameter "endPos"
    .parameter "divideBase"

    .prologue
    const/4 v8, 0x0

    .line 197
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p3

    div-float v3, v6, v7

    .line 198
    .local v3, xOffset:F
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 199
    .local v4, yOffset:F
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p3

    div-float v5, v6, v7

    .line 201
    .local v5, zOffset:F
    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_0

    .line 202
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_1

    move v5, v4

    .line 203
    :goto_0
    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-gez v6, :cond_0

    neg-float v5, v5

    .line 208
    :cond_0
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 209
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float v0, v6, v3

    .line 215
    .local v0, newXstartPos:F
    :goto_1
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 216
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    add-float v1, v6, v4

    .line 222
    .local v1, newYstartPos:F
    :goto_2
    iget v6, p2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v7, p1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 223
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    add-float v2, v6, v5

    .line 229
    .local v2, newZstartPos:F
    :goto_3
    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v6, v0, v1, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    return-object v6

    .end local v0           #newXstartPos:F
    .end local v1           #newYstartPos:F
    .end local v2           #newZstartPos:F
    :cond_1
    move v5, v3

    .line 202
    goto :goto_0

    .line 212
    :cond_2
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v0, v6, v3

    .restart local v0       #newXstartPos:F
    goto :goto_1

    .line 219
    :cond_3
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float v1, v6, v4

    .restart local v1       #newYstartPos:F
    goto :goto_2

    .line 226
    :cond_4
    iget v6, p1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float v2, v6, v5

    .restart local v2       #newZstartPos:F
    goto :goto_3
.end method

.method private enterGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;FJ)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 4
    .parameter "startPos"
    .parameter "endPos"
    .parameter "startScale"
    .parameter "delayTime"

    .prologue
    const/high16 v3, 0x3f80

    .line 233
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 235
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v1, p3, p3, p3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 236
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 237
    const/16 v1, 0x40

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 240
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 241
    invoke-virtual {v0, p4, p5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 242
    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 243
    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 245
    return-object v0
.end method

.method private expand()V
    .locals 20

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    if-nez v2, :cond_0

    .line 144
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v18, "Can\'t prepare the ExpandOutAnimation for null GridView"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v16

    .line 148
    .local v16, xPosCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v17

    .line 150
    .local v17, yPosCount:I
    add-int v2, v16, v17

    add-int/lit8 v8, v2, -0x1

    .line 151
    .local v8, batchTime:I
    const-wide/16 v10, 0x0

    .line 152
    .local v10, delayTimeUnit:J
    const/4 v2, 0x1

    if-le v8, v2, :cond_1

    .line 153
    const/16 v2, 0x12c

    add-int/lit8 v18, v8, -0x1

    div-int v2, v2, v18

    int-to-long v10, v2

    .line 156
    :cond_1
    const/4 v5, 0x0

    .line 157
    .local v5, startScale:F
    const/4 v14, 0x0

    .line 158
    .local v14, tempSView:Lcom/htc/sunny2/view/SView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 160
    .local v13, originalStartPos:Lcom/htc/sunny2/view/Vector3F;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v8, :cond_7

    .line 162
    const-string v2, "MulltiViewExpandOutAnimation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][animationSetGridview][expand]:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    int-to-long v0, v12

    move-wide/from16 v18, v0

    mul-long v6, v18, v10

    .line 165
    .local v6, delayTime:J
    const/4 v15, 0x0

    .local v15, x:I
    :goto_1
    if-ge v15, v8, :cond_6

    sub-int v2, v12, v15

    if-ltz v2, :cond_6

    .line 166
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    sub-int v2, v12, v15

    move/from16 v0, v17

    if-lt v2, v0, :cond_3

    .line 165
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 169
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    sub-int v18, v12, v15

    aget-object v2, v2, v18

    aget-object v14, v2, v15

    .line 171
    if-eqz v14, :cond_2

    .line 173
    invoke-virtual {v14}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 176
    .local v4, endPos:Lcom/htc/sunny2/view/Vector3F;
    if-nez v12, :cond_4

    .line 177
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v2}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->calMidpointPosition(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .line 186
    .local v3, startPos:Lcom/htc/sunny2/view/Vector3F;
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    move-object/from16 v2, p0

    .line 187
    invoke-direct/range {v2 .. v7}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->enterGridViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;FJ)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v9

    .line 190
    .local v9, childController:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {v14, v9}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_2

    .line 179
    .end local v3           #startPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v9           #childController:Lcom/htc/sunny2/view/animation/SAnimationController;
    :cond_4
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    .line 180
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v2}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->calMidpointPosition(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .restart local v3       #startPos:Lcom/htc/sunny2/view/Vector3F;
    goto :goto_3

    .line 183
    .end local v3           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_5
    move-object v3, v13

    .restart local v3       #startPos:Lcom/htc/sunny2/view/Vector3F;
    goto :goto_3

    .line 160
    .end local v3           #startPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v4           #endPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 194
    .end local v6           #delayTime:J
    .end local v15           #x:I
    :cond_7
    return-void
.end method

.method private prepare()V
    .locals 21

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 59
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Can\'t prepare the ExpandOutAnimation for null GridView"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 62
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->clear()V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->clear()V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v9

    .line 66
    .local v9, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v6

    .line 67
    .local v6, last:I
    move v4, v9

    .local v4, i:I
    :goto_0
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    if-ge v4, v0, :cond_1

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    sub-int v19, v4, v9

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v2

    .line 69
    .local v2, child:Lcom/htc/sunny2/view/SView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/Float;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/Float;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .end local v2           #child:Lcom/htc/sunny2/view/SView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeSet;->size()I

    move-result v19

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    const-class v19, Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    .line 76
    const/4 v13, 0x0

    .line 77
    .local v13, xPosArray:[Ljava/lang/Float;
    const/16 v16, 0x0

    .line 79
    .local v16, yPosArray:[Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 85
    .local v7, originalStartPos:Lcom/htc/sunny2/view/Vector3F;
    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    .line 117
    :cond_2
    :goto_1
    array-length v14, v13

    .line 118
    .local v14, xPosCount:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 119
    .local v17, yPosCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/view/SView;

    .line 120
    .local v3, childView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v3}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v8

    .line 122
    .local v8, pos:Lcom/htc/sunny2/view/Vector3F;
    const/4 v10, 0x0

    .local v10, tempX:I
    const/4 v11, 0x0

    .line 124
    .local v11, tempY:I
    const/4 v12, 0x0

    .local v12, x:I
    :goto_3
    if-ge v12, v14, :cond_3

    .line 125
    aget-object v18, v13, v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    iget v0, v8, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_8

    .line 126
    move v10, v12

    .line 131
    :cond_3
    const/4 v15, 0x0

    .local v15, y:I
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 132
    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    iget v0, v8, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_9

    .line 133
    move v11, v15

    .line 137
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mAllGridSViewArray:[[Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    aput-object v3, v18, v10

    goto :goto_2

    .line 94
    .end local v3           #childView:Lcom/htc/sunny2/view/SView;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #pos:Lcom/htc/sunny2/view/Vector3F;
    .end local v10           #tempX:I
    .end local v11           #tempY:I
    .end local v12           #x:I
    .end local v14           #xPosCount:I
    .end local v15           #y:I
    .end local v17           #yPosCount:I
    :cond_5
    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_6

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 103
    :cond_6
    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_7

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 112
    :cond_7
    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    iget v0, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mCenterPosition:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 124
    .restart local v3       #childView:Lcom/htc/sunny2/view/SView;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #pos:Lcom/htc/sunny2/view/Vector3F;
    .restart local v10       #tempX:I
    .restart local v11       #tempY:I
    .restart local v12       #x:I
    .restart local v14       #xPosCount:I
    .restart local v17       #yPosCount:I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 131
    .restart local v15       #y:I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 139
    .end local v3           #childView:Lcom/htc/sunny2/view/SView;
    .end local v8           #pos:Lcom/htc/sunny2/view/Vector3F;
    .end local v10           #tempX:I
    .end local v11           #tempY:I
    .end local v12           #x:I
    .end local v15           #y:I
    :cond_a
    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->onAnimationEnd()V

    .line 251
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->mAnimationEndCount:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->disableLayoutRequest(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 41
    iget-object v2, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 42
    .local v1, start:I
    iget-object v2, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v0

    .line 43
    .local v0, last:I
    if-eq v1, v3, :cond_0

    if-ne v0, v3, :cond_2

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->reset()V

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_2
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->onStart()V

    .line 52
    iget-object v2, p0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->disableLayoutRequest(Z)V

    .line 53
    invoke-direct {p0}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->prepare()V

    .line 54
    invoke-direct {p0}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->expand()V

    goto :goto_0
.end method
