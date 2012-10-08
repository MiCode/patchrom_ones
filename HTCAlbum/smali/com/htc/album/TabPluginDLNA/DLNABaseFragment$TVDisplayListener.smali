.class Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;
.super Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
.source "DLNABaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TVDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;-><init>(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;)V

    return-void
.end method


# virtual methods
.method public getTVDisplayScene()Lcom/htc/sunny2/scene/GalleryBaseScene;
    .locals 4

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 93
    .local v2, tvScene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->access$100(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 94
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/htc/sunny2/scene/GalleryBaseScene;

    if-eqz v3, :cond_0

    .line 96
    move-object v0, v1

    check-cast v0, Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-object v2, v0

    .line 97
    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->requestTVDisplay()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 98
    const/4 v3, 0x0

    .line 106
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v3

    .line 101
    :catch_0
    move-exception v3

    :cond_0
    move-object v3, v2

    .line 106
    goto :goto_0
.end method

.method public invalidateMenu()V
    .locals 2

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->getTVDisplayScene()Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-result-object v0

    .line 114
    .local v0, tvScene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    if-nez v0, :cond_0

    .line 122
    .end local v0           #tvScene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    :goto_0
    return-void

    .line 116
    .restart local v0       #tvScene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v0           #tvScene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onNoReadyDongle()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->invalidateMenu()V

    .line 129
    return-void
.end method

.method public onNoTVToPlay()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    iget-boolean v1, v1, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mDropOutputRequest:Z

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->getTVDisplayScene()Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-result-object v0

    .line 178
    .local v0, tvScene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNoTVToPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v0           #tvScene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onReadyDongleFound(Lcom/htc/service/DongleInfo;)V
    .locals 0
    .parameter "dongle"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->invalidateMenu()V

    .line 136
    return-void
.end method

.method public onTVOff()V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->invalidateMenu()V

    .line 143
    return-void
.end method

.method public onTVOn()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->invalidateMenu()V

    .line 150
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    iget-boolean v1, v1, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mDropOutputRequest:Z

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->getTVDisplayScene()Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-result-object v0

    .line 160
    .local v0, tvScene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onTVReadyToPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0           #tvScene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
