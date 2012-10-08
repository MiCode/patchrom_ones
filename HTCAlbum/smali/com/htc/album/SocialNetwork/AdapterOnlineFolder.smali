.class public Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;
.super Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;
.source "AdapterOnlineFolder.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterOnlineFolder"


# instance fields
.field protected mDataBundle:Landroid/os/Bundle;

.field private mFirstActivity:Z

.field private mIsExceptionFromDropBoxSignIn:Z

.field private mIsInternal:Z

.field protected mIsLatest:Z

.field private mPeopleOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation
.end field

.field private mTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field protected mUIState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 42
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsInternal:Z

    .line 43
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    .line 45
    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    .line 50
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mFirstActivity:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mTList:Ljava/util/ArrayList;

    .line 53
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsExceptionFromDropBoxSignIn:Z

    .line 58
    return-void
.end method

.method private setListCategory()V
    .locals 3

    .prologue
    .line 637
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsFlagDisplay:Z

    if-nez v1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setListCategory]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 648
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v0           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 649
    .restart local v0       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 650
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 651
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setListLoader(Z)V
    .locals 5
    .parameter "bIsEnable"

    .prologue
    .line 326
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsInternal:Z

    if-nez v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string v2, "AdapterOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AdapterOnlineFolder][setListLoader]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 339
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 341
    const-string v0, ""

    .line 343
    .local v0, txtLoading:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 346
    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v2, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 347
    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v0           #txtLoading:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x4e8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 123
    :cond_0
    return v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "AdapterOnlineFolder"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/IMediaData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onErrorConnection()V
    .locals 2

    .prologue
    .line 502
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 504
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onNotifyUpdateComplete()V

    .line 505
    return-void
.end method

.method public onErrorNoList()V
    .locals 7

    .prologue
    const/16 v6, 0x2763

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 509
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onErrorNoList]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    if-nez v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iput-boolean v5, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    .line 513
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v0, :cond_2

    .line 515
    :cond_1
    const/16 v0, 0x4e24

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 521
    :goto_0
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 533
    :goto_1
    return-void

    .line 519
    :cond_2
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 525
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 526
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 527
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsExceptionFromDropBoxSignIn:Z

    if-eqz v0, :cond_4

    .line 528
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsExceptionFromDropBoxSignIn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v6, v0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    .line 530
    :cond_4
    invoke-virtual {p0, v6, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 5
    .parameter "downloadListener"

    .prologue
    const/16 v4, 0x4ee9

    .line 72
    iget v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    if-ne v4, v1, :cond_0

    .line 74
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onLoadData]: exits..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onLoadData]:Begin"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onLoadData()V

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 84
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 85
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncBackgroundService()V

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mScrollState:I

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 97
    iput v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    .line 98
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onLoadData]: End"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdapterOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterOnlineFolder][onLoadData]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 261
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    .line 262
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :goto_0
    :sswitch_0
    return-void

    .line 264
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 319
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 267
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestUserInfo()V

    goto :goto_0

    .line 270
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestAlbumlist()V

    goto :goto_0

    .line 273
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestRecentList()V

    goto :goto_0

    .line 276
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestNextOnList()V

    goto :goto_0

    .line 279
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncConnection()V

    goto :goto_0

    .line 282
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncListComplete()V

    goto :goto_0

    .line 285
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 297
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onErrorConnection()V

    goto :goto_0

    .line 301
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 302
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsExceptionFromDropBoxSignIn:Z

    .line 306
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onErrorNoList()V

    goto :goto_0

    .line 304
    :cond_1
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsExceptionFromDropBoxSignIn:Z

    goto :goto_1

    .line 310
    :sswitch_a
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setListLoader(Z)V

    goto :goto_0

    .line 313
    :sswitch_b
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setListLoader(Z)V

    goto :goto_0

    .line 316
    :sswitch_c
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncBackgroundService()V

    goto :goto_0

    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_a
        0x2728 -> :sswitch_b
        0x274c -> :sswitch_8
        0x2761 -> :sswitch_9
        0x4e21 -> :sswitch_1
        0x4e24 -> :sswitch_2
        0x4e2e -> :sswitch_3
        0x4e2f -> :sswitch_4
        0x4e84 -> :sswitch_5
        0x4e88 -> :sswitch_6
        0x4e89 -> :sswitch_7
        0x4e8d -> :sswitch_0
        0x4ea2 -> :sswitch_c
    .end sparse-switch
.end method

.method public onRequestAlbumlist()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 377
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onRequestAlbumlist]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onRequestAlbumlist]: force: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    if-eqz v0, :cond_0

    .line 380
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsExceptionFromDropBoxSignIn:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->disableSignInFlag()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumList(Ljava/util/List;Z)Z

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_1
    const/16 v0, 0x2761

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onRequestNextOnList()V
    .locals 2

    .prologue
    .line 398
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onRequestNextOnList]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumNextOnList(Z)Z

    .line 401
    :cond_0
    return-void
.end method

.method public onRequestRecentList()V
    .locals 2

    .prologue
    .line 392
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onRequestRecentList]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumRecentList(Z)Z

    .line 395
    :cond_0
    return-void
.end method

.method public onRequestUserInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 355
    const-string v2, "AdapterOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AdapterOnlineFolder][onRequestUserInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 359
    .local v1, szUIDs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 360
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    .line 364
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 366
    const/16 v2, 0x4e24

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 372
    :goto_1
    return-void

    .line 370
    :cond_1
    const/16 v2, 0x2761

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onResume()V

    .line 68
    return-void
.end method

.method public onSyncConnection()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 404
    const-string v5, "AdapterOnlineFolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AdapterOnlineFolder][onSyncConnection]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v5, :cond_6

    .line 408
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    const-string v7, "first_activity"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mFirstActivity:Z

    .line 409
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mFirstActivity:Z

    if-eqz v5, :cond_4

    .line 410
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v7, v7, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 411
    .local v3, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    const/4 v0, 0x0

    .line 413
    .local v0, account:[Landroid/accounts/Account;
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 415
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 416
    .local v1, accountMgr:Landroid/accounts/AccountManager;
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 419
    .end local v1           #accountMgr:Landroid/accounts/AccountManager;
    :cond_0
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v0, :cond_3

    move-object v5, v6

    :goto_0
    invoke-virtual {v7, v5}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;

    move-result-object v2

    .line 420
    .local v2, pdata:Lcom/htc/opensense/album/plugin/PersonData;
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 422
    :cond_1
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 423
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/PersonData;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v2           #pdata:Lcom/htc/opensense/album/plugin/PersonData;
    .end local v3           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_2
    :goto_1
    const/16 v5, 0x4e24

    invoke-virtual {p0, v5, v6, v9}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 438
    :goto_2
    return-void

    .line 419
    .restart local v0       #account:[Landroid/accounts/Account;
    .restart local v3       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_3
    aget-object v5, v0, v9

    goto :goto_0

    .line 426
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v3           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_4
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    const-string v7, "user_id"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, userId:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 429
    :cond_5
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 430
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 437
    .end local v4           #userId:Ljava/lang/String;
    :cond_6
    const/16 v5, 0x4e21

    invoke-virtual {p0, v5, v6, v9}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_2
.end method

.method public onSyncListComplete()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 442
    const-string v4, "AdapterOnlineFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][AdapterOnlineFolder][onSyncListComplete]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v4, :cond_5

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, bIsFirstTime:Z
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 448
    const/4 v0, 0x1

    .line 449
    :cond_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncListItem(Ljava/lang/Object;)V

    .line 450
    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    if-nez v4, :cond_4

    .line 452
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iput-boolean v2, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    .line 453
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v4}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onEnableCacheList()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 454
    .local v1, pluginEnableCache:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_1
    if-eqz v1, :cond_7

    .line 456
    :cond_2
    const/16 v4, 0x4e24

    invoke-virtual {p0, v4, v7, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 462
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 464
    .end local v1           #pluginEnableCache:Z
    :cond_4
    if-eqz v0, :cond_8

    .line 465
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onNotifyUpdateComplete()V

    .line 469
    .end local v0           #bIsFirstTime:Z
    :cond_5
    :goto_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onVerifyImageStatus(I)V

    .line 475
    const/16 v2, 0x4e47

    const/16 v3, 0xbb8

    invoke-virtual {p0, v2, v7, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 476
    return-void

    .restart local v0       #bIsFirstTime:Z
    :cond_6
    move v1, v3

    .line 453
    goto :goto_0

    .line 458
    .restart local v1       #pluginEnableCache:Z
    :cond_7
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v4, :cond_3

    .line 460
    const/16 v4, 0x2761

    invoke-virtual {p0, v4, v7, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    .line 466
    .end local v1           #pluginEnableCache:Z
    :cond_8
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 467
    const/16 v2, 0x4e88

    invoke-virtual {p0, v2, v7, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_2
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 481
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 482
    .local v1, bundleNotify:Landroid/os/Bundle;
    const-string v4, "index_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 483
    .local v3, nIndex:I
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 484
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const/4 v2, 0x0

    .line 489
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v4, :cond_0

    .line 491
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    .line 492
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 496
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_0
.end method

.method public onUnloadData()V
    .locals 2

    .prologue
    .line 104
    const/16 v0, 0x4ee9

    iget v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    if-eq v0, v1, :cond_0

    .line 106
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]: skip..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    .line 111
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]:Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onUnloadData()V

    .line 114
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]:End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 234
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataBundle]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-eqz p1, :cond_0

    .line 237
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    .line 238
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setDataRequest(Ljava/lang/Object;)V

    .line 240
    :cond_0
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataBundle]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 0
    .parameter "plugin"

    .prologue
    .line 153
    check-cast p1, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .end local p1
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 154
    return-void
.end method

.method public setDataRequest(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 244
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->setDataRequest(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 252
    :cond_0
    :goto_0
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Display name\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Enable Force update\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Enable Recent list\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Enable Sort\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableSort:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: End "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setInternal(Z)V
    .locals 3
    .parameter "bIsInternal"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsInternal:Z

    .line 62
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setInternal]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsInternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setScrollState(III)V
    .locals 2
    .parameter "nScrollState"
    .parameter "nFirstIndex"
    .parameter "nLastIndex"

    .prologue
    const/16 v1, 0x4f4d

    .line 656
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_0

    .line 658
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setScrollState]: skip 1.."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_0
    return-void

    .line 661
    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    if-ne v0, p2, :cond_1

    .line 663
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setScrollState]: skip 2.."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_1
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    .line 667
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    .line 668
    iput p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastVisibleIndex:I

    .line 672
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v1, v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 676
    invoke-virtual {p0, p2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onVerifyImageStatus(I)V

    goto :goto_0

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4e

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 681
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 0
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 690
    return-void
.end method

.method public syncBackgroundService()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 162
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v7, v7, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 163
    .local v3, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 165
    .local v2, needToCheckAccount:Z
    :goto_0
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v6, v6, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v6, v6, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 167
    :cond_0
    const/16 v4, 0x2761

    invoke-virtual {p0, v4, v9, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 231
    :cond_1
    :goto_1
    return-void

    .end local v2           #needToCheckAccount:Z
    :cond_2
    move v2, v5

    .line 163
    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    .line 172
    .restart local v2       #needToCheckAccount:Z
    :cond_4
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v6, :cond_5

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v6, v6, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 177
    :cond_5
    const-string v6, "AdapterOnlineFolder"

    const-string v7, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]: begin..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    .line 182
    .local v0, bResult:Z
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v7, v7, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v6

    if-ne v4, v6, :cond_1

    .line 184
    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v6

    if-nez v6, :cond_6

    .line 186
    const-string v4, "AdapterOnlineFolder"

    const-string v6, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]: no account..."

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    goto :goto_1

    .line 191
    :cond_6
    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v6

    if-ne v4, v6, :cond_7

    .line 193
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    const-string v4, "AdapterOnlineFolder"

    const-string v5, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]: no change just skip!!"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_7
    const-string v6, "AdapterOnlineFolder"

    const-string v7, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]InitConnection.."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz v2, :cond_9

    .line 206
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 210
    :goto_2
    const/4 v1, 0x0

    .line 212
    .local v1, bret:Z
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v6, :cond_a

    .line 214
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    move-result v1

    .line 224
    :cond_8
    :goto_3
    if-eqz v1, :cond_1

    .line 226
    const/16 v4, 0x2724

    invoke-virtual {p0, v4, v9, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    .line 208
    .end local v1           #bret:Z
    :cond_9
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveDummyAccount()V

    goto :goto_2

    .line 218
    .restart local v1       #bret:Z
    :cond_a
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    .line 696
    return-void
.end method

.method public syncListItem(Ljava/lang/Object;)V
    .locals 12
    .parameter "objList"

    .prologue
    const/4 v11, 0x0

    .line 538
    const/4 v0, 0x0

    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    move-object v0, p1

    .line 539
    check-cast v0, Ljava/util/List;

    .line 544
    const/4 v6, 0x0

    .line 545
    .local v6, refList:Ljava/util/List;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 547
    .local v7, tempList:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 549
    :cond_0
    const-string v8, "AdapterOnlineFolder"

    const-string v9, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: Empty..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :goto_0
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    .line 625
    iput-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    .line 626
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: new list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: clear old: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 632
    invoke-virtual {p0, v11}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 633
    :goto_1
    return-void

    .line 555
    :cond_1
    const/4 v1, 0x0

    .line 556
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v4, 0x0

    .line 557
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v5, 0x0

    .local v5, index:I
    move-object v2, v1

    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .local v2, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :goto_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_7

    .line 559
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getProfile()Lcom/htc/opensense/social/data/Album;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v2           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_start_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getPID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setPID(Ljava/lang/String;)V

    .line 561
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverUrlHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setCoverUrlHeader(Ljava/lang/String;)V

    .line 562
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 563
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v9, 0x20401f1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 565
    :cond_2
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 566
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00a4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 568
    :cond_3
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 569
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00a5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 583
    :cond_4
    invoke-virtual {v1, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setIndex(I)V

    .line 584
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCreateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setDateTime(Ljava/lang/String;)V

    .line 585
    sget-object v8, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 587
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v8, :cond_5

    .line 588
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v8, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v4

    .line 590
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 592
    iget-object v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v8, :cond_6

    .line 594
    iget-object v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v9, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1, v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 598
    :cond_6
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 557
    add-int/lit8 v5, v5, 0x1

    move-object v2, v1

    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v2       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto/16 :goto_2

    .line 601
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 603
    .end local v2           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][GridAlbumSocialNetwork][syncListItem] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/16 v8, 0x4e24

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v11}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 608
    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_7
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v8, v8, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableSort:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v8, :cond_9

    .line 610
    :cond_8
    const-string v8, "AdapterOnlineFolder"

    const-string v9, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: No sorting required..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_4
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setListCategory()V

    goto/16 :goto_0

    .line 614
    :cond_9
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: Sorting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 616
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: Sorting complete: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 601
    .end local v2           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :catch_1
    move-exception v3

    goto :goto_3
.end method
