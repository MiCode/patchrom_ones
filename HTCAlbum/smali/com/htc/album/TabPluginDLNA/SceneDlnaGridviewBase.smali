.class public abstract Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;
.source "SceneDlnaGridviewBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        "TADAPTER;>;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;-><init>()V

    .line 38
    const-string v0, "SceneDlnaGridviewBase"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->LOG_TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mScrollState:I

    .line 46
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 77
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$2;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    return-void
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 102
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    return-void
.end method


# virtual methods
.method public onBindAdapter()V
    .locals 0

    .prologue
    .line 213
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onBindAdapter()V

    .line 215
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 227
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 229
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 272
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    return-void
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 8

    .prologue
    .line 170
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    const-string v6, "SceneDlnaGridviewBase"

    const-string v7, "[HTCAlbum][SceneDlnaGridviewBase][onCreateScene]: ..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 174
    const-string v6, "SceneDlnaGridviewBase"

    const-string v7, "Activity is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x0

    .line 201
    :goto_0
    return-object v2

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 179
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v4

    .line 180
    .local v4, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v3, v1, v6, v4}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 183
    .local v3, item:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    const/4 v2, 0x0

    .line 184
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    .end local v2           #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v2, v1, v6, v3}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 188
    .restart local v2       #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    move-result-object v5

    .line 189
    .local v5, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    :cond_1
    new-instance v6, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v6, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 193
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v1, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 194
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 195
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 197
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 198
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 199
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 208
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onDestroyScene()V

    .line 209
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 143
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onEnterScene(Landroid/os/Bundle;)V

    .line 146
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v2, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 149
    .local v1, cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    .line 150
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v2, :cond_0

    .line 152
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewList()Z

    move-result v0

    .line 153
    .local v0, bEnableScrollCache:Z
    if-nez v0, :cond_1

    .line 163
    .end local v0           #bEnableScrollCache:Z
    .end local v1           #cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local v0       #bEnableScrollCache:Z
    .restart local v1       #cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    :cond_1
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCacheHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v2, p0, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 158
    :cond_2
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCacheFooter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v2, p0, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    invoke-virtual {v3, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->setHeaderControlStatusListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V

    goto :goto_0
.end method

.method protected abstract onItemSelected(I)V
.end method

.method public onLeaveScene()V
    .locals 0

    .prologue
    .line 281
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onLeaveScene()V

    .line 282
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 107
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 116
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onMessage(Landroid/os/Message;)Z

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 110
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onItemSelected(I)V

    .line 118
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_1

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x5079 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 285
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onPause()V

    .line 287
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 290
    :cond_0
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 122
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 125
    :cond_0
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mScrollState:I

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 133
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onScrolling()V

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onScrollIdle()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 218
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onSendToBackground(Landroid/os/Bundle;)V

    .line 220
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 223
    :cond_0
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 276
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onUnbindAdapter()V

    .line 277
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 278
    return-void
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    const/4 v0, 0x0

    .line 235
    .local v0, configuration:Landroid/content/res/Configuration;
    if-nez p1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    .end local v1           #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 240
    .restart local v1       #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    :goto_0
    if-nez v1, :cond_1

    .line 269
    :goto_1
    return-void

    .line 238
    :cond_0
    move-object v1, p1

    goto :goto_0

    .line 243
    :cond_1
    if-nez p2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 248
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 251
    invoke-static {v6}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 246
    :cond_2
    move-object v0, p2

    goto :goto_2

    .line 255
    :cond_3
    const/4 v2, 0x2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->requestFooterBar()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 259
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 260
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacingWide(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 267
    :goto_3
    invoke-static {v6}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 264
    :cond_4
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 265
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    goto :goto_3
.end method
