.class Lcom/htc/album/addons/UploadEditorViewManager$4;
.super Ljava/lang/Object;
.source "UploadEditorViewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V
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
    .line 568
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager$4;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$4;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$300(Lcom/htc/album/addons/UploadEditorViewManager;)Lcom/htc/widget/HtcAutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 573
    const/4 v0, 0x0

    return v0
.end method
