.class Lcom/htc/album/addons/slideshow/SlideshowFusion$14;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
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
    .line 2369
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$14;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$14;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onGoBack()V

    .line 2374
    return-void
.end method
