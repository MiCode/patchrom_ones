.class Lcom/htc/album/addons/slideshow/SlideshowFusion$TemplateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlideshowFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$TemplateBroadcastReceiver;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;Lcom/htc/album/addons/slideshow/SlideshowFusion$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 888
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusion$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 894
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, action:Ljava/lang/String;
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$TemplateBroadcastReceiver;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    .line 904
    :cond_0
    return-void
.end method
