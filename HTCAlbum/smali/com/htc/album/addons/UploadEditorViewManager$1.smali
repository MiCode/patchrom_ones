.class Lcom/htc/album/addons/UploadEditorViewManager$1;
.super Ljava/lang/Object;
.source "UploadEditorViewManager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/UploadEditorViewManager;->initialize(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorViewManager;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/UploadEditorViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager$1;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "onFocus"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$1;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/addons/UploadEditorViewManager;->onEditTextFocusChange(Landroid/view/View;Z)V

    .line 143
    return-void
.end method
