.class Landroid/webkit/EditableWebView$EditableQuickActions$7;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontsize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/EditableWebView$EditableQuickActions;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V
    .locals 0
    .parameter

    .prologue
    .line 2217
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 2220
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2221
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v2, v0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2223
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, v1, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getFontSize()I

    move-result v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getFontSizeIdx(I)I
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4200(Landroid/webkit/EditableWebView$EditableQuickActions;I)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2224
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 2225
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, v2}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2249
    :goto_0
    return-void

    .line 2228
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2230
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetFontSize(I)V

    goto :goto_0

    .line 2233
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetFontSize(I)V

    goto :goto_0

    .line 2236
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetFontSize(I)V

    goto :goto_0

    .line 2239
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$7;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetFontSize(I)V

    goto :goto_0

    .line 2228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
