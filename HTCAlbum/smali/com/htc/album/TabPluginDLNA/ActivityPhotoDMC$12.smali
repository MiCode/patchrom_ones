.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$12;
.super Ljava/lang/Object;
.source "ActivityPhotoDMC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 2785
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$12;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$12;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doNext()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1800(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    .line 2790
    return-void
.end method
