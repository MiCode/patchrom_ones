.class final Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShowingShutdownAnimationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5881
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5881
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 5887
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    .line 5889
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcMode:Z

    .line 5890
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5899
    return-void
.end method
