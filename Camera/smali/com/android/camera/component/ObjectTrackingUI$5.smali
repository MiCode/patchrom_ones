.class Lcom/android/camera/component/ObjectTrackingUI$5;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ObjectTrackingUI;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingUI$5;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/AutoFocusMode;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/AutoFocusMode;>;"
    const/4 v2, 0x0

    .line 187
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/AutoFocusMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$5;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    iget-object v0, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$5;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ObjectTrackingUI;->access$600(Lcom/android/camera/component/ObjectTrackingUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focusMode changed to Sensor, reset m_LastfocusFaceRect"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$5;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    iget-object v0, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 194
    :cond_0
    return-void
.end method
