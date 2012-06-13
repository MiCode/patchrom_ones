.class public Lcom/htc/server/WirelessDisplayService$CallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method public constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1533
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1535
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1538
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, action:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1540
    .local v3, curState:I
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1542
    .local v2, condState:I
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CallReceiver: action"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const-string v9, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1545
    const-string v9, "state"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1547
    .local v8, state:Ljava/lang/String;
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IncomingCallReceiver State: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " condState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x3

    if-eq v3, v9, :cond_2

    const/4 v9, 0x4

    if-eq v3, v9, :cond_2

    const/4 v9, 0x7

    if-ne v3, v9, :cond_7

    .line 1554
    :cond_2
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v10, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v9, v10}, Lcom/htc/server/WirelessDisplayService;->access$5502(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 1555
    const-string v9, "incoming_number"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1556
    .local v7, phonenumber:Ljava/lang/String;
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IncomingCallReceiver Incomng Number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const/4 v9, 0x3

    if-ne v3, v9, :cond_3

    .line 1559
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x29

    const/16 v11, 0x2b

    const/16 v12, 0x2e

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1560
    .local v4, msg1:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1561
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1562
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1563
    .end local v4           #msg1:Landroid/os/Message;
    :cond_3
    const/4 v9, 0x4

    if-ne v3, v9, :cond_5

    .line 1565
    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    .line 1566
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1567
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1568
    :cond_4
    const/4 v9, 0x5

    if-ne v2, v9, :cond_0

    .line 1569
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1570
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1572
    :cond_5
    const/4 v9, 0x7

    if-ne v3, v9, :cond_0

    .line 1574
    const/4 v9, 0x4

    if-ne v2, v9, :cond_6

    .line 1575
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1576
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1577
    :cond_6
    const/4 v9, 0x5

    if-ne v2, v9, :cond_0

    .line 1578
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1579
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1583
    .end local v7           #phonenumber:Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v9

    if-eqz v9, :cond_12

    sget-object v9, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1586
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver :EXTRA_STATE_IDLE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const/16 v9, 0x9

    if-ne v3, v9, :cond_c

    .line 1588
    const/4 v9, 0x2

    if-ne v2, v9, :cond_9

    .line 1590
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x29

    const/16 v11, 0x2a

    const/16 v12, 0x2e

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 1591
    .local v5, msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v9, v5, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1592
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1593
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    .end local v5           #msg2:Landroid/os/Message;
    :cond_8
    :goto_1
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v9, v10}, Lcom/htc/server/WirelessDisplayService;->access$5502(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0

    .line 1594
    :cond_9
    const/4 v9, 0x3

    if-ne v2, v9, :cond_a

    .line 1595
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1596
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1597
    :cond_a
    const/4 v9, 0x7

    if-ne v2, v9, :cond_b

    .line 1598
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1599
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1600
    :cond_b
    const/4 v9, 0x6

    if-ne v2, v9, :cond_8

    .line 1601
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1602
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1604
    :cond_c
    const/4 v9, 0x4

    if-ne v3, v9, :cond_f

    .line 1605
    const/4 v9, 0x2

    if-ne v2, v9, :cond_d

    .line 1606
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x29

    const/16 v11, 0x2a

    const/16 v12, 0x2d

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 1607
    .restart local v5       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v9, v5, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1608
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1609
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1610
    .end local v5           #msg2:Landroid/os/Message;
    :cond_d
    const/4 v9, 0x7

    if-ne v2, v9, :cond_e

    .line 1611
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1612
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1613
    :cond_e
    const/4 v9, 0x3

    if-ne v2, v9, :cond_8

    .line 1614
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1615
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver :mAppCallScreen:1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1617
    :cond_f
    const/4 v9, 0x7

    if-ne v3, v9, :cond_8

    .line 1618
    const/4 v9, 0x2

    if-ne v2, v9, :cond_10

    .line 1619
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x1f

    const/16 v11, 0x21

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 1620
    .restart local v5       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v9, v5, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1621
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1622
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;)V

    .line 1623
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1624
    .end local v5           #msg2:Landroid/os/Message;
    :cond_10
    const/4 v9, 0x7

    if-ne v2, v9, :cond_11

    .line 1625
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1626
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1627
    :cond_11
    const/4 v9, 0x6

    if-ne v2, v9, :cond_8

    .line 1628
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1629
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver :mAppCallScreen:4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1634
    :cond_12
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1635
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver :EXTRA_STATE_OFFHOOK"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v10, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v9, v10}, Lcom/htc/server/WirelessDisplayService;->access$5502(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0

    .line 1638
    .end local v8           #state:Ljava/lang/String;
    :cond_13
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x3

    if-eq v3, v9, :cond_14

    const/4 v9, 0x7

    if-ne v3, v9, :cond_0

    .line 1641
    :cond_14
    const-string v9, "WirelessDisplayService"

    const-string v10, "OutgoingCallReceiver:"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const-string v9, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1643
    .restart local v7       #phonenumber:Ljava/lang/String;
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OutgoingCallReceiver:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v10, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v9, v10}, Lcom/htc/server/WirelessDisplayService;->access$5502(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 1646
    const/4 v9, 0x3

    if-ne v3, v9, :cond_15

    .line 1647
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x29

    const/16 v11, 0x2b

    const/16 v12, 0x2e

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 1648
    .local v6, msg3:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1649
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1650
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1651
    .end local v6           #msg3:Landroid/os/Message;
    :cond_15
    const/4 v9, 0x7

    if-ne v3, v9, :cond_0

    .line 1652
    const/4 v9, 0x4

    if-ne v2, v9, :cond_16

    .line 1653
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1654
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1655
    :cond_16
    const/4 v9, 0x5

    if-ne v2, v9, :cond_0

    .line 1656
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1657
    const-string v9, "WirelessDisplayService"

    const-string v10, "IncomingCallReceiver: mAppCallScreen:7: Should not be here"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
