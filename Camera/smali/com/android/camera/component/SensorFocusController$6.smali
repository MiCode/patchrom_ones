.class Lcom/android/camera/component/SensorFocusController$6;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SensorFocusController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/AutoFocusMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SensorFocusController;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController$6;->this$0:Lcom/android/camera/component/SensorFocusController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoFocusMode;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/AutoFocusMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/AutoFocusMode;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/AutoFocusMode;>;"
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$6;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$6;->this$0:Lcom/android/camera/component/SensorFocusController;

    const v1, 0x3f4ccccd

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F
    invoke-static {v0, v1}, Lcom/android/camera/component/SensorFocusController;->access$202(Lcom/android/camera/component/SensorFocusController;F)F

    .line 274
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$6;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/camera/component/SensorFocusController;->access$232(Lcom/android/camera/component/SensorFocusController;F)F

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController$6;->this$0:Lcom/android/camera/component/SensorFocusController;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/AutoFocusMode;

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;
    invoke-static {v1, v0}, Lcom/android/camera/component/SensorFocusController;->access$102(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/AutoFocusMode;)Lcom/android/camera/AutoFocusMode;

    .line 280
    return-void
.end method
