.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
.source "ActivityPhotoDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 2599
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2599
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 2604
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][onRenderConnected]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2607
    .local v0, msg:Landroid/os/Message;
    const v1, 0x220050

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2608
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2609
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1500(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2610
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 2621
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][onRenderDisconnected]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2624
    .local v0, msg:Landroid/os/Message;
    const v1, 0x220060

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2625
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1500(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2626
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 2616
    return-void
.end method
