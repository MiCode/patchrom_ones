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
    .line 1709
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1717
    .local v2, bundle:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 1848
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1721
    .local v1, action:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 1722
    .local v4, curState:I
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1724
    .local v3, condState:I
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CallReceiver: action"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1726
    const-string v11, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 1727
    const-string v11, "state"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1729
    .local v10, state:Ljava/lang/String;
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IncomingCallReceiver State: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " curState"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " condState"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v11

    if-nez v11, :cond_8

    sget-object v11, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x3

    if-eq v4, v11, :cond_2

    const/4 v11, 0x4

    if-eq v4, v11, :cond_2

    const/4 v11, 0x7

    if-ne v4, v11, :cond_8

    .line 1736
    :cond_2
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v12, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11, v12}, Lcom/htc/server/WirelessDisplayService;->access$6102(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 1737
    const-string v11, "incoming_number"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1738
    .local v9, phonenumber:Ljava/lang/String;
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IncomingCallReceiver Incomng Number: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/4 v11, 0x3

    if-ne v4, v11, :cond_3

    .line 1741
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2b

    const/16 v14, 0x2e

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 1742
    .local v5, msg1:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1743
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1744
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1745
    .end local v5           #msg1:Landroid/os/Message;
    :cond_3
    const/4 v11, 0x4

    if-ne v4, v11, :cond_5

    .line 1747
    const/4 v11, 0x1

    if-ne v3, v11, :cond_4

    .line 1748
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1749
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:3"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1750
    :cond_4
    const/4 v11, 0x5

    if-ne v3, v11, :cond_0

    .line 1751
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1752
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1754
    :cond_5
    const/4 v11, 0x7

    if-ne v4, v11, :cond_0

    .line 1756
    const/4 v11, 0x4

    if-ne v3, v11, :cond_6

    .line 1757
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1758
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:6"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1759
    :cond_6
    const/4 v11, 0x5

    if-ne v3, v11, :cond_7

    .line 1760
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1761
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1762
    :cond_7
    if-nez v3, :cond_0

    .line 1763
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1764
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1768
    .end local v9           #phonenumber:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v11

    if-eqz v11, :cond_13

    sget-object v11, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 1771
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver :EXTRA_STATE_IDLE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/16 v11, 0x9

    if-ne v4, v11, :cond_d

    .line 1773
    const/4 v11, 0x2

    if-ne v3, v11, :cond_a

    .line 1775
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2a

    const/16 v14, 0x2e

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 1776
    .local v6, msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v6, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1777
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1778
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    .end local v6           #msg2:Landroid/os/Message;
    :cond_9
    :goto_1
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v12, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11, v12}, Lcom/htc/server/WirelessDisplayService;->access$6102(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0

    .line 1779
    :cond_a
    const/4 v11, 0x3

    if-ne v3, v11, :cond_b

    .line 1780
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1781
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1782
    :cond_b
    const/4 v11, 0x7

    if-ne v3, v11, :cond_c

    .line 1783
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1784
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:5"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1785
    :cond_c
    const/4 v11, 0x6

    if-ne v3, v11, :cond_9

    .line 1786
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1787
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:4"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1789
    :cond_d
    const/4 v11, 0x4

    if-ne v4, v11, :cond_10

    .line 1790
    const/4 v11, 0x2

    if-ne v3, v11, :cond_e

    .line 1791
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2a

    const/16 v14, 0x2d

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 1792
    .restart local v6       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v6, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1793
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1794
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1795
    .end local v6           #msg2:Landroid/os/Message;
    :cond_e
    const/4 v11, 0x7

    if-ne v3, v11, :cond_f

    .line 1796
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1797
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1798
    :cond_f
    const/4 v11, 0x3

    if-ne v3, v11, :cond_9

    .line 1799
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1800
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver :mAppCallScreen:1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1802
    :cond_10
    const/4 v11, 0x7

    if-ne v4, v11, :cond_9

    .line 1803
    const/4 v11, 0x2

    if-ne v3, v11, :cond_11

    .line 1804
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x1f

    const/16 v13, 0x21

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 1805
    .restart local v6       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v6, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1806
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1808
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x14

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 1809
    .local v8, msgFallBackfromAppPause:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v8, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1810
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1811
    .end local v6           #msg2:Landroid/os/Message;
    .end local v8           #msgFallBackfromAppPause:Landroid/os/Message;
    :cond_11
    const/4 v11, 0x7

    if-ne v3, v11, :cond_12

    .line 1812
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1813
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1814
    :cond_12
    const/4 v11, 0x6

    if-ne v3, v11, :cond_9

    .line 1815
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1816
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver :mAppCallScreen:4"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1821
    :cond_13
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v11

    if-nez v11, :cond_0

    sget-object v11, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1822
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver :EXTRA_STATE_OFFHOOK"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v12, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11, v12}, Lcom/htc/server/WirelessDisplayService;->access$6102(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0

    .line 1825
    .end local v10           #state:Ljava/lang/String;
    :cond_14
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x3

    if-eq v4, v11, :cond_15

    const/4 v11, 0x7

    if-ne v4, v11, :cond_0

    .line 1828
    :cond_15
    const-string v11, "WirelessDisplayService"

    const-string v12, "OutgoingCallReceiver:"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const-string v11, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1830
    .restart local v9       #phonenumber:Ljava/lang/String;
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OutgoingCallReceiver:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v12, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11, v12}, Lcom/htc/server/WirelessDisplayService;->access$6102(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 1833
    const/4 v11, 0x3

    if-ne v4, v11, :cond_16

    .line 1834
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2b

    const/16 v14, 0x2e

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 1835
    .local v7, msg3:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1836
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1837
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1838
    .end local v7           #msg3:Landroid/os/Message;
    :cond_16
    const/4 v11, 0x7

    if-ne v4, v11, :cond_0

    .line 1839
    const/4 v11, 0x4

    if-ne v3, v11, :cond_17

    .line 1840
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1841
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:6"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1842
    :cond_17
    const/4 v11, 0x5

    if-ne v3, v11, :cond_0

    .line 1843
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1844
    const-string v11, "WirelessDisplayService"

    const-string v12, "IncomingCallReceiver: mAppCallScreen:7: Should not be here"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
