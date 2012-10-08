.class public Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;
.super Landroid/app/DialogFragment;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_DELETE_ALL"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/helper/DeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;)V
    .locals 1
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 224
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->info:Landroid/os/Bundle;

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter
    .parameter "extras"
    .parameter "callback"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 229
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->info:Landroid/os/Bundle;

    .line 230
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->info:Landroid/os/Bundle;

    .line 231
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$100(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$100(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDismissDeleteAll()V

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 267
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 236
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20401ec

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;
    invoke-static {v5}, Lcom/htc/album/helper/DeleteManager;->access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x2040214

    new-instance v3, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$2;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$2;-><init>(Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20401ee

    new-instance v3, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$1;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$1;-><init>(Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 255
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    const v2, 0x120001

    #setter for: Lcom/htc/album/helper/DeleteManager;->mDialogId:I
    invoke-static {v1, v2}, Lcom/htc/album/helper/DeleteManager;->access$002(Lcom/htc/album/helper/DeleteManager;I)I

    .line 256
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 272
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 274
    return-void
.end method
