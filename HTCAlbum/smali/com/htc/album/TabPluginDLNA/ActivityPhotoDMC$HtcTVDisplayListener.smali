.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;
.super Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
.source "ActivityPhotoDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcTVDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 3081
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3081
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    return-void
.end method


# virtual methods
.method public onNoReadyDongle()V
    .locals 1

    .prologue
    .line 3092
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->invalidateOptionsMenu()V

    .line 3093
    return-void
.end method

.method public onReadyDongleFound(Lcom/htc/service/DongleInfo;)V
    .locals 1
    .parameter "dongle"

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->invalidateOptionsMenu()V

    .line 3087
    return-void
.end method

.method public onTVOff()V
    .locals 1

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->invalidateOptionsMenu()V

    .line 3105
    return-void
.end method

.method public onTVOn()V
    .locals 1

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->invalidateOptionsMenu()V

    .line 3099
    return-void
.end method
