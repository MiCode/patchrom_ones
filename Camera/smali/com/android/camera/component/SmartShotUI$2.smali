.class Lcom/android/camera/component/SmartShotUI$2;
.super Lcom/android/camera/trigger/Trigger;
.source "SmartShotUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmartShotUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SmartShotUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmartShotUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/camera/component/SmartShotUI$2;->this$0:Lcom/android/camera/component/SmartShotUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$2;->this$0:Lcom/android/camera/component/SmartShotUI;

    #getter for: Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/SmartShotUI;->access$000(Lcom/android/camera/component/SmartShotUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$2;->this$0:Lcom/android/camera/component/SmartShotUI;

    #calls: Lcom/android/camera/component/SmartShotUI;->hideReviewScreen()V
    invoke-static {v0}, Lcom/android/camera/component/SmartShotUI;->access$200(Lcom/android/camera/component/SmartShotUI;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$2;->this$0:Lcom/android/camera/component/SmartShotUI;

    invoke-static {v0}, Lcom/android/camera/component/SmartShotUI;->access$304(Lcom/android/camera/component/SmartShotUI;)J

    .line 363
    return-void
.end method
