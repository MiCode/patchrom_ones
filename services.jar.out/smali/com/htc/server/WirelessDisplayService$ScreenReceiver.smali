.class Lcom/htc/server/WirelessDisplayService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1300
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1301
    .local v2, curState:I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, action:Ljava/lang/String;
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ScreenReceiver;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1305
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x1f

    const/16 v11, 0x28

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 1306
    .local v8, msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1307
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_SCREEN_OFF: REQ_JOIN_GROUP - FALSE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/4 v9, 0x3

    if-eq v2, v9, :cond_0

    const/4 v9, 0x7

    if-eq v2, v9, :cond_0

    const/16 v9, 0x9

    if-ne v2, v9, :cond_1

    .line 1312
    :cond_0
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->screenOn:Z
    invoke-static {v9, v10}, Lcom/htc/server/WirelessDisplayService;->access$5602(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 1313
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1314
    .local v1, condState:I
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ScreenReceiver:ACTION_SCREEN_OFF :curState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cond:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    .line 1317
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x29

    const/16 v11, 0x2b

    const/16 v12, 0x2d

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1318
    .local v3, msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1319
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1320
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver:starting Timeout of 10mins: mAppCallScreen: 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1323
    .local v6, msgTimeOut:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const-wide/32 v10, 0x1d4c0

    invoke-virtual {v9, v6, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1406
    .end local v1           #condState:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v6           #msgTimeOut:Landroid/os/Message;
    .end local v8           #msg_leave:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1324
    .restart local v1       #condState:I
    .restart local v8       #msg_leave:Landroid/os/Message;
    :cond_2
    const/4 v9, 0x7

    if-ne v2, v9, :cond_4

    .line 1325
    const/4 v9, 0x4

    if-ne v1, v9, :cond_3

    .line 1326
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1327
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_SCREEN_OFF: mAppCallScreen:5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1328
    :cond_3
    const/4 v9, 0x6

    if-ne v1, v9, :cond_1

    .line 1329
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1330
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_SCREEN_OFF: mAppCallScreen:7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1332
    :cond_4
    const/16 v9, 0x9

    if-ne v2, v9, :cond_1

    .line 1333
    const/4 v9, 0x2

    if-ne v1, v9, :cond_5

    .line 1334
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1335
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_SCREEN_OFF: mAppCallScreen:5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1336
    :cond_5
    const/4 v9, 0x6

    if-ne v1, v9, :cond_1

    .line 1337
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1338
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_SCREEN_OFF: mAppCallScreen:7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1342
    .end local v1           #condState:I
    .end local v8           #msg_leave:Landroid/os/Message;
    :cond_6
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->screenOn:Z
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1344
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v10, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->screenOn:Z
    invoke-static {v9, v10}, Lcom/htc/server/WirelessDisplayService;->access$5602(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 1345
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ScreenReceiver:ACTION_SCREEN_ON : curState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1347
    :cond_7
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->screenOn:Z
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1349
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x1f

    const/16 v11, 0x28

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 1350
    .local v7, msg_join:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1351
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: REQ_JOIN_GROUP - TRUE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v9, 0x7

    if-eq v2, v9, :cond_8

    const/4 v9, 0x4

    if-eq v2, v9, :cond_8

    const/16 v9, 0x9

    if-ne v2, v9, :cond_1

    .line 1357
    :cond_8
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1358
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1359
    .restart local v1       #condState:I
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ScreenReceiver:ACTION_USER_PRESENT: curState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " condState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v9, 0x4

    if-ne v2, v9, :cond_c

    .line 1361
    const/4 v9, 0x1

    if-ne v1, v9, :cond_9

    .line 1362
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x29

    const/16 v11, 0x2a

    const/16 v12, 0x2d

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1363
    .restart local v3       #msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v3, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1364
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1365
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1366
    .end local v3           #msg:Landroid/os/Message;
    :cond_9
    const/4 v9, 0x7

    if-ne v1, v9, :cond_a

    .line 1367
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1368
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1369
    :cond_a
    const/4 v9, 0x3

    if-ne v1, v9, :cond_b

    .line 1370
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1371
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1372
    :cond_b
    const/4 v9, 0x5

    if-ne v1, v9, :cond_1

    .line 1373
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1374
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:4 Should not be here"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1376
    :cond_c
    const/4 v9, 0x7

    if-ne v2, v9, :cond_f

    .line 1377
    const/4 v9, 0x1

    if-ne v1, v9, :cond_d

    .line 1378
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x1f

    const/16 v11, 0x21

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 1379
    .local v5, msg3:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1380
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1381
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;)V

    .line 1382
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1383
    .end local v5           #msg3:Landroid/os/Message;
    :cond_d
    const/4 v9, 0x7

    if-ne v1, v9, :cond_e

    .line 1384
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1385
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1386
    :cond_e
    const/4 v9, 0x5

    if-ne v1, v9, :cond_1

    .line 1387
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1388
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1390
    :cond_f
    const/16 v9, 0x9

    if-ne v2, v9, :cond_1

    .line 1391
    const/4 v9, 0x1

    if-ne v1, v9, :cond_10

    .line 1392
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x29

    const/16 v11, 0x2a

    const/16 v12, 0x2e

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1393
    .local v4, msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v9, v4, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1394
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1395
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:0 Should not be here"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1396
    .end local v4           #msg2:Landroid/os/Message;
    :cond_10
    const/4 v9, 0x3

    if-ne v1, v9, :cond_11

    .line 1397
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1398
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1399
    :cond_11
    const/4 v9, 0x7

    if-ne v1, v9, :cond_1

    .line 1400
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1401
    const-string v9, "WirelessDisplayService"

    const-string v10, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
