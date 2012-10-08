.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;
.super Ljava/lang/Object;
.source "ActivityPhotoDMC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initUI()Z
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
    .line 290
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 296
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 297
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->hideControlBars()V
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$200(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->showControlBars()V
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$300(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    goto :goto_0
.end method
