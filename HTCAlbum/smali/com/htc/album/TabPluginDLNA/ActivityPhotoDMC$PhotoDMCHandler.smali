.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;
.super Landroid/os/Handler;
.source "ActivityPhotoDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoDMCHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2064
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 2069
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActState:I
    invoke-static {v8}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$600(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2122
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2072
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 2120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2076
    :sswitch_1
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->hideControlBars()V
    invoke-static {v8}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$200(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    goto :goto_0

    .line 2080
    :sswitch_2
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onServiceConnected()V
    invoke-static {v8}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$700(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    goto :goto_0

    .line 2086
    :sswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2087
    .local v6, strDMR:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onRenderConnected(Ljava/lang/String;)V
    invoke-static {v8, v6}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$800(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Ljava/lang/String;)V

    goto :goto_0

    .line 2090
    .end local v6           #strDMR:Ljava/lang/String;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 2091
    .local v1, ctlInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onItemInforChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    invoke-static {v8, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$900(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    goto :goto_0

    .line 2094
    .end local v1           #ctlInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    :sswitch_5
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    iget v9, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onStateChanged(I)V
    invoke-static {v8, v9}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1000(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;I)V

    goto :goto_0

    .line 2101
    :sswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    .line 2102
    .local v7, uri:Landroid/net/Uri;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2103
    .local v3, nIndex:I
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->requestDecodeBitmap(Landroid/net/Uri;)V
    invoke-static {v8, v7}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1100(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Landroid/net/Uri;)V

    goto :goto_0

    .line 2106
    .end local v3           #nIndex:I
    .end local v7           #uri:Landroid/net/Uri;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2107
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2108
    .local v4, nIndexPhoto:I
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateDMCPhoto(Landroid/graphics/Bitmap;I)V
    invoke-static {v8, v0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1200(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 2115
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #nIndexPhoto:I
    :sswitch_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2116
    .local v5, renderID:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2117
    .local v2, nErrorCode:I
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onErrorHandle(ILjava/lang/String;)V
    invoke-static {v8, v2, v5}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1300(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;ILjava/lang/String;)V

    goto :goto_0

    .line 2072
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e3c -> :sswitch_1
        0x220010 -> :sswitch_2
        0x220020 -> :sswitch_0
        0x220050 -> :sswitch_3
        0x220070 -> :sswitch_4
        0x220080 -> :sswitch_5
        0x220100 -> :sswitch_6
        0x220110 -> :sswitch_0
        0x220120 -> :sswitch_7
        0x220130 -> :sswitch_0
        0x220140 -> :sswitch_8
    .end sparse-switch
.end method
