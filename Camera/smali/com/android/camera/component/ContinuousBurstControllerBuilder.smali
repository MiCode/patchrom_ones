.class final Lcom/android/camera/component/ContinuousBurstControllerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "ContinuousBurstControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/component/ContinuousBurstController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Continuous Burst Controller"

    invoke-direct {p0, v0}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/component/ContinuousBurstControllerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/ContinuousBurstController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/ContinuousBurstController;
    .locals 1
    .parameter "cameraThread"

    .prologue
    .line 16
    new-instance v0, Lcom/android/camera/component/ContinuousBurstController;

    invoke-direct {v0, p1}, Lcom/android/camera/component/ContinuousBurstController;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 22
    invoke-static {p1}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method