.class Lcom/android/camera/component/ThumbnailController$7;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailController;->initializeOverride()V
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
        "Lcom/android/camera/imaging/ThumbnailEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 594
    check-cast p3, Lcom/android/camera/imaging/ThumbnailEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ThumbnailController$7;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/imaging/ThumbnailEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/imaging/ThumbnailEventArgs;)V
    .locals 5
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/ThumbnailEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/imaging/ThumbnailEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/imaging/ThumbnailEventArgs;>;"
    iget-object v2, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    monitor-enter v2

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailController;->access$900(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video thumbnail created : Path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/camera/imaging/ThumbnailEventArgs;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v4}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailController;->access$1000(Lcom/android/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailController;->access$1000(Lcom/android/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    iget-object v3, p3, Lcom/android/camera/imaging/ThumbnailEventArgs;->filePath:Lcom/android/camera/io/Path;

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;
    invoke-static {v1, v3}, Lcom/android/camera/component/ThumbnailController;->access$1102(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/io/Path;)Lcom/android/camera/io/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :try_start_1
    iget-object v1, p3, Lcom/android/camera/imaging/ThumbnailEventArgs;->thumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    iget-object v3, p3, Lcom/android/camera/imaging/ThumbnailEventArgs;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/android/camera/component/ThumbnailController;->access$1002(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 620
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 621
    return-void

    .line 613
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/android/camera/component/ThumbnailController;->access$1002(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 617
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/android/camera/component/ThumbnailController;->access$1002(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 618
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$7;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailController;->access$1200(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error copying video thumbnail image"

    invoke-static {v1, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 620
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
