.class Lcom/android/camera/component/PanoramaUI$6;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaUI;->registerEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/ThumbnailButtonEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$6;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/ThumbnailButtonEventArgs;)V
    .locals 4
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ThumbnailButtonEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/ThumbnailButtonEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1437
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/ThumbnailButtonEventArgs;>;"
    iget-object v0, p3, Lcom/android/camera/ThumbnailButtonEventArgs;->mediaInfo:Lcom/android/camera/MediaInfo;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/camera/ThumbnailButtonEventArgs;->mediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/camera/ThumbnailButtonEventArgs;->mediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v0}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".+/[0-9]{3}PANOR$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$6;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$900(Lcom/android/camera/component/PanoramaUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start album by PanoramaUI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$6;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-string v1, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    iget-object v2, p3, Lcom/android/camera/ThumbnailButtonEventArgs;->mediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v2, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v2}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p3, Lcom/android/camera/ThumbnailButtonEventArgs;->mediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/MediaInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {p3}, Lcom/android/camera/ThumbnailButtonEventArgs;->setHandled()V

    .line 1443
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1433
    check-cast p3, Lcom/android/camera/ThumbnailButtonEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/PanoramaUI$6;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/ThumbnailButtonEventArgs;)V

    return-void
.end method
