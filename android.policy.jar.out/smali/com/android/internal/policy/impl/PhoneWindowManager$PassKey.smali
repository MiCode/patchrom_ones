.class Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassKey"
.end annotation


# instance fields
.field mKeyCode:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 0
    .parameter
    .parameter "keyCode"

    .prologue
    .line 4516
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4517
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;->mKeyCode:I

    .line 4518
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4521
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4523
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 4524
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "htctelephony"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcTelephonyManager;

    .line 4525
    .local v0, phoneServ:Lcom/htc/service/HtcTelephonyManager;
    if-eqz v0, :cond_0

    .line 4526
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;->mKeyCode:I

    invoke-virtual {v0, v1}, Lcom/htc/service/HtcTelephonyManager;->notifyKeyEvent(I)V

    .line 4530
    .end local v0           #phoneServ:Lcom/htc/service/HtcTelephonyManager;
    :cond_0
    return-void
.end method
