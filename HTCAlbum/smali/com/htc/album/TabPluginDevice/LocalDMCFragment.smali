.class public Lcom/htc/album/TabPluginDevice/LocalDMCFragment;
.super Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.source "LocalDMCFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected enableProgressInterrupt()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f03002c

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onCreateScene()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.album.action.LAUNCH_LOCAL_PHOTO_DMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "LocalPhotoDMCScene"

    invoke-virtual {v1, v3, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 38
    :cond_1
    const-string v1, "com.htc.album.action.LAUNCH_LOCAL_BURSTSHOT_PHOTO_DMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "LocalBurstShotDMCScene"

    invoke-virtual {v1, v3, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected requestTVDisplay()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 17
    const-string v0, "LocalPhotoDMCScene"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;-><init>(Landroid/content/Context;)V

    .line 26
    :goto_0
    return-object v0

    .line 21
    :cond_0
    const-string v0, "LocalBurstShotDMCScene"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
