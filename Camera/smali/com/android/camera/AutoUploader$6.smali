.class Lcom/android/camera/AutoUploader$6;
.super Lcom/android/camera/trigger/Trigger;
.source "AutoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AutoUploader;->setupEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AutoUploader;


# direct methods
.method constructor <init>(Lcom/android/camera/AutoUploader;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/camera/AutoUploader$6;->this$0:Lcom/android/camera/AutoUploader;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/android/camera/AutoUploader;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/camera/AutoUploader$6;->this$0:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->loadAutoUploadSettings()V

    .line 514
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/AutoUploader;->access$102(Z)Z

    .line 517
    :cond_0
    return-void
.end method
