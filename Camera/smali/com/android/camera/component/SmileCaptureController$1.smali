.class Lcom/android/camera/component/SmileCaptureController$1;
.super Ljava/lang/Object;
.source "SmileCaptureController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmileCaptureController;->initializeOverride()V
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
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SmileCaptureController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmileCaptureController;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/component/SmileCaptureController$1;->this$0:Lcom/android/camera/component/SmileCaptureController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/event/EventArgs;>;"
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureController$1;->this$0:Lcom/android/camera/component/SmileCaptureController;

    #getter for: Lcom/android/camera/component/SmileCaptureController;->m_IsEnabled:Z
    invoke-static {v0}, Lcom/android/camera/component/SmileCaptureController;->access$000(Lcom/android/camera/component/SmileCaptureController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureController$1;->this$0:Lcom/android/camera/component/SmileCaptureController;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/component/SmileCaptureController;->updateSmileCaptureState(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/SmileCaptureController;->access$100(Lcom/android/camera/component/SmileCaptureController;Z)V

    .line 91
    :cond_0
    return-void
.end method
