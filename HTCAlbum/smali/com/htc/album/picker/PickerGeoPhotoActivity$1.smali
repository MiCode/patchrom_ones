.class Lcom/htc/album/picker/PickerGeoPhotoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PickerGeoPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerGeoPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerGeoPhotoActivity;


# direct methods
.method constructor <init>(Lcom/htc/album/picker/PickerGeoPhotoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/album/picker/PickerGeoPhotoActivity$1;->this$0:Lcom/htc/album/picker/PickerGeoPhotoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/album/picker/PickerGeoPhotoActivity$1;->this$0:Lcom/htc/album/picker/PickerGeoPhotoActivity;

    invoke-virtual {v0}, Lcom/htc/album/picker/PickerGeoPhotoActivity;->onBackPressed()V

    .line 113
    return-void
.end method
