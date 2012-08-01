.class Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonNext;
.super Ljava/lang/Object;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/Slideshow3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlButtonNext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonNext;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonNext;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarNext()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$000(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    .line 442
    return-void
.end method
