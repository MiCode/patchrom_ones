.class Lcom/htc/album/addons/slideshow/SlideshowFusion$12;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateControlBar()V
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
    .line 1886
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1890
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #setter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsControlShowing:Z
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$2002(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z

    .line 1891
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #setter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mWasControlShowing:Z
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$2102(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z

    .line 1892
    invoke-static {}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$2200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusion][updateControlBar]run + , mIsControlShowing =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsControlShowing:Z
    invoke-static {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$2000(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v3, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 1903
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$2300(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1905
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$2300(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 1907
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$2400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideShowController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1909
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$2400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideShowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 1911
    :cond_2
    invoke-static {}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$2200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][SlideshowFusion][updateControlBar]run - "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    return-void
.end method
