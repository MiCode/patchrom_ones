.class Lcom/android/camera/component/ReviewAnimationUI$1;
.super Ljava/lang/Object;
.source "ReviewAnimationUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ReviewAnimationUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ReviewAnimationUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ReviewAnimationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimationUI$1;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/event/EventArgs;>;"
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$1;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_AnimationView:Lcom/android/camera/widget/ReviewAnimationView;
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimationUI;->access$000(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/widget/ReviewAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/ReviewAnimationView;->stopReviewAnimation()V

    .line 89
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$1;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ReviewAnimationUI;->removeMessages(I)V

    .line 90
    return-void
.end method
