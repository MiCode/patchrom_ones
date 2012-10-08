.class Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideShowAudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;Lcom/htc/album/addons/slideshow/SlideshowFusion$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1713
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .parameter "focusChange"

    .prologue
    .line 1717
    return-void
.end method
