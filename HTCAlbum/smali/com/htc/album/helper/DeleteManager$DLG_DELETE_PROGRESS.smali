.class public Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;
.super Landroid/app/DialogFragment;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_DELETE_PROGRESS"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/helper/DeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 184
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->info:Landroid/os/Bundle;

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter
    .parameter "extras"
    .parameter "callback"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 189
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->info:Landroid/os/Bundle;

    .line 190
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->info:Landroid/os/Bundle;

    .line 191
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->this$0:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 208
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 196
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0058

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 199
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 200
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->this$0:Lcom/htc/album/helper/DeleteManager;

    const/high16 v2, 0x12

    #setter for: Lcom/htc/album/helper/DeleteManager;->mDialogId:I
    invoke-static {v1, v2}, Lcom/htc/album/helper/DeleteManager;->access$002(Lcom/htc/album/helper/DeleteManager;I)I

    .line 201
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 214
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 215
    return-void
.end method
