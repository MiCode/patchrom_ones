.class Lcom/htc/sunny2/widget/presentation/SPresentation$15;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;->setContainerCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field final synthetic val$nContainerCount:I


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2663
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iput p2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;->val$nContainerCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2667
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;->val$nContainerCount:I

    .line 2668
    .local v0, nCount:I
    if-lez v0, :cond_0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 2669
    invoke-static {}, Lcom/htc/sunny2/widget/presentation/SPresentation;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set container count as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". It should be an odd number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    add-int/lit8 v0, v0, -0x1

    .line 2672
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;->val$nContainerCount:I

    if-eq v1, v2, :cond_1

    .line 2673
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iput v0, v1, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    .line 2674
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initDefaultLayout()V

    .line 2675
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    .line 2677
    :cond_1
    return-void
.end method
