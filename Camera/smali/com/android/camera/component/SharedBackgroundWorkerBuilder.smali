.class final Lcom/android/camera/component/SharedBackgroundWorkerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "SharedBackgroundWorkerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/component/SharedBackgroundWorker;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "Shared Background Worker"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/component/SharedBackgroundWorkerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/SharedBackgroundWorker;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/SharedBackgroundWorker;
    .locals 1
    .parameter "cameraThread"

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/component/SharedBackgroundWorker;

    invoke-direct {v0, p1}, Lcom/android/camera/component/SharedBackgroundWorker;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method
