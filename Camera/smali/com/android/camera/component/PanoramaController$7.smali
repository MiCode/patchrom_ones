.class Lcom/android/camera/component/PanoramaController$7;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$7;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$7;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScaladoCamera.RawCallback"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    return-void
.end method
