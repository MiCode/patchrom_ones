.class Lcom/android/camera/mirror/MirrorActivity$1;
.super Landroid/os/Handler;
.source "MirrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/mirror/MirrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/mirror/MirrorActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/mirror/MirrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/mirror/MirrorActivity$1;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity$1;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    #calls: Lcom/android/camera/mirror/MirrorActivity;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/camera/mirror/MirrorActivity;->access$100(Lcom/android/camera/mirror/MirrorActivity;Landroid/os/Message;)V

    .line 184
    return-void
.end method
