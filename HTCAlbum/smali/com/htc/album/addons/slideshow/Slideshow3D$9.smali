.class Lcom/htc/album/addons/slideshow/Slideshow3D$9;
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
    .line 1705
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$9;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$9;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPlay()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$1300(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    .line 1711
    return-void
.end method
