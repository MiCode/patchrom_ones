.class Lcom/android/camera/component/SensorFocusController$7;
.super Lcom/android/camera/trigger/Trigger;
.source "SensorFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SensorFocusController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController$7;->this$0:Lcom/android/camera/component/SensorFocusController;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 297
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$7;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;
    invoke-static {v0, v1}, Lcom/android/camera/component/SensorFocusController;->access$102(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/AutoFocusMode;)Lcom/android/camera/AutoFocusMode;

    .line 300
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$7;->this$0:Lcom/android/camera/component/SensorFocusController;

    const-wide/16 v1, 0x190

    #calls: Lcom/android/camera/component/SensorFocusController;->restartSensorFocus(J)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/SensorFocusController;->access$000(Lcom/android/camera/component/SensorFocusController;J)V

    .line 303
    :cond_0
    return-void
.end method
