.class Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondedDevice"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 343
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 346
    const-string v1, "BluetoothDeviceProfileState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering ACL Connected state with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v3

    iget v3, v3, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 348
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 349
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    .line 350
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x3e8

    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 353
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACL Connected State -> Processing Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 354
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 500
    const/4 v0, 0x0

    .line 502
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 356
    :sswitch_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 357
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 363
    :sswitch_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 366
    :sswitch_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 367
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3100(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 373
    :sswitch_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 376
    :sswitch_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 377
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :cond_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3400(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 383
    :sswitch_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 386
    :sswitch_7
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    if-ne v1, v0, :cond_4

    .line 387
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 393
    :sswitch_8
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 397
    :sswitch_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    if-ne v1, v0, :cond_5

    .line 398
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :cond_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHid:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 405
    :sswitch_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    if-ne v1, v0, :cond_6

    .line 406
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :cond_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 412
    :sswitch_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto/16 :goto_0

    .line 415
    :sswitch_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 416
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 417
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 419
    :cond_7
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$900(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 420
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 421
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 423
    :cond_8
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_9

    .line 425
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 426
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 429
    :cond_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto/16 :goto_0

    .line 432
    :sswitch_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-nez v1, :cond_a

    .line 437
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1702(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 438
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTO_CONNECT Waiting for HeadsetSerive bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    :cond_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v5, :cond_b

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 447
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 449
    :cond_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v5, :cond_c

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 456
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothA2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 458
    :cond_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 460
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0

    .line 465
    :sswitch_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_d

    .line 469
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v1

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 475
    const-string v1, "BluetoothDeviceProfileState"

    const-string v2, "A2dp:Connect Other Profiles"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothA2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0

    .line 478
    :cond_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 479
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-nez v1, :cond_e

    .line 480
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 482
    :cond_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    new-array v2, v6, [I

    fill-array-data v2, :array_3

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 487
    const-string v1, "BluetoothDeviceProfileState"

    const-string v2, "Headset:Connect Other Profiles"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0

    .line 497
    :sswitch_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto/16 :goto_0

    .line 354
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x32 -> :sswitch_2
        0x33 -> :sswitch_4
        0x34 -> :sswitch_6
        0x35 -> :sswitch_8
        0x36 -> :sswitch_9
        0x37 -> :sswitch_a
        0x38 -> :sswitch_b
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x66 -> :sswitch_0
        0x67 -> :sswitch_e
        0x6a -> :sswitch_f
    .end sparse-switch

    .line 441
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 449
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 469
    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 482
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
