.class public Lcom/htc/album/TabPluginDevice/TabPluginDevice;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginDevice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x8t 0x2t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getDrawableSet(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0a002d

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getPluginPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    return-object v0
.end method
