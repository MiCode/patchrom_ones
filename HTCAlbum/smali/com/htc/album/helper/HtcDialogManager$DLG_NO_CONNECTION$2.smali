.class Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION$2;
.super Ljava/lang/Object;
.source "HtcDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION$2;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION$2;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    #getter for: Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->access$000(Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION$2;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    #getter for: Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->access$000(Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/HtcDialogManager$IDialogListener;->onConfirm()V

    .line 75
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 76
    return-void
.end method