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

.field private mIsInAnimation:Z

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

    .line 753
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimationState:I

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

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
    .line 273
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableTransition:Z

    if-eqz v1, :cond_1

    .line 276
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 284
    :goto_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimationState:I

    if-eq v1, v2, :cond_2

    .line 295
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, p2

    .line 281
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 282
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setAlpha4FolderItem(IF)V

    goto :goto_0

    .line 287
    .end local v0           #item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    :cond_2
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemSelected:I

    if-ne v1, p1, :cond_0

    .line 290
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableTransition:Z

    if-eqz v1, :cond_0

    .line 293
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setVisibility(Z)V

    goto :goto_1
.end method

.method private onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 4
    .parameter "param"

    .prologue
    .line 244
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 245
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 248
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    check-cast p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    .end local p1
    invoke-direct {v2, v1, v3, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 252
    .local v2, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 269
    return-object v2
.end method

.method private onDataSetChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 745
    return-void
.end method

.method private onHandleUpdatingState(ZZ)V
    .locals 6
    .parameter "bForceUpdate"
    .parameter "bIsUpdating"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureSendToForeground()Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v2, 0x0

    .line 156
    .local v2, host:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, activity:Landroid/app/Activity;
    instance-of v3, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 158
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 160
    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-ne v3, v4, :cond_4

    .line 162
    :cond_3
    const-string v3, "SceneLocalFolder"

    const-string v4, "[HTCAlbum][SceneLocalFolder][onHandleUpdatingState]: skip..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_4
    move v1, p2

    .line 167
    .local v1, bUpdate:Z
    if-nez p1, :cond_5

    .line 169
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureOnPrepareOptionsMenu()Z

    move-result v3

    if-nez v3, :cond_6

    .line 170
    const/4 v1, 0x0

    .line 177
    :cond_5
    :goto_1
    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 178
    const-string v3, "SceneLocalFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalFolder][onHandleUpdatingState]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 146
    invoke-direct {p0, v1, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 149
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 213
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 214
    .local v0, scrollState:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    if-ne v1, v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 217
    :cond_0
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    .line 219
    packed-switch v0, :pswitch_data_0

    .line 225
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrolling()V

    goto :goto_0

    .line 222
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrollIdle()V

    goto :goto_0

    .line 219
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

    .line 409
    if-nez p1, :cond_2

    .line 410
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto :goto_0

    .line 419
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 420
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 422
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v0

    .line 423
    .local v0, appBackground:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 433
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto :goto_0

    .line 436
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
    .line 568
    const-string v0, "AdapterLocalFolder"

    return-object v0
.end method

.method public enableHostCamera()Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 867
    const/16 v0, 0xff

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 880
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 883
    .local v0, activity:Landroid/app/Activity;
    const-string v1, ""

    .line 884
    .local v1, szLoading:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 886
    return-object v1
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataChangedAt(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 730
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataChangedAt(I)V

    .line 731
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDataSetChange(I)V

    .line 732
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 718
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][notifyDataSetChanged]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataSetChanged()V

    .line 720
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDataSetChange(I)V

    .line 721
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureSendToBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 725
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 530
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    packed-switch p1, :pswitch_data_0

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 536
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x13a1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(I)V
    .locals 7
    .parameter "nAnimState"

    .prologue
    const/4 v6, 0x0

    .line 824
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onAnimationEnd(I)V

    .line 829
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v2

    .line 830
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

    .line 831
    if-nez v2, :cond_0

    .line 832
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 834
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 851
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v3, :cond_2

    .line 853
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    move-result-object v1

    .line 854
    .local v1, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    if-eqz v1, :cond_2

    .line 855
    invoke-interface {v1, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;->onAnimationEnd(I)V

    .line 859
    .end local v1           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    :cond_2
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    .line 860
    return-void

    .line 839
    :pswitch_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 844
    :pswitch_2
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    move-result-object v0

    .line 845
    .local v0, contentHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    if-nez v0, :cond_1

    .line 846
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->setVisibility(Z)V

    goto :goto_0

    .line 834
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
    .line 595
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onBindAdapter()V

    .line 596
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onBindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 599
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->invalidateControlBars()V

    .line 600
    return-void
.end method

.method public onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x138f

    const/4 v2, 0x0

    .line 929
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onBroadcastMediaScanFinished]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRemoveMessage(I)V

    .line 931
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPostMessage(I)V

    .line 932
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 933
    return v2
.end method

.method public onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 921
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onBroadcastMediaScanStarted]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-direct {p0, v2, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 500
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 502
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 503
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 505
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 506
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    if-nez v1, :cond_0

    .line 508
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 510
    :cond_0
    return-void
.end method

.method public onConfigurationChangedInBackground(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 513
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableTransition:Z

    if-eqz v0, :cond_0

    .line 519
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 522
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onConfigurationChangedInBackground] "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 524
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    goto :goto_0
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "nAnimState"

    .prologue
    const/4 v3, 0x1

    .line 772
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 774
    .local v0, animationBundle:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 796
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v2, :cond_1

    .line 801
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    move-result-object v1

    .line 802
    .local v1, contentHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    if-eqz v1, :cond_3

    .line 804
    invoke-interface {v1, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;->onCreateAnimation(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 805
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 812
    .end local v1           #contentHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    :cond_1
    :goto_1
    return-object v0

    .line 776
    :pswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 777
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    goto :goto_0

    .line 781
    :pswitch_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_2

    .line 782
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 787
    :cond_2
    :pswitch_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 809
    .restart local v1       #contentHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    goto :goto_1

    .line 774
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

    .line 298
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 299
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 301
    const-string v8, "SceneLocalFolder"

    const-string v9, "[HTCAlbum][SceneLocalFolder][onCreateScene]: null..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v2, 0x0

    .line 348
    :cond_0
    :goto_0
    return-object v2

    .line 305
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 306
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, v11}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v6

    .line 307
    .local v6, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 309
    .local v3, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v8

    invoke-direct {v2, v1, v8, v3}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 312
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setIdentifier(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;

    move-result-object v7

    .line 314
    .local v7, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;
    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->enableFileCache()V

    .line 317
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->SetCacheCountClient(Lcom/htc/sunny2/frameworks/base/interfaces/ICacheClientMgr;)V

    .line 318
    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->setCacheSet(I)V

    .line 320
    new-instance v8, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v8, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 321
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v8, v1, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 322
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v8, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 323
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 325
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v8}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 326
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 328
    instance-of v8, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v8, :cond_0

    .line 330
    const/4 v5, 0x0

    .line 331
    .local v5, nTop:I
    const/4 v4, 0x0

    .line 332
    .local v4, nRight:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 334
    invoke-static {v0, v10}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v10}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v9

    add-int v5, v8, v9

    .line 337
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070036

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 345
    :goto_1
    invoke-virtual {v2, v11, v5, v4, v11}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPadding(IIII)V

    goto :goto_0

    .line 341
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
    .line 758
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

    .line 353
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 355
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDestroyScene()V

    .line 356
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 362
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v3, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v3, :cond_1

    .line 364
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 365
    .local v2, cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    .line 367
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v3, :cond_1

    .line 369
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewFolderList()Z

    move-result v0

    .line 370
    .local v0, bEnableScrollCache:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableTransitionCache4GridviewFolderList()Z

    move-result v1

    .line 372
    .local v1, bEnableTransition:Z
    if-eqz v0, :cond_0

    .line 373
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v3, p0, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 375
    :cond_0
    if-eqz v1, :cond_1

    .line 376
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v3, p0, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 380
    .end local v0           #bEnableScrollCache:Z
    .end local v1           #bEnableTransition:Z
    .end local v2           #cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 381
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
    .line 463
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 465
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onLeaveScene()V

    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 474
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v2

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 186
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 207
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 192
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onItemSelected(I)V

    goto :goto_0

    .line 195
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onSceneLoading()V

    goto :goto_0

    .line 198
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_0

    .line 201
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 204
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRefreshAdapter()V

    goto :goto_0

    .line 189
    nop

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
    .line 573
    const-string v3, "SceneLocalFolder"

    const-string v4, "[HTCAlbum][SceneLocalFolder][onNewAdapter]: ..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 576
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 577
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 578
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "media_connected"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 579
    .local v1, bIsMediaConnected:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "media_connected"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 581
    new-instance v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getAdapterMediaType()I

    move-result v5

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 586
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 587
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->enableObserverNotify()V

    .line 588
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 589
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onLoadData()V

    .line 590
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 737
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onNotifyUpdateComplete]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNotifyUpdateComplete()V

    .line 739
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDataSetChange(I)V

    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnablePageLoading(Z)V

    .line 741
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 1
    .parameter "bIsLoading"

    .prologue
    .line 697
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNotifyUpdating(Z)V

    .line 698
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 699
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 669
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 670
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 690
    :goto_0
    return v4

    .line 674
    :cond_0
    const/4 v1, 0x0

    .line 675
    .local v1, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 686
    :sswitch_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 678
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 679
    .local v2, hideShowAlbum:Landroid/content/Intent;
    const-class v3, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 680
    const/16 v3, 0x13a1

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 683
    .end local v2           #hideShowAlbum:Landroid/content/Intent;
    :sswitch_2
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto :goto_0

    .line 675
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
    .line 489
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPause()V

    .line 491
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 493
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 495
    :cond_0
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 816
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 817
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 820
    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 763
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    .line 764
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimationState:I

    .line 765
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareAnimation(I)Z

    move-result v0

    .line 766
    .local v0, anim:Z
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v5, 0x7f0a00b1

    const/4 v6, 0x0

    .line 623
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 625
    const/4 v1, 0x0

    .line 626
    .local v1, bResult:Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 628
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 630
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 632
    const-string v4, "SceneLocalFolder"

    const-string v5, "[HTCAlbum][SceneLocalFolder][onPrepareOptionsMenu]: InternalStorageStateError"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 664
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 635
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isLoadingInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 651
    :cond_1
    invoke-interface {p1, v6, v5, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 656
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->enableHostCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 658
    const/4 v4, 0x3

    const v5, 0x7f0a0111

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 659
    .local v3, itemOutput:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 660
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 663
    .end local v3           #itemOutput:Landroid/view/MenuItem;
    :cond_2
    const/4 v1, 0x1

    move v2, v1

    .line 664
    .restart local v2       #bResult:I
    goto :goto_0
.end method

.method protected onRefreshAdapter()V
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isLoadingInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: is reloading... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneMediaMountedS40()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalMediaMounted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 909
    :cond_3
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: reload... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 914
    :cond_4
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: no media ready... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 479
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onResume()V

    .line 481
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 484
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
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 446
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 447
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 449
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 455
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 456
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 384
    const-string v4, "SceneLocalFolder"

    const-string v5, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: ..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 386
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 387
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemSelected:I

    .line 389
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v4, v4, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    if-eqz v4, :cond_0

    .line 391
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 392
    .local v2, adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->isObservedDataChange()Z

    move-result v3

    .line 393
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

    .line 394
    if-eqz v3, :cond_0

    .line 396
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 399
    .end local v2           #adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    .end local v3           #isDataChanged:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 400
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 403
    const-string v4, "SceneLocalFolder"

    const-string v5, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: reset..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 407
    :cond_1
    return-void
.end method

.method public onTriggerErrorReport()V
    .locals 5

    .prologue
    const/16 v4, 0x4e44

    .line 702
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureUnbindAdapter()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 706
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

    .line 707
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 709
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRemoveMessage(I)V

    .line 710
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 605
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onUnbindAdapter()V

    .line 607
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 610
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 611
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 551
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
    .line 240
    const-string v0, "SceneLocalFolder"

    return-object v0
.end method
