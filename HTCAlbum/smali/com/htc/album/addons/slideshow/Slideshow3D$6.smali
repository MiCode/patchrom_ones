.class Lcom/htc/album/addons/slideshow/Slideshow3D$6;
.super Ljava/lang/Object;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/Slideshow3D;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$6;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$6;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 1622
    return-void
.end method
