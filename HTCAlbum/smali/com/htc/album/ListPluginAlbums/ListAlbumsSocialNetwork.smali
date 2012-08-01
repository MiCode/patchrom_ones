.class public Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;
.super Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;
.source "ListAlbumsSocialNetwork.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListAlbumsSocialNetwork"


# instance fields
.field protected mFolderBackground:Landroid/graphics/Bitmap;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .parameter "hostContext"
    .parameter "pluginContext"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mIsLatest:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 47
    return-void
.end method

.method private setListCategory()V
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsFlagDisplay:Z

    if-nez v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    const-string v1, "ListAlbumsSocialNetwork"

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setListCategory]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 526
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v0           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 527
    .restart local v0       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 528
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setListLoader(Z)V
    .locals 5
    .parameter "bIsEnable"

    .prologue
    .line 487
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsInternal:Z

    if-nez v2, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    const-string v2, "ListAlbumsSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ListAlbumsSocialNetwork][setListLoader]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 500
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 502
    const-string v0, ""

    .line 504
    .local v0, txtLoading:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 507
    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v2, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 508
    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v0           #txtLoading:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x4e8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method public getExteriorContextMenuItems(I)Ljava/util/List;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemSeparationKey(I)Ljava/lang/Object;
    .locals 2
    .parameter "pos"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, object:Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v0

    .line 216
    .end local v0           #object:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getItemSeparationText(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 225
    :cond_0
    return-object v0
.end method

.method public getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 11
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 229
    invoke-static {}, Lcom/htc/opensense/plugin/ItemViewProxy;->obtain()Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v9

    .line 232
    .local v9, itemView:Lcom/htc/opensense/plugin/ItemViewProxy;
    if-eqz v9, :cond_3

    .line 234
    const/4 v7, 0x0

    .line 235
    .local v7, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v7, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 236
    .restart local v7       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v7, :cond_3

    .line 241
    const v0, 0x7f03001b

    invoke-virtual {v9, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->setItemLayout(I)V

    .line 242
    const v0, 0x7f090042

    const-string v1, "setImageBitmap"

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v0, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-string v10, ""

    .line 249
    .local v10, szPhotoCount:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 251
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x20401f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 263
    :goto_0
    const/4 v6, 0x1

    .line 264
    .local v6, bIsIdle:Z
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v6, 0x0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverURL()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageGridBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 273
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 275
    const v0, 0x7f090043

    const-string v1, "setImageBitmap"

    invoke-virtual {v9, v0, v1, v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 279
    :cond_1
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x20401f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 284
    :cond_2
    const v0, 0x7f090012

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/htc/opensense/plugin/ItemViewProxy;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 285
    const v0, 0x7f090044

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCreateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/htc/opensense/plugin/ItemViewProxy;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 290
    .end local v6           #bIsIdle:Z
    .end local v7           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #szPhotoCount:Ljava/lang/String;
    :cond_3
    return-object v9

    .line 253
    .restart local v7       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v10       #szPhotoCount:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v0

    if-ne v4, v0, :cond_5

    .line 255
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public loadData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][loadData]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->loadData()V

    .line 94
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][loadData]: ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 97
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 107
    :goto_0
    iput v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    .line 108
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 110
    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    .line 112
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][loadData]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->syncBackgroundService()V

    goto :goto_0
.end method

.method public onContextItemSelected(ILcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)Z
    .locals 1
    .parameter "contextMenuItemId"
    .parameter "info"

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public onErrorConnection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 419
    const-string v1, "ListAlbumsSocialNetwork"

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onErrorConnection]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 421
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isLoading"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 422
    const/16 v1, 0x4e8d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 423
    return-void
.end method

.method public onErrorNoList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 427
    const-string v1, "ListAlbumsSocialNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][onErrorNoList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 429
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isLoading"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    const/16 v1, 0x2728

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 431
    const/16 v1, 0x4e8d

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 432
    return-void
.end method

.method public onItemClick(I)V
    .locals 10
    .parameter "pos"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v4, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 147
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz v0, :cond_0

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.htc.album.SocialNetwork.ActivityMainOnline"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v4, "online_scene"

    const-class v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v4, "from_outside"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v4, "service_name"

    iget-object v5, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v5, "user_id"

    iget-object v4, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v4, "album_id"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v4, "album_name"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    const-string v4, "flag_genuine"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getItemRequest()Ljava/lang/Object;

    move-result-object v3

    .line 172
    .local v3, obj:Ljava/lang/Object;
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 177
    const-string v5, "from_tabhost"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "from_tabhost"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    const-string v5, "from_albumhost"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "from_albumhost"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string v5, "from_tmoFaves"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "from_tmoFaves"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v5, "listviewPos"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "listviewPos"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v5, "fromMainActivity"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "fromMainActivity"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-string v5, "user_name"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "user_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v5, "user_buddyicon"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "user_buddyicon"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v3

    .line 189
    check-cast v4, Landroid/os/Bundle;

    const-string v5, "from_tmoFaves"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v9, v4, :cond_5

    .line 191
    const/4 v2, 0x0

    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v3

    .line 192
    check-cast v4, Landroid/os/Bundle;

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 193
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]: facebook: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_3
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v4, v3

    .line 196
    check-cast v4, Landroid/os/Bundle;

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 197
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]: flickr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_4
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 200
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v5, "user_name"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "user_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v4, "photo_id"

    check-cast v3, Landroid/os/Bundle;

    .end local v3           #obj:Ljava/lang/Object;
    const-string v5, "photo_id"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 207
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 436
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 480
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->onMessageHandler(Landroid/os/Message;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 439
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestUserInfo()V

    goto :goto_0

    .line 442
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestAlbumlist()V

    goto :goto_0

    .line 445
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestRecentList()V

    goto :goto_0

    .line 448
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestNextOnList()V

    goto :goto_0

    .line 451
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onSyncConnection()V

    goto :goto_0

    .line 454
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onSyncListComplete()V

    goto :goto_0

    .line 457
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onSyncPhotoComplete()V

    goto :goto_0

    .line 461
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->notifyDataSetChanged()V

    goto :goto_0

    .line 468
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onErrorConnection()V

    goto :goto_0

    .line 471
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onErrorNoList()V

    goto :goto_0

    .line 474
    :sswitch_a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setListLoader(Z)V

    goto :goto_0

    .line 477
    :sswitch_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setListLoader(Z)V

    goto :goto_0

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_a
        0x2728 -> :sswitch_b
        0x274c -> :sswitch_8
        0x2761 -> :sswitch_9
        0x4e21 -> :sswitch_0
        0x4e24 -> :sswitch_1
        0x4e2e -> :sswitch_2
        0x4e2f -> :sswitch_3
        0x4e84 -> :sswitch_4
        0x4e88 -> :sswitch_5
        0x4e89 -> :sswitch_6
        0x4e8d -> :sswitch_7
    .end sparse-switch
.end method

.method public onRequestAlbumlist()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 362
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestAlbumlist]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumList(Ljava/util/List;Z)Z

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const/16 v0, 0x2761

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onRequestNextOnList()V
    .locals 2

    .prologue
    .line 379
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestNextOnList]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumNextOnList(Z)Z

    .line 382
    :cond_0
    return-void
.end method

.method public onRequestRecentList()V
    .locals 2

    .prologue
    .line 373
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestRecentList]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumRecentList(Z)Z

    .line 376
    :cond_0
    return-void
.end method

.method public onRequestUserInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 340
    const-string v2, "ListAlbumsSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestUserInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 344
    .local v1, szUIDs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 345
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    .line 349
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 351
    const/16 v2, 0x4e24

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 357
    :goto_1
    return-void

    .line 355
    :cond_1
    const/16 v2, 0x2761

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onSyncConnection()V
    .locals 3

    .prologue
    .line 385
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onSyncConnection]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/16 v0, 0x4e21

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 387
    return-void
.end method

.method public onSyncListComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 391
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onSyncListComplete]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->syncListItem(Ljava/lang/Object;)V

    .line 396
    iget-boolean v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mIsLatest:Z

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iput-boolean v4, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    .line 399
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 401
    const/16 v0, 0x4e24

    invoke-virtual {p0, v0, v5, v3}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 407
    :goto_0
    iput-boolean v4, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mIsLatest:Z

    .line 410
    :cond_0
    return-void

    .line 405
    :cond_1
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v5, v3}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncPhotoComplete()V
    .locals 3

    .prologue
    .line 414
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 415
    return-void
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 50
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataBundle]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setDataRequest(Ljava/lang/Object;)V

    .line 55
    :cond_0
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataBundle]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected setDataRequest(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 59
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->setDataRequest(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 67
    :cond_0
    :goto_0
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Display name\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: user ids\t\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Enable Force update\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Enable Recent list\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableRecentList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Enable Sort\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableSort:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: End "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 78
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    .line 83
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    if-nez v0, :cond_0

    .line 86
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public syncBackgroundService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 297
    const/4 v0, 0x0

    .line 300
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v3, v3, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getDataHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v2

    if-ne v6, v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    const-string v2, "ListAlbumsSocialNetwork"

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][syncBackgroundService]: no account..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 306
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "isLoading"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v2

    if-ne v6, v2, :cond_2

    .line 312
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    const-string v2, "ListAlbumsSocialNetwork"

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][syncBackgroundService]: no change just skip!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    const-string v2, "ListAlbumsSocialNetwork"

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][syncBackgroundService]InitConnection.."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 325
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v6, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    const/16 v2, 0x2724

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public syncListItem(Ljava/lang/Object;)V
    .locals 13
    .parameter "objList"

    .prologue
    const/4 v12, 0x0

    .line 536
    const/4 v0, 0x0

    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    move-object v0, p1

    .line 537
    check-cast v0, Ljava/util/List;

    .line 542
    const/4 v5, 0x0

    .line 543
    .local v5, refList:Ljava/util/List;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 545
    .local v6, tempList:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 547
    :cond_0
    const-string v9, "ListAlbumsSocialNetwork"

    const-string v10, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: Empty..."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :goto_0
    iget-object v5, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    .line 591
    iput-object v6, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    .line 592
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: new list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: clear old: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 598
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 599
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "isLoading"

    invoke-virtual {v1, v9, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 601
    const/16 v9, 0x4e8d

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v12}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 602
    return-void

    .line 551
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    const/4 v7, 0x0

    .line 552
    .local v7, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v8, 0x0

    .line 553
    .local v8, wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 554
    .local v4, nCountAlbum:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    if-le v4, v3, :cond_3

    .line 556
    const/4 v8, 0x0

    .line 559
    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .restart local v8       #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :goto_2
    if-nez v8, :cond_2

    .line 554
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 561
    .end local v8           #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :catch_0
    move-exception v2

    .line 563
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v8, 0x0

    .restart local v8       #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto :goto_2

    .line 569
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v7, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v7           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getProfile()Lcom/htc/opensense/social/data/Album;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    .line 570
    .restart local v7       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v9, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v7, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 571
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 574
    :cond_3
    iget-object v9, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v9, v9, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableSort:Z

    if-nez v9, :cond_4

    .line 576
    const-string v9, "ListAlbumsSocialNetwork"

    const-string v10, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: No sorting required..."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_4
    invoke-direct {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setListCategory()V

    goto/16 :goto_0

    .line 580
    :cond_4
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: Sorting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 582
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: Sorting complete: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public unloadData()V
    .locals 2

    .prologue
    .line 116
    const/16 v0, 0x4ee9

    iget v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    if-eq v0, v1, :cond_0

    .line 118
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][unloadData]: skip..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 121
    :cond_0
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    .line 123
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][unloadData]:Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-super {p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->unloadData()V

    .line 126
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 132
    :cond_1
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][unloadData]:End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
