.class public Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
.super Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;
.source "LivePhotoAdapter.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LivePhotoAdapter"

.field private static final PHOTO_DETAILS:I = 0x2


# instance fields
.field private PHOTO_OPENSENSE_DETAILS:I

.field private mEnableCaptionPlugin:Z

.field private mEnableTagPlugin:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 24
    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    .line 25
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    .line 26
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getEnableOpenSenseDetailCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 309
    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    .line 310
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    .line 312
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    .line 314
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v0, v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableCaptionPlugin()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 318
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    .line 319
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableTagsPlugin()Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 333
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    .line 334
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    .line 338
    :cond_1
    const-string v0, "LivePhotoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapter][getEnablePhotoDetailCount] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "LivePhotoAdapter"

    return-object v0
.end method

.method public getMediumOpList([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;
    .locals 1
    .parameter "medium"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Medium;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackgroundDownloadInProgress()Z
    .locals 3

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v2, :cond_0

    move v1, v0

    .line 296
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 292
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isImageDownloadInProgress()Z

    move-result v0

    move v1, v0

    .line 296
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onErrorCommentCount(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 281
    return-void
.end method

.method public onErrorNoPhotoInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 277
    return-void
.end method

.method public onErrorNoTagList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 285
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 120
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onMessageHandler(Landroid/os/Message;)V

    .line 122
    :goto_0
    return-void

    .line 84
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 87
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 90
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestCommentCount(Landroid/os/Message;)V

    goto :goto_0

    .line 93
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestListTag(Landroid/os/Message;)V

    goto :goto_0

    .line 96
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 99
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncCommentCount(Landroid/os/Message;)V

    goto :goto_0

    .line 102
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncListTag(Landroid/os/Message;)V

    goto :goto_0

    .line 105
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 108
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onErrorNoPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 111
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onErrorCommentCount(Landroid/os/Message;)V

    goto :goto_0

    .line 114
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onErrorNoTagList(Landroid/os/Message;)V

    goto :goto_0

    .line 117
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onNotifyDataSetChange()V

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x2766 -> :sswitch_8
        0x2768 -> :sswitch_9
        0x2769 -> :sswitch_a
        0x4e31 -> :sswitch_3
        0x4e33 -> :sswitch_2
        0x4e34 -> :sswitch_1
        0x4e35 -> :sswitch_0
        0x4e8a -> :sswitch_4
        0x4e8d -> :sswitch_b
        0x4e91 -> :sswitch_6
        0x4e93 -> :sswitch_5
        0x4e94 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 67
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 68
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onPause()V

    .line 70
    return-void
.end method

.method public onRequestCommentCount(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 183
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCommentCount(Lcom/htc/opensense/social/data/Medium;)Z

    .line 185
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    return-void
.end method

.method public onRequestListTag(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 190
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 191
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTagList(Lcom/htc/opensense/social/data/Medium;)Z

    .line 193
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    return-void
.end method

.method public onRequestPhotoDetail(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 133
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 137
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 139
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #bundle:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 140
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v2, "index_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    if-ne v2, v3, :cond_3

    .line 147
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #bundle:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 148
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v2, "index_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    .line 151
    :cond_3
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    .line 155
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getEnableOpenSenseDetailCount()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 159
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    if-ne v5, v2, :cond_5

    .line 160
    :cond_4
    const/16 v2, 0x4e34

    invoke-virtual {p0, v2, v0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 161
    :cond_5
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    if-ne v5, v2, :cond_1

    .line 162
    :cond_6
    const/16 v2, 0x4e31

    invoke-virtual {p0, v2, v0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 158
    :cond_7
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public onRequestPhotoInfo(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 175
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo(Ljava/lang/String;)Z

    .line 177
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onResume()V

    .line 43
    const/4 v0, 0x0

    .line 46
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48
    const-string v1, "LivePhotoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LivePhotoAdapter][onResume]: Can\'t get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getEnableOpenSenseDetailCount()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 53
    const/16 v1, 0x4e40

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 54
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    if-ne v3, v1, :cond_3

    .line 55
    :cond_2
    const/16 v1, 0x4e34

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 56
    :cond_3
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    if-ne v3, v1, :cond_0

    .line 57
    :cond_4
    const/16 v1, 0x4e31

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 52
    :cond_5
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public onSyncCommentCount(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 216
    const-string v3, "LivePhotoAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skyer [HTCAlbum][LivePhotoAdapter][onSyncCommentCount]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 218
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 219
    .local v2, nCommentCount:I
    const/4 v0, 0x0

    .line 221
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_0

    .line 223
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    const-string v3, "comment_update"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 226
    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setCommentCount(I)V

    .line 231
    :cond_0
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 232
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoDetail(Landroid/os/Message;)V

    .line 233
    return-void
.end method

.method public onSyncDownLoadStatus()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onSyncListTag(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 236
    const-string v3, "LivePhotoAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skyer [HTCAlbum][LivePhotoAdapter][onSyncListTag]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 238
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 240
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_0

    .line 242
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v2, 0x0

    .line 245
    .local v2, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const-string v3, "tag_update"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTags(Ljava/util/ArrayList;)V

    .line 253
    .end local v2           #faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    :cond_0
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 254
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoDetail(Landroid/os/Message;)V

    .line 255
    return-void
.end method

.method public onSyncPhotoDetail(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 258
    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    if-eqz v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const-string v1, "LivePhotoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skyer [HTCAlbum][LivePhotoAdapter][onSyncPhotoDetail]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "index_id"

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const/16 v1, 0x4e94

    invoke-virtual {p0, v1, v0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 267
    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    if-eq v1, v2, :cond_0

    .line 269
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "index_id"

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const/16 v1, 0x4e35

    invoke-virtual {p0, v1, v0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncPhotoInfo(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 196
    const-string v2, "LivePhotoAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skyer [HTCAlbum][LivePhotoAdapter][onSyncPhotoInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 198
    .local v1, aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v0, 0x0

    .line 199
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_1

    .line 201
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setName(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDescription(Ljava/lang/String;)V

    .line 205
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDetailed(Z)V

    .line 208
    :cond_0
    const-string v2, "LivePhotoAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapter][onSyncPhotoInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_1
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 212
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoDetail(Landroid/os/Message;)V

    .line 213
    return-void
.end method

.method public onUnloadData()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "LivePhotoAdapter"

    const-string v1, "[HTCAlbum][LivePhotoAdapter][onUnloadData]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onPause()V

    .line 76
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDestroy()V

    .line 77
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUnloadData()V

    .line 78
    return-void
.end method
