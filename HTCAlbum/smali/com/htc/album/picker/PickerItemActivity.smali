.class public Lcom/htc/album/picker/PickerItemActivity;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "PickerItemActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickerItemActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstance"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onStartFragment()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lcom/htc/album/picker/PickerItemMfFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/picker/PickerItemActivity;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 30
    return-void
.end method
