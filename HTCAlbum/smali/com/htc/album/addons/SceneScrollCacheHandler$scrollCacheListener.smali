.class public Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;
.super Ljava/lang/Object;
.source "SceneScrollCacheHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/SceneScrollCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "scrollCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 4
    .parameter "cacheType"

    .prologue
    .line 101
    move-object v2, p1

    .line 102
    .local v2, newCacheType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    #getter for: Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-static {v3}, Lcom/htc/album/addons/SceneScrollCacheHandler;->access$000(Lcom/htc/album/addons/SceneScrollCacheHandler;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    .line 103
    .local v1, displayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 104
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;

    invoke-direct {v3, p0, v2}, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public onCacheUpdated(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 0
    .parameter "cacheType"

    .prologue
    .line 119
    return-void
.end method

.method public onDetached(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 0
    .parameter "cacheType"

    .prologue
    .line 125
    return-void
.end method

.method public onHide(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 0
    .parameter "cacheType"

    .prologue
    .line 136
    return-void
.end method

.method public onShow(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 0
    .parameter "cacheType"

    .prologue
    .line 130
    return-void
.end method
