.class public Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.super Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.source "SceneLocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/SceneLocalBase",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        "Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;",
        ">;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalFolder"


# instance fields
.field protected mAnimationState:I

.field private mEnableTransition:Z

.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field private mItemSelected:I

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field protected mScrollState:I

.field private mTabletPanelPaddingRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 56
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 61
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    .line 63
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mTabletPanelPaddingRect:Landroid/graphics/Rect;

    .line 64
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemSelected:I

    .line 65
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableTransitionCache4GridviewFolderList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableTransition:Z

    .line 67
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 93
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 750
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimationState:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V

    return-void
.end method

.method private onBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V
    .locals 3
    .parameter "dataIndex"
    .parameter "gridViewItem"
    .parameter "mediaData"

    .prologue
    .line 260
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableTransition:Z

    if-eqz v1, :cond_1

    .line 263
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 271
    :goto_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimationState:I

    if-eq v1, v2, :cond_2

    .line 282
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, p2

    .line 268
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 269
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setAlpha4FolderItem(IF)V

    goto :goto_0

    .line 274
    .end local v0           #item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    :cond_2
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemSelected:I

    if-ne v1, p1, :cond_0

    .line 277
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableTransition:Z

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setVisibility(Z)V

    goto :goto_1
.end method

.method private onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 4
    .parameter "param"

    .prologue
    .line 231
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 232
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 235
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    check-cast p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    .end local p1
    invoke-direct {v2, v1, v3, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 239
    .local v2, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 256
    return-object v2
.end method

.method private onDataSetChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 742
    return-void
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 171
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 143
    .local v1, host:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 144
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 146
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 150
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-ne v4, v2, :cond_3

    .line 152
    :cond_2
    const-string v2, "SceneLocalFolder"

    const-string v3, "[HTCAlbum][SceneLocalFolder][onLoadingOrDecodingThumbnails]: skip..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureOnPrepareOptionsMenu()Z

    move-result v2

    if-nez v2, :cond_4

    .line 157
    invoke-interface {v1, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    goto :goto_0

    .line 160
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 168
    invoke-interface {v1, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    goto :goto_0

    .line 163
    :pswitch_0
    invoke-interface {v1, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 200
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    .local v0, scrollState:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    if-ne v1, v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 204
    :cond_0
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    .line 206
    packed-switch v0, :pswitch_data_0

    .line 212
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrolling()V

    goto :goto_0

    .line 209
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrollIdle()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setGlobalBackgroundOrOverlapRoundCorner(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 396
    if-nez p1, :cond_2

    .line 397
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 407
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 409
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v0

    .line 410
    .local v0, appBackground:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto :goto_0

    .line 423
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    const-string v0, "AdapterLocalFolder"

    return-object v0
.end method

.method public enableHostCamera()Z
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 862
    const/16 v0, 0xff

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x1

    return v0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 875
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 878
    .local v0, activity:Landroid/app/Activity;
    const-string v1, ""

    .line 879
    .local v1, szLoading:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 881
    return-object v1
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataChangedAt(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 727
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataChangedAt(I)V

    .line 728
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDataSetChange(I)V

    .line 729
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 715
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][notifyDataSetChanged]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataSetChanged()V

    .line 717
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDataSetChange(I)V

    .line 718
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureSendToBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 722
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 516
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 518
    packed-switch p1, :pswitch_data_0

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 522
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x13a1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(I)V
    .locals 6
    .parameter "nAnimState"

    .prologue
    .line 819
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onAnimationEnd(I)V

    .line 824
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v2

    .line 825
    .local v2, nLoadState:I
    const-string v3, "SceneLocalFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalFolder][onAnimationEnd]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    if-nez v2, :cond_0

    .line 827
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 829
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 846
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v3, :cond_2

    .line 848
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    move-result-object v1

    .line 849
    .local v1, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    if-eqz v1, :cond_2

    .line 850
    invoke-interface {v1, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;->onAnimationEnd(I)V

    .line 854
    .end local v1           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    .line 855
    return-void

    .line 834
    :pswitch_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 839
    :pswitch_2
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    move-result-object v0

    .line 840
    .local v0, contentHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    if-nez v0, :cond_1

    .line 841
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setVisibility(Z)V

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 581
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onBindAdapter()V

    .line 582
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onBindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 585
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->invalidateControlBars()V

    .line 586
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 486
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 488
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 489
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 491
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 492
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 494
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 496
    :cond_0
    return-void
.end method

.method public onConfigurationChangedInBackground(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 499
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableTransition:Z

    if-eqz v0, :cond_0

    .line 505
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 508
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onConfigurationChangedInBackground] "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 510
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    goto :goto_0
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "nAnimState"

    .prologue
    const/4 v3, 0x1

    .line 767
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 769
    .local v0, animationBundle:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 791
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v2, :cond_1

    .line 796
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    move-result-object v1

    .line 797
    .local v1, contentHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    if-eqz v1, :cond_3

    .line 799
    invoke-interface {v1, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;->onCreateAnimation(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 800
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 807
    .end local v1           #contentHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    :cond_1
    :goto_1
    return-object v0

    .line 771
    :pswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 772
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    goto :goto_0

    .line 776
    :pswitch_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_2

    .line 777
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 782
    :cond_2
    :pswitch_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 804
    .restart local v1       #contentHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    goto :goto_1

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 285
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 286
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 288
    const-string v8, "SceneLocalFolder"

    const-string v9, "[HTCAlbum][SceneLocalFolder][onCreateScene]: null..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v2, 0x0

    .line 335
    :cond_0
    :goto_0
    return-object v2

    .line 292
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 293
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, v11}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v6

    .line 294
    .local v6, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 296
    .local v3, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v8

    invoke-direct {v2, v1, v8, v3}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 299
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setIdentifier(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;

    move-result-object v7

    .line 301
    .local v7, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;
    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->enableFileCache()V

    .line 304
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->SetCacheCountClient(Lcom/htc/sunny2/frameworks/base/interfaces/ICacheClientMgr;)V

    .line 305
    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->setCacheSet(I)V

    .line 307
    new-instance v8, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v8, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 308
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v8, v1, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 309
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v8, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 310
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 312
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v8}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 313
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 315
    instance-of v8, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v8, :cond_0

    .line 317
    const/4 v5, 0x0

    .line 318
    .local v5, nTop:I
    const/4 v4, 0x0

    .line 319
    .local v4, nRight:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 321
    invoke-static {v0, v10}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v10}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v9

    add-int v5, v8, v9

    .line 324
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 332
    :goto_1
    invoke-virtual {v2, v11, v5, v4, v11}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPadding(IIII)V

    goto :goto_0

    .line 328
    :cond_2
    invoke-static {v0, v10}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v10}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v9

    add-int v5, v8, v9

    goto :goto_1
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 754
    new-instance v1, Lcom/htc/album/Animation/animationSetFolderGridview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFolderGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 342
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDestroyScene()V

    .line 343
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 349
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v3, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v3, :cond_1

    .line 351
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 352
    .local v2, cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    .line 354
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v3, :cond_1

    .line 356
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewFolderList()Z

    move-result v0

    .line 357
    .local v0, bEnableScrollCache:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableTransitionCache4GridviewFolderList()Z

    move-result v1

    .line 359
    .local v1, bEnableTransition:Z
    if-eqz v0, :cond_0

    .line 360
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v3, p0, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 362
    :cond_0
    if-eqz v1, :cond_1

    .line 363
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v3, p0, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 367
    .end local v0           #bEnableScrollCache:Z
    .end local v1           #bEnableTransition:Z
    .end local v2           #cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 368
    return-void
.end method

.method public onItemSelected(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    .line 103
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 107
    .local v2, anAlbum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v2, :cond_0

    .line 110
    const-string v5, "SceneLocalFolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SceneLocalFolder][onItemSelected]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v3, Lcom/htc/album/Animation/animationSetFolderGridview;

    .line 113
    .local v3, animationSet:Lcom/htc/album/Animation/animationSetFolderGridview;
    invoke-virtual {v3, p1}, Lcom/htc/album/Animation/animationSetFolderGridview;->setFocused(I)V

    .line 115
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 116
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->onFolderClicked(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v4, bundle:Landroid/os/Bundle;
    const-string v5, "collection_info"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    const-string v5, "call_MainActivity_from_collection"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemSelected:I

    .line 127
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v6, "SceneLocalPhotoThumbnail"

    const/4 v7, 0x0

    invoke-interface {v5, v4, v6, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onLeaveScene()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 451
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onLeaveScene()V

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 460
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 194
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onMessage(Landroid/os/Message;)Z

    .line 196
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 179
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onItemSelected(I)V

    goto :goto_0

    .line 182
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onSceneLoading()V

    goto :goto_0

    .line 185
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_0

    .line 188
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 191
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRefreshAdapter()V

    goto :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x138f -> :sswitch_4
        0x139c -> :sswitch_0
        0x4e46 -> :sswitch_1
        0x4f4f -> :sswitch_3
        0x5079 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 559
    const-string v3, "SceneLocalFolder"

    const-string v4, "[HTCAlbum][SceneLocalFolder][onNewAdapter]: ..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 562
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 563
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 564
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "media_connected"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 565
    .local v1, bIsMediaConnected:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "media_connected"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 567
    new-instance v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getAdapterMediaType()I

    move-result v5

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 572
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 573
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->enableObserverNotify()V

    .line 574
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 575
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onLoadData()V

    .line 576
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 734
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onNotifyUpdateComplete]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNotifyUpdateComplete()V

    .line 736
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDataSetChange(I)V

    .line 737
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnablePageLoading(Z)V

    .line 738
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 3
    .parameter "bIsLoading"

    .prologue
    .line 684
    const-string v1, "SceneLocalFolder"

    const-string v2, "[HTCAlbum][SceneLocalFolder][onNotifyUpdating]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNotifyUpdating(Z)V

    .line 686
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 687
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureOnPrepareOptionsMenu()Z

    move-result v1

    if-nez v1, :cond_1

    .line 690
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 692
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 655
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 656
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 676
    :goto_0
    return v4

    .line 660
    :cond_0
    const/4 v1, 0x0

    .line 661
    .local v1, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 672
    :sswitch_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 664
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 665
    .local v2, hideShowAlbum:Landroid/content/Intent;
    const-class v3, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 666
    const/16 v3, 0x13a1

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 669
    .end local v2           #hideShowAlbum:Landroid/content/Intent;
    :sswitch_2
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto :goto_0

    .line 661
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7f0a00b1 -> :sswitch_1
        0x7f0a00f7 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 475
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPause()V

    .line 477
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 479
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 481
    :cond_0
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 811
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 812
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 813
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 815
    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 759
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareAnimation(I)Z

    move-result v0

    .line 760
    .local v0, anim:Z
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimationState:I

    .line 761
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v5, 0x7f0a00b1

    const/4 v6, 0x0

    .line 609
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, bResult:Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 614
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 616
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 618
    const-string v4, "SceneLocalFolder"

    const-string v5, "[HTCAlbum][SceneLocalFolder][onPrepareOptionsMenu]: InternalStorageStateError"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 650
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 621
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isLoadingInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 637
    :cond_1
    invoke-interface {p1, v6, v5, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 642
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->enableHostCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 644
    const/4 v4, 0x3

    const v5, 0x7f0a0111

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 645
    .local v3, itemOutput:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 646
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 649
    .end local v3           #itemOutput:Landroid/view/MenuItem;
    :cond_2
    const/4 v1, 0x1

    move v2, v1

    .line 650
    .restart local v2       #bResult:I
    goto :goto_0
.end method

.method protected onRefreshAdapter()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isLoadingInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: is reloading... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneMediaMountedS40()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalMediaMounted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 904
    :cond_3
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: reload... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 909
    :cond_4
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: no media ready... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onResume()V

    .line 467
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 470
    :cond_0
    return-void
.end method

.method protected onSceneLoading()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnablePageLoading(Z)V

    .line 135
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 433
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 435
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 441
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 442
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 371
    const-string v4, "SceneLocalFolder"

    const-string v5, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: ..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 373
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 374
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemSelected:I

    .line 376
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v4, v4, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    if-eqz v4, :cond_0

    .line 378
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 379
    .local v2, adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->isObservedDataChange()Z

    move-result v3

    .line 380
    .local v3, isDataChanged:Z
    const-string v4, "SceneLocalFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: dirty: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    if-eqz v3, :cond_0

    .line 383
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 386
    .end local v2           #adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    .end local v3           #isDataChanged:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 387
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    const-string v4, "SceneLocalFolder"

    const-string v5, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: reset..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 394
    :cond_1
    return-void
.end method

.method public onTriggerErrorReport()V
    .locals 5

    .prologue
    const/16 v4, 0x4e44

    .line 699
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureUnbindAdapter()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 703
    .local v0, nLoadState:I
    const-string v1, "SceneLocalFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalFolder][onTriggerErrorReport]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 706
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRemoveMessage(I)V

    .line 707
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 591
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onUnbindAdapter()V

    .line 593
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 596
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 597
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 536
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 537
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string v0, "SceneLocalFolder"

    return-object v0
.end method
