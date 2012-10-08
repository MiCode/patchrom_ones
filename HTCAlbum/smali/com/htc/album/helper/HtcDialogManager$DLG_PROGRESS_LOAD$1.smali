.class Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD$1;
.super Ljava/lang/Object;
.source "HtcDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 299
    packed-switch p2, :pswitch_data_0

    .line 316
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 303
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    #getter for: Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->access$300(Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    #getter for: Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->access$300(Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/HtcDialogManager$IDialogListener;->onDismiss()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0, p1}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss(Landroid/content/DialogInterface;)V

    .line 314
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0, p1}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss(Landroid/content/DialogInterface;)V

    goto :goto_1

    .line 299
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
