.class Lcom/android/camera/component/HandShakeUI$5;
.super Lcom/android/camera/trigger/Trigger;
.source "HandShakeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HandShakeUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HandShakeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI$5;->this$0:Lcom/android/camera/component/HandShakeUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI$5;->this$0:Lcom/android/camera/component/HandShakeUI;

    #calls: Lcom/android/camera/component/HandShakeUI;->checkCanShow()V
    invoke-static {v0}, Lcom/android/camera/component/HandShakeUI;->access$300(Lcom/android/camera/component/HandShakeUI;)V

    .line 219
    return-void
.end method
