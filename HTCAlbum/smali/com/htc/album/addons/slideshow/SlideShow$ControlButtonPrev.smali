.class Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonPrev;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlButtonPrev"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShow;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonPrev;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonPrev;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPrevious()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$100(Lcom/htc/album/addons/slideshow/SlideShow;)V

    .line 443
    return-void
.end method
