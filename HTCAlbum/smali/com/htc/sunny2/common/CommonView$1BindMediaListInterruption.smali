.class Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;
.super Lcom/htc/sunny2/RenderThreadInterruption;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/common/CommonView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindMediaListInterruption"
.end annotation


# instance fields
.field private list:Lcom/htc/sunny2/IMediaList;

.field public result:Z

.field private selectedIndex:I

.field final synthetic this$0:Lcom/htc/sunny2/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/CommonView;Ljava/lang/Object;Lcom/htc/sunny2/IMediaList;I)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "list"
    .parameter "selectedIndex"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    .line 486
    const-string v0, "BindMediaListInterruption"

    invoke-direct {p0, p2, v0}, Lcom/htc/sunny2/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunny2/IMediaList;

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->selectedIndex:I

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->result:Z

    .line 487
    iput-object p3, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunny2/IMediaList;

    .line 488
    iput p4, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->selectedIndex:I

    .line 489
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 531
    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 493
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_0

    .line 495
    invoke-static {}, Lcom/htc/sunny2/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    #getter for: Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunny2/common/CommonView;->access$700(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BindMediaList NG - null media list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iput-boolean v3, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->result:Z

    .line 529
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_1

    .line 501
    invoke-static {}, Lcom/htc/sunny2/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    #getter for: Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunny2/common/CommonView;->access$800(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BindMediaList call onUnBindMediaListIRT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/CommonView;->onUnBindMediaListIRT()V

    .line 503
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iput-object v5, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 504
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iput v3, v0, Lcom/htc/sunny2/common/CommonView;->mListItemCount:I

    .line 505
    iput-boolean v4, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->result:Z

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_2

    .line 511
    invoke-static {}, Lcom/htc/sunny2/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    #getter for: Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunny2/common/CommonView;->access$900(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BindMediaList call onUnBindMediaListIRT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/CommonView;->onUnBindMediaListIRT()V

    .line 513
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iput-object v5, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 514
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iput v3, v0, Lcom/htc/sunny2/common/CommonView;->mListItemCount:I

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunny2/IMediaList;

    iput-object v1, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 518
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, v1, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CommonView;->mListItemCount:I

    .line 519
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunny2/IMediaList;

    iget v2, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->selectedIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/CommonView;->onBindMediaListIRT(Lcom/htc/sunny2/IMediaList;I)Z

    move-result v0

    if-ne v0, v4, :cond_3

    .line 521
    iput-boolean v4, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->result:Z

    goto/16 :goto_0

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iput-object v5, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 526
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunny2/common/CommonView;

    iput v3, v0, Lcom/htc/sunny2/common/CommonView;->mListItemCount:I

    .line 527
    iput-boolean v3, p0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->result:Z

    goto/16 :goto_0
.end method
