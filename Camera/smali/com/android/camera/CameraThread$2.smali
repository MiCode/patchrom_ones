.class Lcom/android/camera/CameraThread$2;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/camera/CameraThread$2;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "yuvData"
    .parameter "camera"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/camera/CameraThread$2;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CameraThread;->handleCommonPostviewCallback([BLandroid/hardware/Camera;)V

    .line 577
    return-void
.end method
