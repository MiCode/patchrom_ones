.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3841
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3841
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3844
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 3846
    .local v10, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3847
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 3850
    .local v19, dockState:I
    packed-switch v19, :pswitch_data_0

    .line 3865
    const/16 v17, 0x0

    .line 3867
    .local v17, config:I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4309
    .end local v17           #config:I
    .end local v19           #dockState:I
    :cond_0
    :goto_1
    return-void

    .line 3852
    .restart local v19       #dockState:I
    :pswitch_0
    const/16 v17, 0x7

    .line 3853
    .restart local v17       #config:I
    goto :goto_0

    .line 3855
    .end local v17           #config:I
    :pswitch_1
    const/16 v17, 0x6

    .line 3856
    .restart local v17       #config:I
    goto :goto_0

    .line 3858
    .end local v17           #config:I
    :pswitch_2
    const/16 v17, 0x8

    .line 3859
    .restart local v17       #config:I
    goto :goto_0

    .line 3861
    .end local v17           #config:I
    :pswitch_3
    const/16 v17, 0x9

    .line 3862
    .restart local v17       #config:I
    goto :goto_0

    .line 3868
    .end local v17           #config:I
    .end local v19           #dockState:I
    :cond_1
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3869
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 3871
    .local v30, state:I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .line 3873
    .local v15, btDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v30

    #calls: Landroid/media/AudioService;->handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v15, v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 3878
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SenseVersion:F
    invoke-static {v2}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 3883
    const/16 v21, 0x0

    .line 3892
    .local v21, isChanged:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6300(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;I)Z

    move-result v21

    .line 3893
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAppPlay:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 3894
    if-eqz v21, :cond_0

    .line 3895
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v3, "BT state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_1

    .line 3899
    .end local v15           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v21           #isChanged:Z
    .end local v30           #state:I
    :cond_2
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3900
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 3902
    .restart local v30       #state:I
    const/16 v18, 0x10

    .line 3903
    .local v18, device:I
    const/4 v12, 0x0

    .line 3905
    .local v12, address:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .line 3906
    .restart local v15       #btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v15, :cond_0

    .line 3910
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 3911
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v14

    .line 3912
    .local v14, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v14, :cond_3

    .line 3913
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3924
    :cond_3
    :goto_2
    invoke-static {v12}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3925
    const-string v12, ""

    .line 3928
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3929
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v22, 0x1

    .line 3932
    .local v22, isConnected:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3933
    if-eqz v22, :cond_7

    const/4 v2, 0x2

    move/from16 v0, v30

    if-eq v0, v2, :cond_7

    .line 3934
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->isBTConnected:Z
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$7802(Landroid/media/AudioService;Z)Z

    .line 3935
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-static {v0, v2, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3938
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3939
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$2802(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3940
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;)V

    .line 3949
    :cond_5
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3950
    :try_start_2
    monitor-exit v3

    goto/16 :goto_1

    .end local v22           #isConnected:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3916
    :sswitch_0
    const/16 v18, 0x20

    .line 3917
    goto/16 :goto_2

    .line 3919
    :sswitch_1
    const/16 v18, 0x40

    goto/16 :goto_2

    .line 3929
    :cond_6
    const/16 v22, 0x0

    goto :goto_3

    .line 3941
    .restart local v22       #isConnected:Z
    :cond_7
    if-nez v22, :cond_5

    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_5

    .line 3942
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x1

    #setter for: Landroid/media/AudioService;->isBTConnected:Z
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$7802(Landroid/media/AudioService;Z)Z

    .line 3943
    const/4 v2, 0x1

    move/from16 v0, v18

    invoke-static {v0, v2, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3946
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3947
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v15}, Landroid/media/AudioService;->access$2802(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_4

    .line 3949
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3951
    .end local v12           #address:Ljava/lang/String;
    .end local v14           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v15           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v18           #device:I
    .end local v22           #isConnected:Z
    .end local v30           #state:I
    :cond_8
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3952
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 3953
    .restart local v30       #state:I
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 3954
    .local v24, microphone:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)I

    move-result v29

    .line 3955
    .local v29, previousHeadsetState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMicrophone:I
    invoke-static {v2}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;)I

    move-result v28

    .line 3956
    .local v28, preMicrophone:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v24

    #setter for: Landroid/media/AudioService;->mMicrophone:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$7902(Landroid/media/AudioService;I)I

    .line 3957
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v30

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$4402(Landroid/media/AudioService;I)I

    .line 3958
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AudioServiceBroadcastReceiver] ACTION_HEADSET_PLUG mHeadsetState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", microphone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)V

    .line 3962
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3963
    if-eqz v24, :cond_b

    .line 3964
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 3966
    .restart local v22       #isConnected:Z
    if-nez v30, :cond_a

    if-eqz v22, :cond_a

    .line 3967
    const/4 v2, 0x4

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3970
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3994
    :cond_9
    :goto_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4000
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SenseVersion:F
    invoke-static {v2}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 4005
    const/16 v21, 0x0

    .line 4014
    .restart local v21       #isChanged:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6300(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;I)Z

    move-result v21

    .line 4015
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAppPlay:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 4016
    if-eqz v21, :cond_0

    .line 4017
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v3, "headset state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3971
    .end local v21           #isChanged:Z
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_9

    if-nez v22, :cond_9

    .line 3972
    const/4 v2, 0x4

    const/4 v4, 0x1

    :try_start_6
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3975
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 3994
    .end local v22           #isConnected:Z
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 3979
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 3981
    .restart local v22       #isConnected:Z
    if-nez v30, :cond_c

    if-eqz v22, :cond_c

    .line 3982
    const/16 v2, 0x8

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3985
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 3986
    :cond_c
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_9

    if-nez v22, :cond_9

    .line 3987
    const/16 v2, 0x8

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3990
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_5

    .line 4023
    .end local v22           #isConnected:Z
    .end local v24           #microphone:I
    .end local v28           #preMicrophone:I
    .end local v29           #previousHeadsetState:I
    .end local v30           #state:I
    :cond_d
    const-string v2, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4024
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 4025
    .restart local v30       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_USB_ANLG_HEADSET_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4027
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 4029
    .restart local v22       #isConnected:Z
    if-nez v30, :cond_f

    if-eqz v22, :cond_f

    .line 4030
    const/16 v2, 0x800

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4034
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4043
    :cond_e
    :goto_6
    monitor-exit v3

    goto/16 :goto_1

    .end local v22           #isConnected:Z
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v2

    .line 4035
    .restart local v22       #isConnected:Z
    :cond_f
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_e

    if-nez v22, :cond_e

    .line 4036
    const/16 v2, 0x800

    const/4 v4, 0x1

    :try_start_9
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4040
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    .line 4044
    .end local v22           #isConnected:Z
    .end local v30           #state:I
    :cond_10
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4045
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 4046
    .restart local v30       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_HDMI_AUDIO_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4048
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 4051
    .restart local v22       #isConnected:Z
    if-nez v30, :cond_12

    if-eqz v22, :cond_12

    .line 4053
    const/16 v2, 0x400

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4055
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4062
    :cond_11
    :goto_7
    monitor-exit v3

    goto/16 :goto_1

    .end local v22           #isConnected:Z
    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2

    .line 4056
    .restart local v22       #isConnected:Z
    :cond_12
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_11

    if-nez v22, :cond_11

    .line 4057
    const/16 v2, 0x400

    const/4 v4, 0x1

    :try_start_b
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4059
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_7

    .line 4063
    .end local v22           #isConnected:Z
    .end local v30           #state:I
    :cond_13
    const-string v2, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4064
    const-string/jumbo v2, "mirror_display_status"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 4065
    .local v20, inMirror:Z
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got MIRROR_DISPLAY_STATE_CHANGED_ACTION, inMirror = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMirrorMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/htc/service/WirelessDisplayManager;

    .line 4068
    .local v31, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v31, :cond_16

    .line 4069
    invoke-virtual/range {v31 .. v31}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_14

    .line 4070
    const-string v2, "AudioService"

    const-string v3, "Enable MirrorMode and RestoreStreamVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v2, v3, v4}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;II)V

    .line 4072
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)V

    .line 4073
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8102(Landroid/media/AudioService;Z)Z

    .line 4087
    :goto_8
    if-eqz v20, :cond_17

    .line 4088
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8202(Landroid/media/AudioService;Z)Z

    .line 4089
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6300(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;I)Z

    move-result v21

    .line 4090
    .restart local v21       #isChanged:Z
    if-eqz v21, :cond_0

    .line 4091
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v3, "WirelessDisplay mirror mode state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4075
    .end local v21           #isChanged:Z
    :cond_14
    invoke-virtual/range {v31 .. v31}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 4076
    const-string v2, "AudioService"

    const-string v3, "Leaving MirrorMode and RestoreStreamVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v2, v3, v4}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;II)V

    .line 4078
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)V

    .line 4079
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8102(Landroid/media/AudioService;Z)Z

    goto :goto_8

    .line 4082
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8102(Landroid/media/AudioService;Z)Z

    goto :goto_8

    .line 4085
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8102(Landroid/media/AudioService;Z)Z

    goto :goto_8

    .line 4095
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8202(Landroid/media/AudioService;Z)Z

    .line 4096
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6300(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;I)Z

    move-result v21

    .line 4097
    .restart local v21       #isChanged:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAppPlay:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 4098
    if-eqz v21, :cond_0

    .line 4099
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v3, "WirelessDisplay mirror mode state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4102
    .end local v20           #inMirror:Z
    .end local v21           #isChanged:Z
    .end local v31           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_18
    const-string v2, "DONGLE_MEDIA_PLAYING"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4103
    const-string v2, "AudioService"

    const-string v3, "Broadcast Receiver: DONGLE_MEDIA_PLAYING"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4104
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mDongleMediaOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8302(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 4105
    :cond_19
    const-string v2, "DONGLE_MEDIA_STOP"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4106
    const-string v2, "AudioService"

    const-string v3, "Broadcast Receiver: DONGLE_MEDIA_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mDongleMediaOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8302(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 4108
    :cond_1a
    const-string v2, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4109
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 4110
    .restart local v30       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_USB_DGTL_HEADSET_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4112
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 4114
    .restart local v22       #isConnected:Z
    if-nez v30, :cond_1c

    if-eqz v22, :cond_1c

    .line 4115
    const/16 v2, 0x1000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4119
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4128
    :cond_1b
    :goto_9
    monitor-exit v3

    goto/16 :goto_1

    .end local v22           #isConnected:Z
    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v2

    .line 4120
    .restart local v22       #isConnected:Z
    :cond_1c
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_1b

    if-nez v22, :cond_1b

    .line 4121
    const/16 v2, 0x1000

    const/4 v4, 0x1

    :try_start_d
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4125
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_9

    .line 4129
    .end local v22           #isConnected:Z
    .end local v30           #state:I
    :cond_1d
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4130
    const/4 v13, 0x0

    .line 4131
    .local v13, broadcast:Z
    const/16 v30, -0x1

    .line 4132
    .restart local v30       #state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 4133
    :try_start_e
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 4135
    .local v16, btState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1f

    .line 4139
    :cond_1e
    const/4 v13, 0x1

    .line 4141
    :cond_1f
    packed-switch v16, :pswitch_data_1

    .line 4163
    :cond_20
    :goto_a
    const/4 v13, 0x0

    .line 4166
    :cond_21
    :goto_b
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 4167
    if-eqz v13, :cond_0

    .line 4168
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v30

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;I)V

    .line 4171
    new-instance v25, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4172
    .local v25, newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4173
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 4143
    .end local v25           #newIntent:Landroid/content/Intent;
    :pswitch_4
    const/16 v30, 0x1

    .line 4144
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_21

    .line 4147
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;I)I

    goto :goto_b

    .line 4166
    .end local v16           #btState:I
    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v2

    .line 4151
    .restart local v16       #btState:I
    :pswitch_5
    const/16 v30, 0x0

    .line 4152
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;I)I

    .line 4153
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_b

    .line 4156
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_20

    .line 4159
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;I)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto/16 :goto_a

    .line 4176
    .end local v13           #broadcast:Z
    .end local v16           #btState:I
    .end local v30           #state:I
    :cond_22
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4177
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetVolumePanel()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4180
    :cond_23
    const-string v2, "HDMI_CONNECTED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4181
    const-string v2, "AudioService"

    const-string v3, "HDMI connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    const/16 v2, 0x400

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4184
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4185
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)V

    .line 4187
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4188
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x2040255

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 4190
    :cond_24
    const-string v2, "HDMI_DISCONNECTED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4191
    const-string v2, "AudioService"

    const-string v3, "HDMI disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    const/16 v2, 0x400

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4194
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4195
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4197
    :cond_25
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4198
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8502(Landroid/media/AudioService;Z)Z

    .line 4199
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 4202
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    #setter for: Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3, v2}, Landroid/media/AudioService;->access$8602(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 4204
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    #setter for: Landroid/media/AudioService;->mScoConnectionState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8702(Landroid/media/AudioService;I)I

    .line 4205
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;)V

    .line 4206
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Z

    .line 4210
    const-string v2, "AudioService"

    const-string/jumbo v3, "mBootCompleted !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8202(Landroid/media/AudioService;Z)Z

    .line 4212
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->getBeatsHeadset()I

    move-result v3

    #setter for: Landroid/media/AudioService;->mBeatsHeadset:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8802(Landroid/media/AudioService;I)I

    .line 4213
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4214
    const-string v2, "AudioService"

    const-string/jumbo v3, "isHeadsetPlugged in booting !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x384

    #setter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6302(Landroid/media/AudioService;I)I

    .line 4216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mBeatsState:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8902(Landroid/media/AudioService;Z)Z

    .line 4217
    const-string v2, "global_effect=Beats"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4229
    :goto_c
    new-instance v25, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4230
    .restart local v25       #newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4232
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4234
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 4235
    .local v11, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v11, :cond_26

    .line 4236
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v11, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 4240
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->initEqList()V
    invoke-static {v2}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4220
    .end local v11           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v25           #newIntent:Landroid/content/Intent;
    :cond_27
    const-string v2, "AudioService"

    const-string/jumbo v3, "not isHeadsetPlugged in booting !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x320

    #setter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6302(Landroid/media/AudioService;I)I

    .line 4222
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mBeatsState:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8902(Landroid/media/AudioService;Z)Z

    .line 4223
    const-string v2, "global_effect=none"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 4242
    :cond_28
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4243
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4245
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .line 4246
    .local v26, packageName:Ljava/lang/String;
    if-eqz v26, :cond_0

    .line 4247
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v26

    #calls: Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4251
    .end local v26           #packageName:Ljava/lang/String;
    :cond_29
    const-string v2, "android.intent.action.FM"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4252
    const-string v2, "AudioService"

    const-string v3, "FM Intent received"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    const/16 v27, -0x1

    .line 4255
    .local v27, path:I
    const/16 v23, 0x0

    .line 4256
    .local v23, isFmOn:I
    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 4257
    const-string/jumbo v2, "path"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 4258
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(isFmOn, path) = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_2d

    .line 4260
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 4261
    const/16 v2, 0x2000

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4263
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2000

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4266
    :cond_2a
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_2c

    .line 4267
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4270
    :cond_2b
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mFMActive:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9302(Landroid/media/AudioService;Z)Z

    .line 4271
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->broadcastFMVolume()V
    invoke-static {v2}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4268
    :cond_2c
    if-nez v27, :cond_2b

    .line 4269
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_d

    .line 4273
    :cond_2d
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4274
    const/16 v2, 0x2000

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4276
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4277
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mFMActive:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9302(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 4280
    .end local v23           #isFmOn:I
    .end local v27           #path:I
    :cond_2e
    const-string v2, "android.intent.action.FMTX"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4281
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 4282
    .restart local v30       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FM Tx Intent received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 4284
    .restart local v22       #isConnected:Z
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_2f

    if-nez v22, :cond_2f

    .line 4285
    const/high16 v2, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4288
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/high16 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4289
    :cond_2f
    if-nez v30, :cond_0

    if-eqz v22, :cond_0

    .line 4290
    const/high16 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4293
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4296
    .end local v22           #isConnected:Z
    .end local v30           #state:I
    :cond_30
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 4297
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->screenOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9402(Landroid/media/AudioService;Z)Z

    .line 4298
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4299
    :cond_31
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 4300
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->screenOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9402(Landroid/media/AudioService;Z)Z

    .line 4301
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4303
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHasDockModeProjects:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4304
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->initializeDockMode()V
    invoke-static {v2}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4305
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHasDockModeProjects:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4306
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->deInitializeDockMode()V
    invoke-static {v2}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 3850
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3913
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 4141
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
