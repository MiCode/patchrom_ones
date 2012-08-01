.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 225
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 9
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 181
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v6

    if-nez v6, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v4

    .line 184
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v6

    sget-object v7, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v6

    sget-object v7, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v6, v7, :cond_0

    .line 187
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v4

    sget-object v6, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v6, :cond_7

    .line 189
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    .line 190
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v0

    .line 191
    .local v0, distanceX:I
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v6

    aget-object v4, v4, v6

    int-to-float v6, v0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panX(F)F

    move-result v2

    .line 192
    .local v2, frameEatedDeltaX:F
    int-to-float v4, v0

    sub-float v3, v4, v2

    .line 193
    .local v3, frameOffset:F
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v4

    if-eqz v4, :cond_3

    cmpl-float v4, v3, v8

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, v8

    if-lez v4, :cond_3

    .line 195
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    neg-float v3, v4

    .line 197
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$800(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v4

    if-eqz v4, :cond_4

    cmpg-float v4, v3, v8

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float/2addr v4, v3

    cmpg-float v4, v4, v8

    if-gez v4, :cond_4

    .line 199
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    neg-float v3, v4

    .line 201
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v4

    if-eqz v4, :cond_5

    cmpg-float v4, v3, v8

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float/2addr v4, v3

    cmpg-float v4, v4, v8

    if-gez v4, :cond_5

    .line 203
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z
    invoke-static {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$702(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    .line 205
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v4

    if-eqz v4, :cond_6

    cmpl-float v4, v3, v8

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, v8

    if-lez v4, :cond_6

    .line 207
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z
    invoke-static {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$802(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    .line 209
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doFramesOffset(F)V
    invoke-static {v4, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;F)V

    .line 212
    .end local v0           #distanceX:I
    .end local v2           #frameEatedDeltaX:F
    .end local v3           #frameOffset:F
    :cond_7
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v4

    sget-object v6, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v6, :cond_8

    .line 214
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    .line 215
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v4

    neg-int v1, v4

    .line 216
    .local v1, distanceY:I
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v6

    aget-object v4, v4, v6

    int-to-float v6, v1

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panY(F)F

    .end local v1           #distanceY:I
    :cond_8
    move v4, v5

    .line 221
    goto/16 :goto_0
.end method
