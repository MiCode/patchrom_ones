.class Lcom/android/camera/component/ContinuousBurstController$2;
.super Ljava/lang/Object;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ContinuousBurstController;->initializeOverride()V
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
        "Lcom/android/camera/RequestTakingPictureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstController;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController$2;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/RequestTakingPictureEventArgs;)V
    .locals 3
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/RequestTakingPictureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/RequestTakingPictureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/RequestTakingPictureEventArgs;>;"
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$2;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$900(Lcom/android/camera/component/ContinuousBurstController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$2;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController$2;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v2, p3, Lcom/android/camera/RequestTakingPictureEventArgs;->camera:Landroid/hardware/Camera;

    #calls: Lcom/android/camera/component/ContinuousBurstController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->access$1000(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V

    .line 529
    invoke-virtual {p3}, Lcom/android/camera/RequestTakingPictureEventArgs;->setHandled()V

    .line 531
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 522
    check-cast p3, Lcom/android/camera/RequestTakingPictureEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ContinuousBurstController$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/RequestTakingPictureEventArgs;)V

    return-void
.end method
