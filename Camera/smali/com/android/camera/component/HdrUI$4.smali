.class Lcom/android/camera/component/HdrUI$4;
.super Ljava/lang/Object;
.source "HdrUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrUI;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrUI;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/camera/component/HdrUI$4;->this$0:Lcom/android/camera/component/HdrUI;

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
            "Lcom/android/camera/TakingPictureState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/TakingPictureState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/TakingPictureState;>;"
    const/4 v2, 0x0

    .line 281
    sget-object v1, Lcom/android/camera/component/HdrUI$6;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$4;->this$0:Lcom/android/camera/component/HdrUI;

    invoke-virtual {v0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->Hdr:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$4;->this$0:Lcom/android/camera/component/HdrUI;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/HdrUI;->access$402(Lcom/android/camera/component/HdrUI;Z)Z

    .line 288
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$4;->this$0:Lcom/android/camera/component/HdrUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/HdrUI;->enterHdrMode(Z)V

    goto :goto_0

    .line 295
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$4;->this$0:Lcom/android/camera/component/HdrUI;

    #getter for: Lcom/android/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z
    invoke-static {v0}, Lcom/android/camera/component/HdrUI;->access$400(Lcom/android/camera/component/HdrUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$4;->this$0:Lcom/android/camera/component/HdrUI;

    #setter for: Lcom/android/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/HdrUI;->access$402(Lcom/android/camera/component/HdrUI;Z)Z

    .line 298
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$4;->this$0:Lcom/android/camera/component/HdrUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/HdrUI;->exitHdrMode(Z)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
