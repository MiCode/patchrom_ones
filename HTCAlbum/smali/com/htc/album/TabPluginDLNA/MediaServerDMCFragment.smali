.class public Lcom/htc/album/TabPluginDLNA/MediaServerDMCFragment;
.super Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.source "MediaServerDMCFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected enableProgressInterrupt()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f03002c

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onCreateScene()Z
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MediaServerDMCScene"

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method protected requestTVDisplay()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 15
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
