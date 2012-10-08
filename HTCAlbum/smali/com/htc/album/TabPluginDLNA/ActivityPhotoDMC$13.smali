.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$13;
.super Ljava/lang/Object;
.source "ActivityPhotoDMC.java"

# interfaces
.implements Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;


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
    .line 2769
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$13;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2773
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2786
    :goto_0
    :pswitch_0
    return-void

    .line 2776
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$13;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doDetails()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1900(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    goto :goto_0

    .line 2779
    :pswitch_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$13;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$13;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$2000(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    #setter for: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z
    invoke-static {v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$2002(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Z)Z

    .line 2780
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$13;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doRepeat()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$2100(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    goto :goto_0

    .line 2779
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2783
    :pswitch_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$13;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doOutput()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$2200(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    goto :goto_0

    .line 2773
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
