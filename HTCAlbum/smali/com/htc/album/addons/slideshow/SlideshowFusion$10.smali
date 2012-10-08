.class Lcom/htc/album/addons/slideshow/SlideshowFusion$10;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$10;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$10;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPlay()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$1700(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    .line 1215
    return-void
.end method
