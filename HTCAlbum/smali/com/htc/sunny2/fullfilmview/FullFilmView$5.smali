.class Lcom/htc/sunny2/fullfilmview/FullFilmView$5;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;ILcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field final synthetic val$endListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

.field final synthetic val$fAnimSelf:Landroid/os/Bundle;

.field final synthetic val$fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field final synthetic val$fSView:Lcom/htc/sunny2/view/SView;

.field final synthetic val$touchedGridViewItemIndex:I


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;ILcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-object p4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$fAnimSelf:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    iput-object p6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$fSView:Lcom/htc/sunny2/view/SView;

    iput p7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$touchedGridViewItemIndex:I

    iput-object p8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$endListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 2334
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 7

    .prologue
    .line 2328
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][playAnimationIHT][AnimationIRT]+"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$fAnimSelf:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$fSView:Lcom/htc/sunny2/view/SView;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$touchedGridViewItemIndex:I

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->val$endListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getInOutAnimation(Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;ILcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v6

    .line 2330
    .local v6, animation:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2331
    :cond_0
    return-void
.end method
