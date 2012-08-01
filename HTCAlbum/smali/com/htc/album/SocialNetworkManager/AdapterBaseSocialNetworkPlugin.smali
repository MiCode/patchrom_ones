.class public abstract Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;
.super Lcom/htc/opensense/plugin/ExteriorListAdapter;
.source "AdapterBaseSocialNetworkPlugin.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdapterBaseSocialNetworkPlugin"


# instance fields
.field protected mHandlerData:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field protected mItemReuqested:Ljava/lang/Object;

.field protected mList:Ljava/util/List;

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field protected mScrollState:I

.field private mServiceID:I

.field protected mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

.field protected mUIState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .parameter "hostContext"
    .parameter "pluginContext"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;-><init>(Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    .line 43
    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceID:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    .line 46
    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    .line 48
    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mHandlerData:Landroid/os/Handler;

    .line 49
    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 50
    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 68
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 156
    :cond_0
    return v0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "pos"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, obj:Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 167
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 173
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemOrderKey(I)Ljava/lang/Comparable;
    .locals 1
    .parameter "pos"

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemRequest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemSeparationKey(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 1
    .parameter "position"

    .prologue
    .line 191
    invoke-static {}, Lcom/htc/opensense/plugin/ItemViewProxy;->obtain()Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v0

    .line 192
    .local v0, itemView:Lcom/htc/opensense/plugin/ItemViewProxy;
    return-object v0
.end method

.method public getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    return-object v0
.end method

.method public isSorted()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public loadData()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 72
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 73
    new-instance v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$1;-><init>(Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mHandlerData:Landroid/os/Handler;

    .line 83
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->getHostContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableRecentList:Z

    if-ne v3, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->enableRecentAlbumList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 99
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->getHostContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    sget v4, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 103
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 104
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->changeLayoutType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdapterBaseSocialNetworkPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseSocialNetworkPlugin][loadData]1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 108
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "AdapterBaseSocialNetworkPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseSocialNetworkPlugin][loadData]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 305
    :cond_0
    return-void
.end method

.method public abstract onErrorConnection()V
.end method

.method public abstract onErrorNoList()V
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_0
    return-void

    .line 324
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    goto :goto_0

    .line 329
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x4f4d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract onRequestAlbumlist()V
.end method

.method public abstract onSyncListComplete()V
.end method

.method public abstract onSyncPhotoComplete()V
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mHandlerData:Landroid/os/Handler;

    .line 311
    return-void
.end method

.method protected setDataRequest(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 211
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    const-string v2, "service_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceURL:Ljava/lang/String;

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 227
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    const-string v2, "album_update"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    .line 230
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    const-string v2, "recent_list"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableRecentList:Z

    .line 231
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    const-string v2, "sort_list"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableSort:Z

    .line 232
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    const-string v2, "flag_display"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsFlagDisplay:Z

    .line 233
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    const-string v2, "from_insde"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsInternal:Z

    .line 234
    return-void

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceURL:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    const-string v2, "service_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceURL:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract syncBackgroundService()V
.end method

.method public unloadData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onPause()V

    .line 122
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Uninitialize(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    iput-object v4, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 134
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :goto_1
    iput-object v4, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 142
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->setDataHandler(Landroid/os/Handler;)V

    .line 143
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdapterBaseSocialNetworkPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseSocialNetworkPlugin][unloadData]1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 138
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "AdapterBaseSocialNetworkPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseSocialNetworkPlugin][unloadData]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
