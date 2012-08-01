.class Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$6;
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
    .line 2316
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$6;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2321
    .local v0, intent_tmp:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2323
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2325
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$6;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->startActivity(Landroid/content/Intent;)V

    .line 2327
    return-void
.end method
