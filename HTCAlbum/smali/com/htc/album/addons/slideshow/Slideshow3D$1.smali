.class Lcom/htc/album/addons/slideshow/Slideshow3D$1;
.super Ljava/lang/Object;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/Slideshow3D;
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
    .line 660
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 662
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$200(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    .line 665
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
