.class final Lcom/htc/server/WirelessDisplayService$H;
.super Landroid/os/Handler;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 499
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 61
    .parameter "msg"

    .prologue
    .line 503
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v52, v0

    .line 504
    .local v52, type:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 505
    .local v8, arg1:I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 506
    .local v9, arg2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v38

    .line 508
    .local v38, previousState:I
    sparse-switch v52, :sswitch_data_0

    .line 1292
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 510
    :sswitch_0
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "HANDLE_CHANGE_STATE state="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " err="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/16 v56, 0x8

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_1

    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v8, v0, :cond_1

    .line 513
    const-string v56, "WirelessDisplayService"

    const-string v57, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    :cond_1
    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v8, v0, :cond_2

    .line 518
    const/16 v56, 0x33

    const/16 v57, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v26

    .line 519
    .local v26, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 522
    .end local v26           #msg2:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto :goto_0

    .line 526
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v56

    if-lez v56, :cond_4

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$310(Lcom/htc/server/WirelessDisplayService;)I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v56

    if-nez v56, :cond_3

    .line 529
    const-string v56, "WirelessDisplayService"

    const-string v57, "wifi scan fail!"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_3
    const/16 v56, 0x11

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v34

    .line 531
    .local v34, msgWifiScan:Landroid/os/Message;
    const-wide/16 v56, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 533
    .end local v34           #msgWifiScan:Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$302(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    .line 537
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v55

    .line 538
    .local v55, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v18

    .line 539
    .local v18, ipAddress:I
    move/from16 v48, v18

    .line 540
    .local v48, temp:I
    const-string v56, "%d.%d.%d.%d"

    const/16 v57, 0x4

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    const/16 v58, 0x1

    shr-int/lit8 v59, v18, 0x8

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    const/16 v58, 0x2

    shr-int/lit8 v59, v18, 0x10

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    const/16 v58, 0x3

    shr-int/lit8 v59, v18, 0x18

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 545
    .local v19, ipStr:Ljava/lang/String;
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "HANDLE_GET_DEVICE_IP:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, "  "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$500()Ljava/util/regex/Pattern;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .line 547
    .local v23, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v56

    if-eqz v56, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v56

    const-string v57, "0.0.0"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v56

    if-nez v56, :cond_7

    .line 548
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Got the IP address"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-nez v56, :cond_6

    .line 550
    new-instance v56, Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v58, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v58

    const-string v59, "3655"

    invoke-direct/range {v56 .. v59}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 551
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v56

    const/16 v57, -0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_5

    .line 552
    const-string v56, "WirelessDisplayService"

    const-string v57, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 559
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 557
    :cond_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto :goto_1

    .line 560
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v56

    if-eqz v56, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_0

    .line 561
    const/16 v56, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 562
    .local v16, getIp:Landroid/os/Message;
    const-wide/16 v56, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 568
    .end local v16           #getIp:Landroid/os/Message;
    .end local v18           #ipAddress:I
    .end local v19           #ipStr:Ljava/lang/String;
    .end local v23           #matcher2:Ljava/util/regex/Matcher;
    .end local v48           #temp:I
    .end local v55           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :sswitch_3
    const-string v56, "WirelessDisplayService"

    const-string v57, "HANDLE_STOP_DIS"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_8

    .line 570
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 572
    :cond_8
    const/16 v56, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 573
    const/16 v56, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 574
    const/16 v56, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 575
    const/16 v56, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 577
    const/16 v56, 0x33

    const/16 v57, 0x35

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v30

    .line 578
    .local v30, msgSt:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 580
    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()V
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->clear()V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v56

    const/16 v57, 0x49

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 593
    .end local v30           #msgSt:Landroid/os/Message;
    :sswitch_4
    const-string v56, "WirelessDisplayService"

    const-string v57, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/16 v56, 0x1f

    const/16 v57, 0x21

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v50

    .line 598
    .local v50, timeOutStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 603
    .end local v50           #timeOutStop:Landroid/os/Message;
    :sswitch_5
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "HANDLE_STOP_TRANSMIT: transmit:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_0

    .line 605
    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v8, v0, :cond_9

    .line 606
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 608
    :cond_9
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 613
    :sswitch_6
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "HANDLE_TURN_OFF_CONCURRENT_HOTSPOT, getWifidisplayApEnabled: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v58, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v58 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, "Mirror State: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/16 v56, 0x1

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v56

    if-eqz v56, :cond_0

    .line 615
    new-instance v56, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    .line 625
    :sswitch_7
    const-string v56, "WirelessDisplayService"

    const-string v57, "HANDLE_WIFI_DIS"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    .line 631
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v56

    if-nez v56, :cond_0

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v57

    new-instance v58, Landroid/content/Intent;

    const-string v59, "com.htc.wifidisplay.IWfdService"

    invoke-direct/range {v58 .. v59}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v59, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v59 .. v59}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v57 .. v60}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v57

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$1602(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 634
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Bind WHDMI WfdService = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v58, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v58 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 639
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v56

    if-eqz v56, :cond_a

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$1602(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$1902(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 643
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Unbind WfdService = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v58, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v58 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_a
    const/16 v56, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 646
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 650
    :sswitch_a
    const-string v56, "WirelessDisplayService"

    const-string v57, "HANDLE_RESET_WDS_USABLE_FLAG"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 654
    :sswitch_b
    move v12, v8

    .line 655
    .local v12, configState:I
    const/16 v56, 0x3

    move/from16 v0, v56

    if-eq v8, v0, :cond_b

    const/16 v56, 0x4

    move/from16 v0, v56

    if-ne v8, v0, :cond_e

    .line 656
    :cond_b
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "receiver WfdServices Call back, "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v24, Landroid/content/Intent;

    const-string v56, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v24

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .local v24, mirrorResultIntent:Landroid/content/Intent;
    const/16 v56, 0x3

    move/from16 v0, v56

    if-ne v8, v0, :cond_d

    .line 659
    const-string v56, "RESULT"

    const-string v57, "SUCCESS"

    move-object/from16 v0, v24

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 660
    :cond_d
    const/16 v56, 0x4

    move/from16 v0, v56

    if-ne v8, v0, :cond_c

    .line 661
    const-string v56, "RESULT"

    const-string v57, "FAIL"

    move-object/from16 v0, v24

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto :goto_2

    .line 666
    .end local v24           #mirrorResultIntent:Landroid/content/Intent;
    :cond_e
    const/16 v56, 0x5

    move/from16 v0, v56

    if-ne v8, v0, :cond_0

    .line 667
    const/16 v56, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 677
    .end local v12           #configState:I
    :sswitch_c
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "HANDLE_WIFI_SCAN_RESULT_AVAILABLE, dongle scan = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v8, v0, :cond_f

    const/16 v56, 0x1

    :goto_3
    move-object/from16 v0, v57

    move/from16 v1, v56

    #calls: Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$2200(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 678
    :cond_f
    const/16 v56, 0x0

    goto :goto_3

    .line 685
    :sswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v56

    const-string v57, "wivu_res"

    invoke-virtual/range {v56 .. v57}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 686
    .local v46, status:Ljava/lang/String;
    const/16 v56, 0x3e

    move/from16 v0, v56

    if-ne v8, v0, :cond_12

    .line 688
    const-string v56, "WirelessDisplayService"

    move-object/from16 v0, v56

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_11

    .line 690
    const-string v56, "VALUE=1"

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_10

    .line 691
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_0

    const/16 v56, 0x1

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_0

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x2

    const/16 v58, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v56 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 695
    const/16 v56, 0x1

    const/16 v57, 0x1

    const/16 v58, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v49

    .line 696
    .local v49, timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v56

    const-wide/32 v57, 0x15f90

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    move-wide/from16 v2, v57

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 699
    .end local v49           #timeOut2:Landroid/os/Message;
    :cond_10
    const-string v56, "VALUE=0"

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_0

    .line 700
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 703
    :cond_11
    const/16 v56, -0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_0

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    const/16 v58, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v56 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 708
    :cond_12
    const/16 v56, 0x3f

    move/from16 v0, v56

    if-ne v8, v0, :cond_15

    .line 710
    const-string v56, "WirelessDisplayService"

    move-object/from16 v0, v56

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_14

    .line 712
    const-string v56, "VALUE=1"

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_13

    .line 713
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 715
    :cond_13
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 716
    :cond_14
    const/16 v56, -0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_0

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    const/16 v58, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v56 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 720
    :cond_15
    const/16 v56, 0x40

    move/from16 v0, v56

    if-ne v8, v0, :cond_16

    .line 721
    const-string v56, "WirelessDisplayService"

    move-object/from16 v0, v56

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 722
    :cond_16
    const/16 v56, 0x41

    move/from16 v0, v56

    if-eq v8, v0, :cond_0

    .line 725
    const/16 v56, 0x42

    move/from16 v0, v56

    if-ne v8, v0, :cond_0

    .line 726
    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_0

    .line 727
    move-object/from16 v51, v46

    .line 728
    .local v51, tosend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 734
    .end local v46           #status:Ljava/lang/String;
    .end local v51           #tosend:Ljava/lang/String;
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v56

    const-string v57, "wivu_req"

    invoke-virtual/range {v56 .. v57}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 735
    .local v41, request:Ljava/lang/String;
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "WIVU_REQ:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-eqz v41, :cond_1e

    const/16 v56, 0x16

    move/from16 v0, v56

    if-ne v8, v0, :cond_1e

    .line 739
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v56

    const/16 v57, 0x16

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 740
    const/16 v56, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 742
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2900()Ljava/util/regex/Pattern;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 743
    .local v22, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v56

    if-eqz v56, :cond_17

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v57

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$3002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    :cond_17
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3100()Ljava/util/regex/Pattern;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 746
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v56

    if-eqz v56, :cond_18

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v57

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$3202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 748
    :cond_18
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/regex/Pattern;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 749
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v56

    if-eqz v56, :cond_19

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v57

    #setter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$3402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    :cond_19
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "IP = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v58, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ", audioPort = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v58, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$3200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ", videoPort = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v58, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v58, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$3200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v59, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v59

    #calls: Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v56 .. v59}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_1d

    const/16 v56, 0x2

    move/from16 v0, v38

    move/from16 v1, v56

    if-eq v0, v1, :cond_1a

    const/16 v56, 0x7

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_1d

    .line 757
    :cond_1a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_1c

    const/16 v56, 0x7

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_1c

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$3600(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v56

    if-eqz v56, :cond_1b

    .line 759
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v56

    const/16 v57, 0x29

    const/16 v58, 0x2a

    const/16 v59, 0x2c

    invoke-virtual/range {v56 .. v59}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v27

    .line 760
    .local v27, msg3:Landroid/os/Message;
    const/16 v56, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 762
    const-wide/16 v56, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 764
    .end local v27           #msg3:Landroid/os/Message;
    :cond_1b
    const-string v56, "WirelessDisplayService"

    const-string v57, "Application wants to PAUSE so ignore WIVUSTART"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 767
    :cond_1c
    const/16 v56, 0x2

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_0

    .line 769
    const/16 v56, 0x33

    const/16 v57, 0x34

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v25

    .line 771
    .local v25, msg1:Landroid/os/Message;
    const-wide/16 v56, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 777
    .end local v25           #msg1:Landroid/os/Message;
    :cond_1d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_0

    .line 778
    const-string v56, "WirelessDisplayService"

    const-string v57, "Dongle wrong state: take it out"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 780
    const/16 v56, 0x1f

    const/16 v57, 0x21

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    .line 781
    .local v21, makeSure:Landroid/os/Message;
    const-wide/16 v56, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 785
    .end local v21           #makeSure:Landroid/os/Message;
    .end local v22           #matcher:Ljava/util/regex/Matcher;
    :cond_1e
    const/16 v56, 0x17

    move/from16 v0, v56

    if-ne v8, v0, :cond_22

    .line 788
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v56

    const/16 v57, 0x17

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 789
    const/16 v56, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 791
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_1f

    .line 792
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_1f

    const/16 v56, 0x7

    move/from16 v0, v38

    move/from16 v1, v56

    if-eq v0, v1, :cond_1f

    .line 794
    const-string v56, "WirelessDisplayService"

    const-string v57, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/16 v56, 0x6

    const/16 v57, -0x1

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v47

    .line 796
    .local v47, stopTrans:Landroid/os/Message;
    const-wide/16 v56, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 799
    .end local v47           #stopTrans:Landroid/os/Message;
    :cond_1f
    const/16 v56, 0x1

    move/from16 v0, v38

    move/from16 v1, v56

    if-eq v0, v1, :cond_20

    .line 801
    const/16 v56, 0x7

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_21

    .line 805
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-nez v56, :cond_20

    .line 806
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v56

    const/16 v57, 0x29

    const/16 v58, 0x2b

    const/16 v59, 0x2c

    invoke-virtual/range {v56 .. v59}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    .line 807
    .local v29, msgPause:Landroid/os/Message;
    const/16 v56, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 808
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 818
    .end local v29           #msgPause:Landroid/os/Message;
    :cond_20
    :goto_4
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3800()Ljava/lang/Boolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v56

    if-eqz v56, :cond_0

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v56

    if-eqz v56, :cond_0

    .line 821
    const-string v56, "WirelessDisplayService"

    const-string v57, "Switching the dongle"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 824
    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$3802(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 812
    :cond_21
    const/16 v56, 0x33

    const/16 v57, 0x35

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v26

    .line 813
    .restart local v26       #msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    .line 827
    .end local v26           #msg2:Landroid/os/Message;
    :cond_22
    const/16 v56, 0x18

    move/from16 v0, v56

    if-ne v8, v0, :cond_23

    .line 828
    const-string v56, "="

    move-object/from16 v0, v41

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 829
    .local v20, macs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    #calls: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v56

    if-eqz v56, :cond_0

    const/16 v56, 0x8

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_0

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    invoke-interface/range {v56 .. v57}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_0

    .line 834
    const-string v56, "WirelessDisplayService"

    const-string v57, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v56, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 840
    .end local v20           #macs:[Ljava/lang/String;
    :cond_23
    const/16 v56, 0x19

    move/from16 v0, v56

    if-ne v8, v0, :cond_0

    .line 841
    const-string v56, "WirelessDisplayService"

    const-string v57, "SWUPGRADE and send notification"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 923
    .end local v41           #request:Ljava/lang/String;
    :sswitch_f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_0

    .line 925
    const/16 v56, 0x20

    move/from16 v0, v56

    if-ne v8, v0, :cond_24

    .line 927
    const-string v56, "WirelessDisplayService"

    const-string v57, "REQ_DISCOVERY"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    goto/16 :goto_0

    .line 930
    :cond_24
    const/16 v56, 0x21

    move/from16 v0, v56

    if-ne v8, v0, :cond_26

    .line 932
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "REQ_PLUGGED:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/16 v40, -0x1

    .line 934
    .local v40, req:I
    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_25

    .line 935
    const/16 v56, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 936
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v40

    goto/16 :goto_0

    .line 940
    :cond_25
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v40

    .line 941
    const/16 v56, 0x33

    const/16 v57, 0x35

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v32

    .line 942
    .local v32, msgStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 945
    .end local v32           #msgStop:Landroid/os/Message;
    .end local v40           #req:I
    :cond_26
    const/16 v56, 0x22

    move/from16 v0, v56

    if-ne v8, v0, :cond_27

    .line 947
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_0

    .line 949
    :cond_27
    const/16 v56, 0x23

    move/from16 v0, v56

    if-ne v8, v0, :cond_28

    .line 951
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_0

    .line 953
    :cond_28
    const/16 v56, 0x24

    move/from16 v0, v56

    if-ne v8, v0, :cond_29

    .line 955
    const-string v56, "WirelessDisplayService"

    const-string v57, "REQ_STOP_DIS"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 957
    const/16 v56, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 958
    const/16 v56, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 959
    const/16 v56, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 961
    const/16 v56, 0x33

    const/16 v57, 0x35

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 962
    .local v31, msgSto:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 964
    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->clear()V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v56

    const/16 v57, 0x49

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 971
    .end local v31           #msgSto:Landroid/os/Message;
    :cond_29
    const/16 v56, 0x25

    move/from16 v0, v56

    if-ne v8, v0, :cond_2a

    .line 972
    const-string v56, "WirelessDisplayService"

    const-string v57, "REQ_PEER_SELECT"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/16 v56, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 974
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v56

    const-string v57, "dongle_bssid"

    invoke-virtual/range {v56 .. v57}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 975
    .local v10, bssid2:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 977
    .end local v10           #bssid2:Ljava/lang/String;
    :cond_2a
    const/16 v56, 0x27

    move/from16 v0, v56

    if-ne v8, v0, :cond_2b

    .line 978
    const-string v56, "WirelessDisplayService"

    const-string v57, "REQ_SET_INTERFACE"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v56

    const-string v57, "interface"

    invoke-virtual/range {v56 .. v57}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 980
    .local v17, ifname:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 981
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 984
    .end local v17           #ifname:Ljava/lang/String;
    :cond_2b
    const/16 v56, 0x28

    move/from16 v0, v56

    if-ne v8, v0, :cond_0

    .line 985
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "REQ_JOIN_GROUP:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/16 v40, -0x1

    .line 987
    .restart local v40       #req:I
    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_2c

    .line 988
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v40

    goto/16 :goto_0

    .line 990
    :cond_2c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_0

    .line 997
    .end local v40           #req:I
    :sswitch_10
    const/16 v56, 0x34

    move/from16 v0, v56

    if-ne v8, v0, :cond_2f

    .line 999
    const-string v56, "WirelessDisplayService"

    const-string v57, "MEDIA_START"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/16 v56, 0x3

    move/from16 v0, v38

    move/from16 v1, v56

    if-eq v0, v1, :cond_0

    .line 1005
    const/16 v44, -0x1

    .line 1006
    .local v44, star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v44

    .line 1007
    if-nez v44, :cond_2d

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x3

    const/16 v58, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v56 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1009
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    .line 1012
    :cond_2d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_2e

    .line 1013
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1014
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    const/16 v58, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v56 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1016
    .end local v44           #star:I
    :cond_2f
    const/16 v56, 0x35

    move/from16 v0, v56

    if-ne v8, v0, :cond_31

    .line 1018
    const-string v56, "WirelessDisplayService"

    const-string v57, "MEDIA_STOP"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/16 v56, 0x4

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_30

    .line 1024
    :cond_30
    const/16 v44, -0x1

    .line 1025
    .restart local v44       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v44

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v57

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v9}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1027
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .line 1028
    .end local v44           #star:I
    :cond_31
    const/16 v56, 0x36

    move/from16 v0, v56

    if-ne v8, v0, :cond_0

    .line 1029
    const-string v56, "WirelessDisplayService"

    const-string v57, "MEDIA_RESTART"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/16 v44, -0x1

    .line 1031
    .restart local v44       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v44

    .line 1035
    const/16 v56, -0x1

    move/from16 v0, v44

    move/from16 v1, v56

    if-ne v0, v1, :cond_0

    .line 1036
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_32

    .line 1037
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1038
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    const/16 v58, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v56 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1044
    .end local v44           #star:I
    :sswitch_11
    move/from16 v45, v38

    .line 1045
    .local v45, state:I
    const/4 v14, 0x0

    .line 1047
    .local v14, err:I
    const/16 v56, 0x1

    move/from16 v0, v38

    move/from16 v1, v56

    if-eq v0, v1, :cond_0

    .line 1049
    const/16 v56, 0x2b

    move/from16 v0, v56

    if-ne v8, v0, :cond_36

    .line 1050
    const-string v56, "WirelessDisplayService"

    const-string v57, "MEDIA_PAUSE event"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/16 v56, 0x2c

    move/from16 v0, v56

    if-ne v9, v0, :cond_34

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v6

    .line 1053
    .local v6, app:I
    if-nez v6, :cond_33

    .line 1054
    const/16 v45, 0x7

    .line 1097
    .end local v6           #app:I
    :cond_33
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v45

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v14}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1055
    :cond_34
    const/16 v56, 0x2d

    move/from16 v0, v56

    if-ne v9, v0, :cond_35

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)V

    .line 1057
    const/16 v45, 0x4

    goto :goto_5

    .line 1058
    :cond_35
    const/16 v56, 0x2e

    move/from16 v0, v56

    if-ne v9, v0, :cond_33

    .line 1059
    const-string v56, "WirelessDisplayService"

    const-string v57, "MEDIA_PAUSE: CALL_PAUSE event"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v6

    .line 1061
    .restart local v6       #app:I
    if-nez v6, :cond_33

    .line 1062
    const/16 v45, 0x9

    goto :goto_5

    .line 1064
    .end local v6           #app:I
    :cond_36
    const/16 v56, 0x2a

    move/from16 v0, v56

    if-ne v8, v0, :cond_33

    .line 1065
    const-string v56, "WirelessDisplayService"

    const-string v57, "MEDIA_RESUME event"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/16 v56, 0x2c

    move/from16 v0, v56

    if-ne v9, v0, :cond_39

    .line 1067
    const/16 v56, 0x7

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_33

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v7

    .line 1069
    .local v7, app2:I
    if-nez v7, :cond_37

    .line 1070
    const/16 v45, 0x3

    goto :goto_5

    .line 1072
    :cond_37
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_38

    .line 1073
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1074
    :cond_38
    const/16 v45, 0x1

    .line 1075
    const/4 v14, -0x4

    goto/16 :goto_5

    .line 1078
    .end local v7           #app2:I
    :cond_39
    const/16 v56, 0x2d

    move/from16 v0, v56

    if-ne v9, v0, :cond_3a

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)V

    .line 1080
    const/16 v45, 0x3

    goto/16 :goto_5

    .line 1081
    :cond_3a
    const/16 v56, 0x2e

    move/from16 v0, v56

    if-ne v9, v0, :cond_33

    .line 1082
    const-string v56, "WirelessDisplayService"

    const-string v57, "MEDIA_RESUME: CALL_PAUSE event"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/16 v56, 0x9

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_33

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v57

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v7

    .line 1085
    .restart local v7       #app2:I
    if-nez v7, :cond_3b

    .line 1086
    const/16 v45, 0x3

    goto/16 :goto_5

    .line 1088
    :cond_3b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    if-eqz v56, :cond_3c

    .line 1089
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1090
    :cond_3c
    const/16 v45, 0x1

    .line 1091
    const/4 v14, -0x4

    goto/16 :goto_5

    .line 1110
    .end local v7           #app2:I
    .end local v14           #err:I
    .end local v45           #state:I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Z

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    const-string v58, "/data/misc/wifidisplay.conf"

    #calls: Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v57 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4602(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1114
    :sswitch_13
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "HANDLE_PROCESS_WFDSERVICE, mWfdServiceRetryCount: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v58, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v58 .. v58}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;)I

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ", arg:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v56

    if-nez v56, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;)I

    move-result v56

    if-lez v56, :cond_3d

    .line 1116
    const/16 v56, 0x70

    const/16 v57, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v8, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 1117
    .local v33, msgUseWfdService:Landroid/os/Message;
    const-wide/16 v56, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1118
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "WfdService not ready, resent, type = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$4810(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .line 1120
    .end local v33           #msgUseWfdService:Landroid/os/Message;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v56

    if-eqz v56, :cond_3f

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x5

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4802(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1122
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_3e

    .line 1123
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1124
    const/16 v56, 0x13

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    .line 1125
    .local v42, resetWFD_Flag:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v56

    const-wide/32 v57, 0x249f0

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    move-wide/from16 v2, v57

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1127
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Use WfdService, type = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    .line 1130
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x3

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;I)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v57

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0

    .line 1143
    .end local v42           #resetWFD_Flag:Landroid/os/Message;
    :cond_3e
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Can\'t use WfdService, WfdService is processing ignore message, type = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1146
    :cond_3f
    const-string v56, "WirelessDisplayService"

    const-string v57, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1150
    :sswitch_14
    move v4, v8

    .line 1151
    .local v4, absoluteDirection:I
    move/from16 v39, v9

    .line 1152
    .local v39, relativeDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v39

    #calls: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v15

    .line 1153
    .local v15, fingerIndicator:I
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "HANDLE_FINGER_GESTURE_DIRECTION, fingerIndicator = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v15}, Lcom/htc/server/WirelessDisplayService;->access$5302(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1157
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v56

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v57

    const/16 v58, 0x6f

    const/16 v59, 0x1

    move-object/from16 v0, v57

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v15, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v57

    const-wide/16 v58, 0x3e8

    invoke-virtual/range {v56 .. v59}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1160
    .end local v4           #absoluteDirection:I
    .end local v15           #fingerIndicator:I
    .end local v39           #relativeDirection:I
    :sswitch_15
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-nez v56, :cond_40

    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_40

    .line 1161
    const-string v56, "WirelessDisplayService"

    const-string v57, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1163
    :cond_40
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_41

    const/16 v56, 0x3

    move/from16 v0, v56

    if-ne v8, v0, :cond_41

    .line 1165
    const-string v56, "WirelessDisplayService"

    const-string v57, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    .line 1168
    :cond_41
    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v8, v0, :cond_0

    .line 1170
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_42

    .line 1171
    const-string v56, "WirelessDisplayService"

    const-string v57, "Pre Load DLNA Services"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    new-instance v57, Landroid/content/Intent;

    const-string v58, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v57 .. v58}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v56 .. v57}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    :cond_42
    :goto_6
    const/16 v56, 0x3

    move/from16 v0, v38

    move/from16 v1, v56

    if-eq v0, v1, :cond_43

    const/16 v56, 0x7

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_44

    .line 1180
    :cond_43
    new-instance v24, Landroid/content/Intent;

    const-string v56, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v24

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1181
    .restart local v24       #mirrorResultIntent:Landroid/content/Intent;
    const-string v56, "RESULT"

    const-string v57, "SUCCESS"

    move-object/from16 v0, v24

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1183
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "mirror mode status: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " ,ignore finger gesture, sendBroadcast Intent with SUCCESS "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1174
    .end local v24           #mirrorResultIntent:Landroid/content/Intent;
    :catch_0
    move-exception v43

    .line 1175
    .local v43, se:Ljava/lang/SecurityException;
    const-string v56, "WirelessDisplayService"

    const-string v57, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1185
    .end local v43           #se:Ljava/lang/SecurityException;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->getEnvironmentDongleState()I
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)I

    move-result v13

    .line 1186
    .local v13, environmentDongleState:I
    const-string v56, "WirelessDisplayService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Start mirror mode from finger gesture indicator, environmentDonleState = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    new-instance v36, Landroid/content/Intent;

    const-string v56, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v36

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v36, notifyConfigerTool:Landroid/content/Intent;
    new-instance v35, Landroid/content/Intent;

    const-string v56, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v35

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v35, notifyConfigToolToConfig:Landroid/content/Intent;
    new-instance v37, Landroid/content/Intent;

    const-string v56, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v37

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v37, notifyNormalConfigTool:Landroid/content/Intent;
    const/high16 v56, 0x1000

    move-object/from16 v0, v36

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1191
    const/high16 v56, 0x1000

    move-object/from16 v0, v35

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1192
    const/high16 v56, 0x1000

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1194
    new-instance v24, Landroid/content/Intent;

    const-string v56, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v24

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1195
    .restart local v24       #mirrorResultIntent:Landroid/content/Intent;
    const-string v56, "RESULT"

    const-string v57, "FAIL"

    move-object/from16 v0, v24

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v56

    if-nez v56, :cond_46

    .line 1198
    const-string v56, "WirelessDisplayService"

    const-string v57, "FINGER GESTURE, WIFI DISABLED"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_45

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1203
    :cond_45
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1204
    :catch_1
    move-exception v5

    .line 1205
    .local v5, ae:Landroid/content/ActivityNotFoundException;
    const-string v56, "WirelessDisplayService"

    const-string v57, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1209
    .end local v5           #ae:Landroid/content/ActivityNotFoundException;
    :cond_46
    packed-switch v13, :pswitch_data_1

    .line 1273
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_4c

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1211
    :pswitch_2
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_47

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1215
    :cond_47
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1216
    :catch_2
    move-exception v5

    .line 1217
    .restart local v5       #ae:Landroid/content/ActivityNotFoundException;
    const-string v56, "WirelessDisplayService"

    const-string v57, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1223
    .end local v5           #ae:Landroid/content/ActivityNotFoundException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    const/16 v57, 0xa

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v56 .. v57}, Lcom/htc/server/WirelessDisplayService;->access$4802(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1227
    const/16 v56, 0xb

    const/16 v57, -0x1

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v28

    .line 1228
    .local v28, msgBindWfdService:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1229
    const/16 v56, 0x70

    const/16 v57, 0x0

    const/16 v58, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 1230
    .restart local v33       #msgUseWfdService:Landroid/os/Message;
    const-wide/16 v56, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1237
    .end local v28           #msgBindWfdService:Landroid/os/Message;
    .end local v33           #msgUseWfdService:Landroid/os/Message;
    :pswitch_4
    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_48

    .line 1238
    const-string v56, "WirelessDisplayService"

    const-string v57, "Don\'t receive Wifi Scan, it\'s Timer trigger, trigger Configuration Tool"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1241
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v54

    .line 1242
    .local v54, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v56

    if-lez v56, :cond_4a

    .line 1243
    const/16 v56, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/htc/service/DongleInfo;

    if-eqz v56, :cond_49

    .line 1244
    const/16 v56, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/htc/service/DongleInfo;

    .line 1245
    .local v53, unConfigDongle:Lcom/htc/service/DongleInfo;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1246
    .local v11, bundle:Landroid/os/Bundle;
    const-string v56, "DONGLE_MAC"

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1252
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v53           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :goto_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1253
    :catch_3
    move-exception v5

    .line 1254
    .restart local v5       #ae:Landroid/content/ActivityNotFoundException;
    const-string v56, "WirelessDisplayService"

    const-string v57, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1249
    .end local v5           #ae:Landroid/content/ActivityNotFoundException;
    :cond_49
    const-string v56, "WirelessDisplayService"

    const-string v57, "unConfigDongleList.get(0) is null , should not be here"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1257
    :cond_4a
    const-string v56, "WirelessDisplayService"

    const-string v57, "unConfigDongleList = 0, should not be here"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1262
    .end local v54           #unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :pswitch_5
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v56

    if-eqz v56, :cond_4b

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1266
    :cond_4b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1267
    :catch_4
    move-exception v5

    .line 1268
    .restart local v5       #ae:Landroid/content/ActivityNotFoundException;
    const-string v56, "WirelessDisplayService"

    const-string v57, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1277
    .end local v5           #ae:Landroid/content/ActivityNotFoundException;
    :cond_4c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v56, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v56 .. v56}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1278
    :catch_5
    move-exception v5

    .line 1279
    .restart local v5       #ae:Landroid/content/ActivityNotFoundException;
    const-string v56, "WirelessDisplayService"

    const-string v57, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 508
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_7
        0x6 -> :sswitch_5
        0x9 -> :sswitch_c
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_b
        0xf -> :sswitch_12
        0x10 -> :sswitch_6
        0x11 -> :sswitch_1
        0x13 -> :sswitch_a
        0x15 -> :sswitch_e
        0x1f -> :sswitch_f
        0x29 -> :sswitch_11
        0x33 -> :sswitch_10
        0x3d -> :sswitch_d
        0x6f -> :sswitch_15
        0x70 -> :sswitch_13
        0x71 -> :sswitch_14
    .end sparse-switch

    .line 1128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1209
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
