.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleTransitionAnimation"
.end annotation


# static fields
.field public static final DEFAULT:I


# instance fields
.field private final ALPHA_ADJUST:F

.field private ani_duration:J

.field private mCurrentTime:J

.field private mEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

.field private mEndTime:J

.field private mFirst:Z

.field private mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field private mFromScaleX:F

.field private mFromScaleY:F

.field private mFromX:F

.field private mFromY:F

.field private mIsIn:Z

.field private mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

.field private mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field private mScale:Z

.field private mStartTime:J

.field private mToScaleX:F

.field private mToScaleY:F

.field private mToX:F

.field private mToY:F

.field private mTouchedGridViewItemIndex:I

.field private mTransition:Z

.field private mViewRoot:Lcom/htc/sunny2/view/SView;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;ZIILcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;)V
    .locals 2
    .parameter
    .parameter "host"
    .parameter "name"
    .parameter "item"
    .parameter "listener"
    .parameter "viewRoot"
    .parameter "frame"
    .parameter "isIn"
    .parameter "duration"
    .parameter "touchedGridViewItemIndex"
    .parameter "endListener"

    .prologue
    .line 1921
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 1922
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1894
    const-wide/16 v0, 0xb

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    .line 1896
    const v0, 0x3f19999a

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ALPHA_ADJUST:F

    .line 1897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 1900
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    .line 1901
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    .line 1902
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    .line 1903
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    .line 1904
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    .line 1905
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    .line 1906
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    .line 1907
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    .line 1909
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mStartTime:J

    .line 1910
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    .line 1911
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    .line 1912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFirst:Z

    .line 1915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mViewRoot:Lcom/htc/sunny2/view/SView;

    .line 1916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 1917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    .line 1918
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTouchedGridViewItemIndex:I

    .line 1919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    .line 1923
    iput-object p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 1924
    iput-object p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 1925
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    .line 1926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mScale:Z

    .line 1927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTransition:Z

    .line 1928
    iput-object p6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mViewRoot:Lcom/htc/sunny2/view/SView;

    .line 1929
    iput-object p7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 1930
    iput-boolean p8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    .line 1931
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    .line 1932
    iput p10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTouchedGridViewItemIndex:I

    .line 1933
    iput-object p11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    .line 1934
    return-void
.end method

.method private stepEaseInOutFunction(FFFF)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 2069
    cmpl-float v7, v3, p4

    if-nez v7, :cond_0

    .line 2107
    :goto_0
    return v3

    .line 2071
    :cond_0
    const/4 v3, 0x0

    .line 2072
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 2073
    .local v5, tc:F
    move v4, p1

    .line 2074
    .local v4, t:F
    move v0, p2

    .line 2075
    .local v0, b:F
    move v1, p3

    .line 2076
    .local v1, c:F
    move v2, p4

    .line 2090
    .local v2, d:F
    div-float v7, v4, v2

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    .line 2107
    goto :goto_0
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 5
    .parameter "cancelReason"

    .prologue
    .line 2060
    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 2062
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setIndicatorSpriteVisibility(Z)V

    .line 2063
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 2064
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2066
    :cond_0
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 21
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 1952
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mScale:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTransition:Z

    if-nez v4, :cond_2

    .line 1954
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v4}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 1955
    :cond_1
    const/4 v4, 0x0

    .line 2055
    :goto_0
    return v4

    .line 1957
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->isReady()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-boolean v4, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_5

    .line 1959
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v4}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 1960
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 1962
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFirst:Z

    if-eqz v4, :cond_16

    .line 1963
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mStartTime:J

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    .line 1964
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mStartTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    .line 1965
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_6

    .line 1966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    .line 1967
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_7

    .line 1968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    .line 1970
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_8

    .line 1971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    .line 1972
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_9

    .line 1973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    .line 1975
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFrameWidth()F

    move-result v4

    float-to-int v0, v4

    move/from16 v16, v0

    .line 1976
    .local v16, screenW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFrameHeight()F

    move-result v4

    float-to-int v15, v4

    .line 1977
    .local v15, screenH:I
    div-int/lit8 v11, v16, 0x2

    .line 1978
    .local v11, adjustW:I
    div-int/lit8 v10, v15, 0x2

    .line 1980
    .local v10, adjustH:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_a

    .line 1981
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    int-to-float v0, v11

    move/from16 v17, v0

    sub-float v4, v4, v17

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    .line 1983
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_b

    .line 1984
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    int-to-float v0, v10

    move/from16 v17, v0

    add-float v4, v4, v17

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    .line 1987
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_c

    .line 1988
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    int-to-float v0, v11

    move/from16 v17, v0

    sub-float v4, v4, v17

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    .line 1990
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_d

    .line 1991
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    int-to-float v0, v10

    move/from16 v17, v0

    add-float v4, v4, v17

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    .line 1994
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 1995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setIndicatorSpriteVisibility(Z)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v4, :cond_e

    .line 1997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v4}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 1998
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mViewRoot:Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_f

    .line 1999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mViewRoot:Lcom/htc/sunny2/view/SView;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 2002
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFirst:Z

    .line 2007
    .end local v10           #adjustH:I
    .end local v11           #adjustW:I
    .end local v15           #screenH:I
    .end local v16           #screenW:I
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    move-wide/from16 v19, v0

    cmp-long v4, v17, v19

    if-lez v4, :cond_10

    .line 2008
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    .line 2010
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mStartTime:J

    move-wide/from16 v19, v0

    sub-long v13, v17, v19

    .line 2011
    .local v13, offset:J
    long-to-float v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->stepEaseInOutFunction(FFFF)F

    move-result v6

    .line 2012
    .local v6, currentWidth:F
    long-to-float v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->stepEaseInOutFunction(FFFF)F

    move-result v7

    .line 2013
    .local v7, currentHeight:F
    long-to-float v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->stepEaseInOutFunction(FFFF)F

    move-result v8

    .line 2014
    .local v8, currentX:F
    long-to-float v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->stepEaseInOutFunction(FFFF)F

    move-result v9

    .line 2016
    .local v9, currentY:F
    const/high16 v5, 0x3f80

    .line 2017
    .local v5, fitToScreenAspectRatio:F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    if-eqz v4, :cond_17

    .line 2018
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    move/from16 v17, v0

    div-float v5, v4, v17

    .line 2022
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdateWithUVAdjust(FFFFF)V

    .line 2024
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    if-eqz v4, :cond_18

    .line 2025
    const v4, 0x3f19999a

    long-to-float v0, v13

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    add-float v12, v4, v17

    .line 2029
    .local v12, alpha:F
    :goto_3
    const/high16 v4, 0x3f80

    cmpl-float v4, v12, v4

    if-lez v4, :cond_11

    .line 2030
    const/high16 v12, 0x3f80

    .line 2033
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4, v12}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onSetImageAlpha(F)V

    .line 2035
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    move-wide/from16 v19, v0

    cmp-long v4, v17, v19

    if-nez v4, :cond_19

    .line 2037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 2040
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    if-nez v4, :cond_12

    .line 2042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onSetImageAlpha(F)V

    .line 2045
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    if-eqz v4, :cond_13

    .line 2046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setIndicatorSpriteVisibility(Z)V

    .line 2048
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v4}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2049
    :cond_14
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTouchedGridViewItemIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v4, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    if-eqz v4, :cond_15

    .line 2051
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTouchedGridViewItemIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;->onSceneAnimationEndIRT(I)V

    .line 2053
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2004
    .end local v5           #fitToScreenAspectRatio:F
    .end local v6           #currentWidth:F
    .end local v7           #currentHeight:F
    .end local v8           #currentX:F
    .end local v9           #currentY:F
    .end local v12           #alpha:F
    .end local v13           #offset:J
    :cond_16
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    goto/16 :goto_1

    .line 2020
    .restart local v5       #fitToScreenAspectRatio:F
    .restart local v6       #currentWidth:F
    .restart local v7       #currentHeight:F
    .restart local v8       #currentX:F
    .restart local v9       #currentY:F
    .restart local v13       #offset:J
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    move/from16 v17, v0

    div-float v5, v4, v17

    goto/16 :goto_2

    .line 2027
    :cond_18
    const v4, 0x3fcccccd

    long-to-float v0, v13

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    sub-float v12, v4, v17

    .restart local v12       #alpha:F
    goto/16 :goto_3

    .line 2055
    :cond_19
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public setScale(FFFF)V
    .locals 1
    .parameter "fromScaleX"
    .parameter "fromScaleY"
    .parameter "toScaleX"
    .parameter "toScaleY"

    .prologue
    .line 1936
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    .line 1937
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    .line 1938
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    .line 1939
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    .line 1940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mScale:Z

    .line 1941
    return-void
.end method

.method public setTransition(IIII)V
    .locals 1
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 1944
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    .line 1945
    int-to-float v0, p2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    .line 1946
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    .line 1947
    int-to-float v0, p4

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    .line 1948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTransition:Z

    .line 1949
    return-void
.end method
