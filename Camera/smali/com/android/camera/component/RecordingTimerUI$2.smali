.class Lcom/android/camera/component/RecordingTimerUI$2;
.super Lcom/android/camera/trigger/Trigger;
.source "RecordingTimerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingTimerUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RecordingTimerUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingTimerUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/RecordingTimerUI;->access$300(Lcom/android/camera/component/RecordingTimerUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    iget-object v1, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/RecordingTimerUI;->access$300(Lcom/android/camera/component/RecordingTimerUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/component/RecordingTimerUI;->showUI(Landroid/view/View;ZZ)V

    .line 108
    :cond_0
    return-void
.end method
