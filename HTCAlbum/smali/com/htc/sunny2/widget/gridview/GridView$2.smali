.class Lcom/htc/sunny2/widget/gridview/GridView$2;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;

.field final synthetic val$flag:I

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2588
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->val$index:I

    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->val$flag:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->val$index:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->val$flag:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->notifyDataItemChanged(III)V

    .line 2593
    :cond_0
    return-void
.end method
