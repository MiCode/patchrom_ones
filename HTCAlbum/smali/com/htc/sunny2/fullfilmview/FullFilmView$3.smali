.class Lcom/htc/sunny2/fullfilmview/FullFilmView$3;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field final synthetic val$bNeedPurgeLQ:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-boolean p4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;->val$bNeedPurgeLQ:Z

    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 1680
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 2

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/Preparator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1691
    :goto_0
    return-void

    .line 1685
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;->val$bNeedPurgeLQ:Z

    if-eqz v0, :cond_1

    .line 1687
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/Preparator;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->purgeTextureMap(I)V

    .line 1689
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/Preparator;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->purgeTextureMapHQ(I)V

    .line 1690
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/Preparator;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->purgeTextureEQ()V

    goto :goto_0
.end method
