.class Lcom/android/camera/component/CaptureUIBlockManager$2;
.super Lcom/android/camera/trigger/Trigger;
.source "CaptureUIBlockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureUIBlockManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureUIBlockManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureUIBlockManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/component/CaptureUIBlockManager$2;->this$0:Lcom/android/camera/component/CaptureUIBlockManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager$2;->this$0:Lcom/android/camera/component/CaptureUIBlockManager;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureUIBlockManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/CaptureUIBlockManager$2;->this$0:Lcom/android/camera/component/CaptureUIBlockManager;

    #getter for: Lcom/android/camera/component/CaptureUIBlockManager;->m_ReleaseBlocksRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/component/CaptureUIBlockManager;->access$100(Lcom/android/camera/component/CaptureUIBlockManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
