.class Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlideShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShow;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;Lcom/htc/album/addons/slideshow/SlideShow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1872
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1876
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1877
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/htc/album/addons/slideshow/SlideShow;->access$1400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBroadcastReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1880
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    .line 1881
    invoke-static {}, Lcom/htc/album/addons/slideshow/SlideShow;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][Slideshow3D][TemplateBroadcastReceiver]: finish() from onBroadcastReceive()"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :cond_0
    return-void
.end method
