.class public Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
.super Landroid/app/DialogFragment;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/HtcDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLG_PROGRESS_LOAD"
.end annotation


# instance fields
.field private mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

.field private mLoadingText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;I)V
    .locals 1
    .parameter "callback"
    .parameter "nTextRes"

    .prologue
    .line 242
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mLoadingText:Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 245
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p0, p2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mLoadingText:Ljava/lang/String;

    .line 248
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)V
    .locals 1
    .parameter "callback"
    .parameter "szText"

    .prologue
    .line 251
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mLoadingText:Ljava/lang/String;

    .line 253
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 254
    if-eqz p2, :cond_0

    .line 255
    iput-object p2, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mLoadingText:Ljava/lang/String;

    .line 256
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    return-object v0
.end method

.method public static instance(I)Landroid/app/DialogFragment;
    .locals 2
    .parameter "nTextRes"

    .prologue
    .line 222
    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;-><init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;I)V

    .line 223
    .local v0, fragment:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    return-object v0
.end method

.method public static instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;I)Landroid/app/DialogFragment;
    .locals 1
    .parameter "callback"
    .parameter "nTextRes"

    .prologue
    .line 232
    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-direct {v0, p0, p1}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;-><init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;I)V

    .line 233
    .local v0, fragment:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    return-object v0
.end method

.method public static instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "callback"
    .parameter "szText"

    .prologue
    .line 237
    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-direct {v0, p0, p1}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;-><init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)V

    .line 238
    .local v0, fragment:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    return-object v0
.end method

.method public static instance(Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 2
    .parameter "szText"

    .prologue
    .line 227
    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;-><init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)V

    .line 228
    .local v0, fragment:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 267
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 269
    new-instance v1, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD$1;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD$1;-><init>(Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 294
    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->mLoadingText:Ljava/lang/String;

    .line 261
    :cond_0
    return-void
.end method
