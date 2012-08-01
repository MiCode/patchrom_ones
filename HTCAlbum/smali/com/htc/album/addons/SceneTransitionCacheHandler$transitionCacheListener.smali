.class Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;
.super Ljava/lang/Object;
.source "SceneTransitionCacheHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/SceneTransitionCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "transitionCacheListener"
.end annotation


# instance fields
.field private mSunnyScene:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 1
    .parameter "sunnyScene"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;->mSunnyScene:Ljava/lang/ref/WeakReference;

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;->mSunnyScene:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method


# virtual methods
.method public onHide(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 0
    .parameter "cacheType"

    .prologue
    .line 132
    return-void
.end method

.method public onShow(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 0
    .parameter "cacheType"

    .prologue
    .line 126
    return-void
.end method

.method public onSnapShotReady(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 6
    .parameter "cacheType"

    .prologue
    .line 92
    iget-object v3, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;->mSunnyScene:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 93
    .local v2, sunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    .line 98
    .local v1, sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    const-string v3, "SceneTransitionCacheHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneTransitionCacheHandler][onSnapShotReady]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v3, :cond_1

    .line 101
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 102
    .local v0, cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->enableRootNode(Z)V

    .line 104
    .end local v0           #cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    :cond_1
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    goto :goto_0
.end method

.method public onSnapShotRemoved(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 6
    .parameter "cacheType"

    .prologue
    .line 108
    iget-object v3, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;->mSunnyScene:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 109
    .local v2, sunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_0

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    .line 114
    .local v1, sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    const-string v3, "SceneTransitionCacheHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneTransitionCacheHandler][onSnapShotRemoved]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v3, :cond_1

    .line 117
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 118
    .local v0, cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->enableRootNode(Z)V

    .line 120
    .end local v0           #cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    :cond_1
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    goto :goto_0
.end method
