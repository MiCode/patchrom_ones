.class Lcom/htc/album/processor/ImageProcessorManager$12;
.super Ljava/lang/Object;
.source "ImageProcessorManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/processor/ImageProcessorManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/processor/ImageProcessorManager;


# direct methods
.method constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$12;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$12;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelProcessing(Landroid/app/Dialog;)V

    .line 641
    return-void
.end method
