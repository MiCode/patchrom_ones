.class public Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
.super Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.source "AdapterBurstPhoto.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterBurstPhoto"

.field static final NAME:Ljava/lang/String; = "AdapterBurstPhoto"


# instance fields
.field private mCollection:Lcom/htc/album/modules/collection/Collection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"
    .parameter "collection"

    .prologue
    .line 25
    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getSupportedMediaTypes()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 26
    invoke-direct {p0, p3}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->init(Lcom/htc/album/modules/collection/Collection;)V

    .line 27
    return-void
.end method

.method private init(Lcom/htc/album/modules/collection/Collection;)V
    .locals 2
    .parameter "collection"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 31
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/Collection;->enableDataCache(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public getCollectionInfo()Lcom/htc/album/modules/collection/Collection;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, nCount:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AdapterBurstPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount happens exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "AdapterBurstPhoto"

    return-object v0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 103
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 107
    .end local v0           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_0
    return-object v0

    .restart local v0       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 6
    .parameter "itemIndex"

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, data:Lcom/htc/sunny2/IMediaData;
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/IMediaData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "AdapterBurstPhoto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem itemIndex= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " happens exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    .line 56
    const-string v2, "AdapterBurstPhoto"

    const-string v3, "[onLoadDataInBackground]: begin..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 60
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 61
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 62
    const-string v2, "AdapterBurstPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onLoadDataInBackground]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object p1
.end method

.method public onUnloadData()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "AdapterBurstPhoto"

    const-string v1, "[onUnloadData]: start"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onUnloadData()V

    .line 40
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->release()V

    .line 43
    :cond_0
    return-void
.end method

.method public queryPosByUri(Landroid/net/Uri;)I
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v7, -0x1

    .line 121
    const-string v8, "AdapterBurstPhoto"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "queryPosByUri uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-nez p1, :cond_1

    move v6, v7

    .line 149
    :cond_0
    :goto_0
    return v6

    .line 125
    :cond_1
    const/4 v6, -0x1

    .line 126
    .local v6, position:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    .line 127
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v4, :cond_2

    move v6, v7

    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    .line 130
    .local v5, listCount:I
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    .local v0, absFileType:Z
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, comparePath:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 134
    invoke-interface {v4, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 135
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 136
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 137
    move v6, v2

    .line 139
    goto :goto_0

    .line 131
    .end local v1           #comparePath:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 142
    .restart local v1       #comparePath:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 143
    move v6, v2

    .line 145
    goto :goto_0

    .line 133
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public final releaseListDataCache()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->releaseListDataCache()V

    .line 112
    return-void
.end method

.method public reloadData()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "AdapterBurstPhoto"

    const-string v1, "[reloadData]: start"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    .line 51
    :cond_0
    return-void
.end method
