.class Lcom/htc/album/addons/slideshow/SlideshowFusion$3;
.super Landroid/os/Handler;
.source "SlideshowFusion.java"


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
    .line 249
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 253
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 256
    :sswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$700(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)V

    goto :goto_0

    .line 259
    :sswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    const/4 v1, 0x0

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$700(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)V

    goto :goto_0

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
