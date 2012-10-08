.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$3;
.super Ljava/lang/Object;
.source "ActivityPhotoDMC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 2285
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$3;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2288
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2289
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$3;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doClose()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->access$1400(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    .line 2290
    return-void
.end method
