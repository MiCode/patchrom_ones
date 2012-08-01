.class public abstract Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.super Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.source "LocalThumbnailBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/CollectionBaseScene",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LocalThumbnailBaseScene"


# instance fields
.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mScrollState:I

    .line 48
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;-><init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 56
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$2;-><init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    return-void
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 111
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 141
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    .local v0, scrollState:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mScrollState:I

    if-ne v1, v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_0
    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mScrollState:I

    .line 147
    packed-switch v0, :pswitch_data_0

    .line 153
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onScrolling()V

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onScrollIdle()V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method protected getParamsPreparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    move-result-object v0

    return-object v0
.end method

.method protected markSelection(II)V
    .locals 4
    .parameter "index"
    .parameter "posY"

    .prologue
    .line 292
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    move v2, p1

    .line 297
    .local v2, pos:I
    if-gez v2, :cond_3

    .line 298
    const/4 v2, 0x0

    .line 302
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 303
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 305
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 306
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "photo_position"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v3, "first_positionY"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 308
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 299
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 300
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 336
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->notifyDataSetChanged()V

    .line 338
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 339
    .local v1, view:Lcom/htc/sunny2/widget/gridview/GridView;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 340
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;-><init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onBindAdapter()V

    .line 235
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 236
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 266
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getNumColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->setSectionCollumnNumber(I)V

    .line 267
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    return-void
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 7

    .prologue
    .line 189
    const-string v5, "LocalThumbnailBaseScene"

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateScene]: ..."

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 191
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 192
    const-string v5, "LocalThumbnailBaseScene"

    const-string v6, "Activity is null"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v2, 0x0

    .line 222
    :goto_0
    return-object v2

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 197
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    move-result-object v3

    .line 199
    .local v3, item:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    const/4 v2, 0x0

    .line 200
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    .end local v2           #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v2, v1, v5, v3}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 204
    .restart local v2       #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setIdentifier(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->getParamsPreparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    move-result-object v4

    .line 206
    .local v4, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    :cond_1
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->enableFileCache()V

    .line 211
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->SetCacheCountClient(Lcom/htc/sunny2/frameworks/base/interfaces/ICacheClientMgr;)V

    .line 212
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->setCacheSet(I)V

    .line 214
    new-instance v5, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v5, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 215
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v1, v4}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 216
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 217
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 219
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 220
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 221
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 229
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDestroyScene()V

    .line 230
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 163
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewList()Z

    move-result v0

    .line 165
    .local v0, bEnableScrollCache:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v2, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v2, :cond_0

    .line 167
    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 171
    .local v1, cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    .line 172
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v2, :cond_0

    .line 174
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCacheHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v2, p0, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 176
    :cond_2
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCacheFooter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v2, p0, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 178
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    invoke-virtual {v3, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->setHeaderControlStatusListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V

    goto :goto_0
.end method

.method protected onItemClickIRT(Lcom/htc/sunny2/view/SView;I)V
    .locals 3
    .parameter "view"
    .parameter "index"

    .prologue
    .line 88
    const/16 v0, 0x139c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 89
    return-void
.end method

.method protected abstract onItemSelected(I)V
.end method

.method public onLeaveScene()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onLeaveScene()V

    .line 254
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onMessage(Landroid/os/Message;)Z

    .line 130
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 119
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onItemSelected(I)V

    goto :goto_0

    .line 122
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_0

    .line 125
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x4f4f -> :sswitch_2
        0x5079 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 326
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v0

    .line 327
    .local v0, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    invoke-direct {v1, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 286
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onResume()V

    .line 274
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 277
    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 241
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 244
    :cond_0
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onUnbindAdapter()V

    .line 248
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 249
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 250
    return-void
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x0

    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    const/4 v0, 0x0

    .line 358
    .local v0, configuration:Landroid/content/res/Configuration;
    if-nez p1, :cond_0

    .line 359
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    .end local v2           #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 363
    .restart local v2       #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    :goto_0
    if-nez v2, :cond_1

    .line 403
    :goto_1
    return-void

    .line 361
    :cond_0
    move-object v2, p1

    goto :goto_0

    .line 366
    :cond_1
    if-nez p2, :cond_2

    .line 367
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 371
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 373
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 374
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 369
    :cond_2
    move-object v0, p2

    goto :goto_2

    .line 378
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    .line 380
    .local v3, paddingBottom:I
    const/4 v5, 0x2

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_5

    .line 382
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->requestFooterBar()Z

    move-result v1

    .line 383
    .local v1, isNeedFooter:Z
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingRight()I

    move-result v4

    .line 384
    .local v4, paddingRight:I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    .line 385
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    .line 386
    const/4 v3, 0x0

    .line 393
    :goto_3
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2, v5, v6, v4, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 394
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacingWide(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 401
    .end local v1           #isNeedFooter:Z
    .end local v4           #paddingRight:I
    :goto_4
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 389
    .restart local v1       #isNeedFooter:Z
    .restart local v4       #paddingRight:I
    :cond_4
    const/4 v4, 0x0

    .line 390
    const/4 v3, 0x0

    goto :goto_3

    .line 398
    .end local v1           #isNeedFooter:Z
    .end local v4           #paddingRight:I
    :cond_5
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 399
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    goto :goto_4
.end method
