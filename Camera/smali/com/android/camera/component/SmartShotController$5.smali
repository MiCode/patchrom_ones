.class Lcom/android/camera/component/SmartShotController$5;
.super Ljava/lang/Object;
.source "SmartShotController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/SmartShotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SmartShotController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmartShotController;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/camera/component/SmartShotController$5;->this$0:Lcom/android/camera/component/SmartShotController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 688
    return-void
.end method
