.class Lcom/android/camera/HTCSnapbooth$7;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->setupUIElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$7;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$7;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$3500(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1075
    .local v0, canButtonClick:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$7;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$800(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$7;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->capture()Z
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$3600(Lcom/android/camera/HTCSnapbooth;)Z

    goto :goto_0

    .line 1082
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$7;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->cancelCapture()V
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2300(Lcom/android/camera/HTCSnapbooth;)V

    goto :goto_0
.end method
