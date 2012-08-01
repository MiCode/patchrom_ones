.class Lcom/htc/album/addons/slideshow/SlideshowFusion$2;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;
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
    .line 231
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadPreviousImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$800(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    .line 240
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$300(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$900(Lcom/htc/album/addons/slideshow/SlideshowFusion;)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$1000(Lcom/htc/album/addons/slideshow/SlideshowFusion;JZ)V

    goto :goto_0
.end method
