.class Lcom/htc/album/addons/slideshow/SlideshowFusion$1;
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
    .line 207
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 211
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$200(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$302(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z

    .line 218
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPause()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    .line 219
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #setter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z
    invoke-static {v0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$502(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z

    .line 220
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$600(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    .line 221
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V
    invoke-static {v0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$700(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$600(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    goto :goto_0
.end method
