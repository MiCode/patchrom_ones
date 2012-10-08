.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2924
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2927
    if-nez p2, :cond_1

    .line 3060
    :cond_0
    :goto_0
    return-void

    .line 2929
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2930
    .local v1, action:Ljava/lang/String;
    const-string v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2931
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 2934
    .local v11, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v13}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2935
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v13

    const/16 v14, 0x37

    invoke-virtual {v13, v14}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2937
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v13

    const/16 v14, 0x38

    invoke-virtual {v13, v14}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2940
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v13, "android.app.admin.intent.ALLOW_BT_CHANGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2941
    const-string v13, "android.app.admin.extra.ALLOW_STATUS"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2942
    .local v6, estate:I
    if-nez v6, :cond_0

    .line 2943
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 2945
    .restart local v11       #resolver:Landroid/content/ContentResolver;
    const-string v13, "bluetooth_on"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-lez v13, :cond_0

    .line 2948
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/server/BluetoothService;->disable(Z)Z

    goto :goto_0

    .line 2952
    .end local v6           #estate:I
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :cond_4
    const-string v13, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2953
    const-string v13, "android.intent.extra.DOCK_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2955
    .local v12, state:I
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    if-nez v12, :cond_5

    .line 2957
    const/4 v13, 0x0

    invoke-static {v13}, Landroid/server/BluetoothService;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 2958
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v13, v14}, Landroid/server/BluetoothService;->access$1202(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2960
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "bluetooth_service_settings"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2963
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dock_bluetooth_address"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/server/BluetoothService;->access$1100()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2964
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2966
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #state:I
    :cond_6
    const-string v13, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2967
    const-string v13, "android.bluetooth.profile.extra.STATE"

    const/16 v14, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2969
    .local v3, audioState:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v14

    const/16 v13, 0xc

    if-ne v3, v13, :cond_7

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Landroid/server/BluetoothService$ConnectionManager;->setScoAudioActive(Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    .line 2970
    .end local v3           #audioState:I
    :cond_8
    const-string v13, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2971
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 2973
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v13

    invoke-virtual {v13}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 2974
    .local v2, audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_a

    .line 2975
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v14

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v14, v13}, Landroid/server/BluetoothA2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 2976
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 2974
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2980
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 2982
    .end local v2           #audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7           #i:I
    :cond_b
    const-string v13, "BluetoothService"

    const-string v14, "BluetoothA2dp service not available"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2984
    :cond_c
    const-string v13, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 2985
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Input connection state change"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    const-string v13, "android.bluetooth.profile.extra.STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2987
    .restart local v12       #state:I
    const-string v13, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2989
    .local v10, prevState:I
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 2992
    .local v8, inputDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x4

    invoke-virtual {v13, v8, v14, v12, v10}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto/16 :goto_0

    .line 2994
    .end local v8           #inputDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #prevState:I
    .end local v12           #state:I
    :cond_d
    const-string v13, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 2995
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pan connection state change"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    const-string v13, "android.bluetooth.profile.extra.STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2997
    .restart local v12       #state:I
    const-string v13, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2999
    .restart local v10       #prevState:I
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 3002
    .local v9, panDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x5

    invoke-virtual {v13, v9, v14, v12, v10}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto/16 :goto_0

    .line 3004
    .end local v9           #panDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #prevState:I
    .end local v12           #state:I
    :cond_e
    const-string v13, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 3005
    const-string v13, "BluetoothService"

    const-string v14, "Received ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 3007
    .local v4, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v4, :cond_0

    .line 3011
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v13

    invoke-virtual {v13}, Landroid/server/BluetoothEventLoop;->getAuthorizationRequestData()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_f

    .line 3012
    const-string v13, "BluetoothService"

    const-string v14, "SAP authorization not in progress, ignoring this intent"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3016
    :cond_f
    const-string v13, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 3019
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    .line 3020
    const-string v13, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3021
    const-string v13, "BluetoothService"

    const-string v14, "Setting trust state to true"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 3025
    :cond_10
    const-string v13, "BluetoothService"

    const-string v14, "User did not accept the SIM access request"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 3028
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_11
    const-string v13, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 3029
    const-string v13, "BluetoothService"

    const-string v14, "ACL connected event received"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 3031
    .restart local v4       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v4, :cond_0

    .line 3035
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->DEVICE_ADDED:Z
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Z

    move-result v14

    #calls: Landroid/server/BluetoothService;->updateConnectedDevicesList(Landroid/bluetooth/BluetoothDevice;Z)V
    invoke-static {v13, v4, v14}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    .line 3036
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_12
    const-string v13, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 3037
    const-string v13, "BluetoothService"

    const-string v14, "ACL disconnected event received"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 3039
    .restart local v4       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v4, :cond_0

    .line 3043
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->DEVICE_REMOVED:Z
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;)Z

    move-result v14

    #calls: Landroid/server/BluetoothService;->updateConnectedDevicesList(Landroid/bluetooth/BluetoothDevice;Z)V
    invoke-static {v13, v4, v14}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    .line 3046
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_13
    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    const-string v13, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 3049
    :cond_14
    const-string v13, "BluetoothService"

    const-string v14, "Received BOOT_COMPLETED or ACTIOB_QUICKBOOT_POWERON message"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1900(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1900(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x3e8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3054
    :cond_15
    const-string v13, "android.intent.action.DISCOVERABLE_TIMEOUT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3056
    const-string v13, "BluetoothService"

    const-string v14, "Received ACTION_ALARM_DISCOVERABLE_TIMEOUT"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/16 v14, 0x15

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0
.end method
