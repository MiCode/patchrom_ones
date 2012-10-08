.class Lcom/htc/album/addons/slideshow/SlideshowFusion$ControlButtonNext;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlButtonNext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$ControlButtonNext;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$ControlButtonNext;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarNext()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$1300(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    .line 582
    return-void
.end method
