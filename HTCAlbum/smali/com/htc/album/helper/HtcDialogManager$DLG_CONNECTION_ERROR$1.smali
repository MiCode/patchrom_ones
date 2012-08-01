.class Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR$1;
.super Ljava/lang/Object;
.source "HtcDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 131
    return-void
.end method
