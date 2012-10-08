.class public Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;
.super Landroid/app/DialogFragment;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_DELETE_SINGLE"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/helper/DeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 282
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->info:Landroid/os/Bundle;

    .line 283
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter
    .parameter "extras"
    .parameter "callback"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 287
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->info:Landroid/os/Bundle;

    .line 288
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->info:Landroid/os/Bundle;

    .line 289
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$100(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$100(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    .line 336
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 337
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "extras"

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 295
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    :cond_0
    const/4 v1, 0x0

    .line 322
    :goto_0
    return-object v1

    .line 298
    :cond_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x2040214

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->info:Landroid/os/Bundle;

    const-string v4, "key_message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040174

    new-instance v4, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE$2;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE$2;-><init>(Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20401ee

    new-instance v4, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE$1;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE$1;-><init>(Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 321
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    const v3, 0x120003

    #setter for: Lcom/htc/album/helper/DeleteManager;->mDialogId:I
    invoke-static {v2, v3}, Lcom/htc/album/helper/DeleteManager;->access$002(Lcom/htc/album/helper/DeleteManager;I)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 328
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 329
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 330
    return-void
.end method
