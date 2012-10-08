.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
.source "ActivityPhotoDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 2605
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2605
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    return-void
.end method


# virtual methods
.method public onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 2
    .parameter "ctlInfo"

    .prologue
    .line 2620
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2621
    .local v0, msg:Landroid/os/Message;
    const v1, 0x220070

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2622
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2623
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1500(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2624
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 2629
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1500(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    move-result-object v1

    const v2, 0x220140

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2630
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2631
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2632
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1500(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2633
    return-void
.end method

.method public onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 3
    .parameter "index"
    .parameter "details"

    .prologue
    .line 2638
    const-string v0, "ActivityPhotoDMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> [PhotoDMC][onItemDetailsUpdated]: index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    if-eqz p3, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v0, p3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->LaunchDetails(Lcom/htc/dlnainterface/DLNAContentItemDetails;)V

    .line 2643
    :goto_0
    return-void

    .line 2642
    :cond_0
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onItemDetailsUpdated]: details is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayStateChanged(I)V
    .locals 2
    .parameter "playState"

    .prologue
    .line 2611
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2612
    .local v0, msg:Landroid/os/Message;
    const v1, 0x220080

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2613
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2614
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1500(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2615
    return-void
.end method
