.class Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FakeAnimationControl"
.end annotation


# instance fields
.field private mDisable1:I

.field private mDisable2:I

.field private mDisableCount:I

.field private mFirstUpdateIndex:I

.field private mIndexOffset:I

.field private mIsFakeAnimation:Z

.field private mLastUpdateIndex:I

.field private mPosOffset:I

.field private mTartgetFocuIndex:I

.field private mTotalContainers:I

.field private mTotalItems:I

.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2765
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2767
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 2768
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 2769
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIndexOffset:I

    .line 2770
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTotalItems:I

    .line 2771
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTotalContainers:I

    .line 2772
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 2773
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2775
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    .line 2776
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2777
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    .line 2778
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    return-void
.end method


# virtual methods
.method public getFirstUpdateIndex()I
    .locals 1

    .prologue
    .line 2817
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    return v0
.end method

.method public getLastUpdateIndex()I
    .locals 1

    .prologue
    .line 2821
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    return v0
.end method

.method public getPosOffset()I
    .locals 1

    .prologue
    .line 2813
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    return v0
.end method

.method public getTargetFocusIndex()I
    .locals 1

    .prologue
    .line 2825
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    return v0
.end method

.method public init(IIII)V
    .locals 3
    .parameter "nStartIndex"
    .parameter "nIndexOffset"
    .parameter "nTotalItems"
    .parameter "nTotalContainers"

    .prologue
    const/4 v2, 0x1

    .line 2781
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->reset()V

    .line 2782
    iput p2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIndexOffset:I

    .line 2783
    iput p3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTotalItems:I

    .line 2784
    iput p4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTotalContainers:I

    .line 2785
    add-int v0, p1, p2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 2787
    add-int v0, p1, p2

    if-ge v0, p3, :cond_0

    add-int v0, p1, p2

    if-gez v0, :cond_1

    .line 2810
    :cond_0
    :goto_0
    return-void

    .line 2791
    :cond_1
    if-lez p2, :cond_2

    .line 2792
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_0

    .line 2793
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2794
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    .line 2795
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 2796
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 2797
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2798
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0

    .line 2800
    :cond_2
    if-gez p2, :cond_0

    .line 2801
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v1, p4

    if-lt v0, v1, :cond_0

    .line 2802
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2803
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    .line 2804
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 2805
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 2806
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2807
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0
.end method

.method public isFakeAnimation()Z
    .locals 1

    .prologue
    .line 2845
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    return v0
.end method

.method public isForceHidden(I)Z
    .locals 2
    .parameter "nIndex"

    .prologue
    const/4 v0, 0x1

    .line 2836
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    if-ne v1, p1, :cond_1

    .line 2841
    :cond_0
    :goto_0
    return v0

    .line 2838
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    if-eq v1, p1, :cond_0

    .line 2841
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2830
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2831
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    .line 2832
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 2833
    return-void
.end method
