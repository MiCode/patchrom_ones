.class Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)V
    .locals 0
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$1100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    .line 807
    :cond_0
    return-void
.end method
