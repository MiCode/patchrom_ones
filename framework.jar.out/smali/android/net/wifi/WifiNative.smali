.class public Landroid/net/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# static fields
.field static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CtrlMsg(Ljava/lang/String;)Z
.end method

.method public static native addGatewayCommand(I)Z
.end method

.method public static native addNetworkCommand()I
.end method

.method public static native addToBlacklistCommand(Ljava/lang/String;)Z
.end method

.method public static native cancelWpsCommand()Z
.end method

.method public static native clearBlacklistCommand()Z
.end method

.method public static native closeSupplicantConnection()V
.end method

.method public static native connectToSupplicant()Z
.end method

.method public static native disableNetworkCommand(I)Z
.end method

.method public static native disconnectCommand()Z
.end method

.method public static native disconnectSIMAuthenticationAP()Z
.end method

.method private static native doBooleanCommand(Ljava/lang/String;)Z
.end method

.method private static native doIntCommand(Ljava/lang/String;)I
.end method

.method private static native doStringCommand(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native dongleScanCommand()Z
.end method

.method public static native dongleScanListCommand()Ljava/lang/String;
.end method

.method public static native dongleSingleCscanCommand(I)Z
.end method

.method public static native dongleWakeUpCommand(Ljava/lang/String;)Z
.end method

.method public static native enableBackgroundScanCommand(Z)V
.end method

.method public static native enableNetworkCommand(IZ)Z
.end method

.method public static native getBandCommand()I
.end method

.method public static native getErrorString(I)Ljava/lang/String;
.end method

.method public static native getIsWepCommand()Z
.end method

.method public static native getMacAddressCommand()Ljava/lang/String;
.end method

.method public static native getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static native getPowerModeCommand()I
.end method

.method public static native isDriverLoaded()Z
.end method

.method public static native killSupplicant()Z
.end method

.method public static native listNetworksCommand()Ljava/lang/String;
.end method

.method public static native loadApDriver()Z
.end method

.method public static native loadDriver()Z
.end method

.method public static native notifyPhoneCallStatus(I)Z
.end method

.method public static p2pCancelConnect()Z
    .locals 1

    .prologue
    .line 365
    const-string v0, "P2P_CANCEL"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 8
    .parameter "config"
    .parameter "joinExistingGroup"

    .prologue
    .line 320
    if-nez p0, :cond_0

    const/4 v6, 0x0

    .line 361
    :goto_0
    return-object v6

    .line 321
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v0, args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 323
    .local v5, wps:Landroid/net/wifi/WpsInfo;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v6, :pswitch_data_0

    .line 350
    :goto_1
    if-eqz p1, :cond_1

    const-string/jumbo v6, "join"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_1
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 353
    .local v2, groupOwnerIntent:I
    if-ltz v2, :cond_2

    const/16 v6, 0xf

    if-le v2, v6, :cond_3

    .line 354
    :cond_2
    const/4 v2, 0x3

    .line 356
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "go_intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v1, "P2P_CONNECT "

    .line 359
    .local v1, command:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 327
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #groupOwnerIntent:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #s:Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v6, "pbc"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    :pswitch_1
    const-string/jumbo v6, "pin"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v6, "display"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :pswitch_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    const-string/jumbo v6, "keypad"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 339
    :pswitch_3
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string/jumbo v6, "label"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    .restart local v1       #command:Ljava/lang/String;
    .restart local v2       #groupOwnerIntent:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static p2pCustomCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "command"

    .prologue
    .line 441
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p2pFind()Z
    .locals 1

    .prologue
    .line 292
    const-string v0, "P2P_FIND"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pFind(I)Z
    .locals 2
    .parameter "timeout"

    .prologue
    .line 296
    if-gtz p0, :cond_0

    .line 297
    invoke-static {}, Landroid/net/wifi/WifiNative;->p2pFind()Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_FIND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pFlush()Z
    .locals 1

    .prologue
    .line 314
    const-string v0, "P2P_FLUSH"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pGetDeviceAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 422
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, status:Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v7, ""

    .line 433
    :goto_0
    return-object v7

    .line 425
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, tokens:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 427
    .local v5, token:Ljava/lang/String;
    const-string/jumbo v7, "p2p_device_address="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 428
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, nameValue:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 433
    .end local v3           #nameValue:[Ljava/lang/String;
    .end local v5           #token:Ljava/lang/String;
    :cond_1
    const-string v7, ""

    goto :goto_0

    .line 430
    .restart local v3       #nameValue:[Ljava/lang/String;
    .restart local v5       #token:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_0

    .line 426
    .end local v3           #nameValue:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static p2pGetInterfaceAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "deviceAddress"

    .prologue
    const/4 v7, 0x0

    .line 402
    if-nez p0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-object v7

    .line 406
    :cond_1
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, peerInfo:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 408
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, tokens:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 412
    .local v5, token:Ljava/lang/String;
    const-string/jumbo v8, "intended_addr="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 413
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, nameValue:[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 415
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_0

    .line 410
    .end local v3           #nameValue:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static p2pGroupAdd()Z
    .locals 1

    .prologue
    .line 369
    const-string v0, "P2P_GROUP_ADD"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pGroupRemove(Ljava/lang/String;)Z
    .locals 2
    .parameter "iface"

    .prologue
    .line 373
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_GROUP_REMOVE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 2
    .parameter "group"
    .parameter "deviceAddress"

    .prologue
    .line 383
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 388
    :goto_0
    return v0

    .line 385
    :cond_0
    if-nez p0, :cond_1

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " go_dev_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pListen()Z
    .locals 1

    .prologue
    .line 303
    const-string v0, "P2P_LISTEN"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pListen(I)Z
    .locals 2
    .parameter "timeout"

    .prologue
    .line 307
    if-gtz p0, :cond_0

    .line 308
    invoke-static {}, Landroid/net/wifi/WifiNative;->p2pListen()Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_LISTEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "deviceAddress"

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PEER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p2pReinvoke(ILjava/lang/String;)Z
    .locals 2
    .parameter "netId"
    .parameter "deviceAddress"

    .prologue
    .line 395
    if-eqz p1, :cond_0

    if-gez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 397
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p2pReject(Ljava/lang/String;)Z
    .locals 2
    .parameter "deviceAddress"

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_REJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native pingCommand()Z
.end method

.method public static native reassociateCommand()Z
.end method

.method public static native reconnectCommand()Z
.end method

.method public static native reloadConfigCommand()Z
.end method

.method public static native removeNetworkCommand(I)Z
.end method

.method public static native saveConfigCommand()Z
.end method

.method public static native scanCommand(Z)Z
.end method

.method public static native scanResultsCommand()Ljava/lang/String;
.end method

.method public static native setBandCommand(I)Z
.end method

.method public static native setBluetoothCoexistenceModeCommand(I)Z
.end method

.method public static native setBluetoothCoexistenceScanModeCommand(Z)Z
.end method

.method public static native setCountryCodeCommand(Ljava/lang/String;)Z
.end method

.method public static setDeviceName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setDeviceType(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static setP2pDisable(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_SET disabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setPersistentReconnect(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v0, 0x1

    .line 279
    if-ne p0, v0, :cond_0

    .line 280
    .local v0, value:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET persistent_reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 279
    .end local v0           #value:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native setPowerModeCommand(I)Z
.end method

.method public static native setScanIntervalCommand(I)V
.end method

.method public static native setScanModeCommand(Z)Z
.end method

.method public static native setScanResultHandlingCommand(I)Z
.end method

.method public static setScreenOn(Z)Z
    .locals 1
    .parameter "isScreenOn"

    .prologue
    .line 164
    if-eqz p0, :cond_0

    .line 165
    const-string v0, "SET_SCREEN_ON 1"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const-string v0, "SET_SCREEN_ON 0"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static native setSuspendOptimizationsCommand(Z)Z
.end method

.method public static native setWifiDisplayConfigure(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native setWifiDisplayUnscan(Z)Z
.end method

.method public static setWirelessDisplayStarted(Z)Z
    .locals 1
    .parameter "isStarted"

    .prologue
    .line 170
    if-eqz p0, :cond_0

    .line 171
    const-string v0, "SET_WIRELESS_DISPLAY 1"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const-string v0, "SET_WIRELESS_DISPLAY 0"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static signalPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "SIGNAL_POLL"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native startDriverCommand()Z
.end method

.method public static native startFilteringMulticastV4Packets()Z
.end method

.method public static native startFilteringMulticastV6Packets()Z
.end method

.method public static native startP2pSupplicant()Z
.end method

.method public static native startPacketFiltering_arp()Z
.end method

.method public static native startPacketFiltering_dhcpoffer()Z
.end method

.method public static native startPacketFiltering_self()Z
.end method

.method public static native startPacketFiltering_ssdp()Z
.end method

.method public static native startSupplicant()Z
.end method

.method public static native startWpsPbcCommand(Ljava/lang/String;)Z
.end method

.method public static native startWpsWithPinFromAccessPointCommand(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native startWpsWithPinFromDeviceCommand(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native statusCommand()Ljava/lang/String;
.end method

.method public static native stopDriverCommand()Z
.end method

.method public static native stopFilteringMulticastV4Packets()Z
.end method

.method public static native stopFilteringMulticastV6Packets()Z
.end method

.method public static native stopPacketFiltering_arp()Z
.end method

.method public static native stopPacketFiltering_dhcpoffer()Z
.end method

.method public static native stopPacketFiltering_self()Z
.end method

.method public static native stopPacketFiltering_ssdp()Z
.end method

.method public static native stopSupplicant()Z
.end method

.method public static native unloadApDriver()Z
.end method

.method public static native unloadDriver()Z
.end method

.method public static native waitForEvent()Ljava/lang/String;
.end method

.method public static wpsPbc()Z
    .locals 1

    .prologue
    .line 267
    const-string v0, "WPS_PBC"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static wpsPin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method