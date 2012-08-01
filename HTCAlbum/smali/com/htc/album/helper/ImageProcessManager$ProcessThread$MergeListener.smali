.class Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MergeListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMergeBegin()V
    .locals 0

    .prologue
    .line 1027
    return-void
.end method

.method public onMergeEnd()V
    .locals 2

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$700(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    #setter for: Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->access$602(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1038
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    monitor-enter v1

    .line 1040
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1041
    monitor-exit v1

    .line 1042
    return-void

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMerged(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 1032
    return-void
.end method
