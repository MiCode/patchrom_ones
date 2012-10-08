.class Lcom/htc/album/addons/slideshow/SlideshowFusion$11$1;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion$11;->onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/addons/slideshow/SlideshowFusion$11;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion$11;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11$1;->this$1:Lcom/htc/album/addons/slideshow/SlideshowFusion$11;

    iput p2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11$1;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11$1;->this$1:Lcom/htc/album/addons/slideshow/SlideshowFusion$11;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11$1;->val$index:I

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateTitlebar(I)V
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$1900(Lcom/htc/album/addons/slideshow/SlideshowFusion;I)V

    .line 1629
    return-void
.end method
