.class Lcom/android/camera/widget/PopupBubble$1;
.super Ljava/lang/Object;
.source "PopupBubble.java"

# interfaces
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PopupBubble;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PopupBubble;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/android/camera/widget/PopupBubble;->access$000(Lcom/android/camera/widget/PopupBubble;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    #setter for: Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v0, v1}, Lcom/android/camera/widget/PopupBubble;->access$002(Lcom/android/camera/widget/PopupBubble;Lcom/htc/widget/PopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    .line 176
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_IsReopeningWindow:Z
    invoke-static {v0}, Lcom/android/camera/widget/PopupBubble;->access$100(Lcom/android/camera/widget/PopupBubble;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;
    invoke-static {v0}, Lcom/android/camera/widget/PopupBubble;->access$200(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;
    invoke-static {v0}, Lcom/android/camera/widget/PopupBubble;->access$200(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    invoke-interface {v0, v1}, Lcom/android/camera/widget/PopupBubble$OnClosedListener;->onClosed(Lcom/android/camera/widget/PopupBubble;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_Anchor:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/widget/PopupBubble;->access$300(Lcom/android/camera/widget/PopupBubble;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V

    goto :goto_0
.end method
