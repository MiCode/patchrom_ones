.class public final Lcom/android/camera/effect/SceneControllerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "SceneControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/effect/SceneController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Scene Controller"

    invoke-direct {p0, v0}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/SceneControllerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/effect/SceneController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/effect/SceneController;
    .locals 1
    .parameter "cameraThread"

    .prologue
    .line 17
    new-instance v0, Lcom/android/camera/effect/SceneController;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/SceneController;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 23
    invoke-static {p1}, Lcom/android/camera/effect/SceneController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
