.class Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareUpdateChildView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1814
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 1815
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildFirstVisiblePosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v0, v1, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z
    invoke-static {v0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$202(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 1817
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x0

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V
    invoke-static {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)V

    .line 1818
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v1

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->doScrollClickedItemToUpper(I)V
    invoke-static {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$500(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V

    .line 1823
    :goto_0
    return-void

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x2

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V
    invoke-static {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$600(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V

    goto :goto_0
.end method
