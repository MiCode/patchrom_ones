.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$9;
.super Ljava/lang/Object;
.source "ActivityPhotoDMC.java"

# interfaces
.implements Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 2550
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$9;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 2555
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2556
    .local v0, msg:Landroid/os/Message;
    const v1, 0x220010

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2557
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$9;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1500(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2558
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 2564
    return-void
.end method

.method public onServiceError()V
    .locals 0

    .prologue
    .line 2570
    return-void
.end method
