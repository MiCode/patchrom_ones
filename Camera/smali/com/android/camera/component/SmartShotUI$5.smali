.class Lcom/android/camera/component/SmartShotUI$5;
.super Ljava/lang/Object;
.source "SmartShotUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmartShotUI;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SmartShotUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

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
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/UIState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/UIState;>;"
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

    #getter for: Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/SmartShotUI;->access$000(Lcom/android/camera/component/SmartShotUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    sget-object v1, Lcom/android/camera/component/SmartShotUI$9;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/UIState;

    invoke-virtual {v0}, Lcom/android/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 449
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/component/SmartShotUI;->showReviewImage(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/SmartShotUI;->access$600(Lcom/android/camera/component/SmartShotUI;Z)V

    goto :goto_0

    .line 452
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

    invoke-virtual {v0}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    iput-object v0, v1, Lcom/android/camera/component/SmartShotUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    .line 453
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

    iget-object v0, v0, Lcom/android/camera/component/SmartShotUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setAutoCloseTimeout(I)V

    goto :goto_0

    .line 456
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

    #calls: Lcom/android/camera/component/SmartShotUI;->hideReviewScreen()V
    invoke-static {v0}, Lcom/android/camera/component/SmartShotUI;->access$200(Lcom/android/camera/component/SmartShotUI;)V

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
