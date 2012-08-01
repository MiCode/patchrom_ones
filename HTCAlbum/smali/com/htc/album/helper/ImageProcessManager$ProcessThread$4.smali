.class Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V
    .locals 0
    .parameter

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v1, v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;->onProcessEnd(I)V

    .line 2023
    :cond_0
    return-void
.end method
