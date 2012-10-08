.class public Lcom/htc/album/TabPluginDevice/LocalDMCCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "LocalDMCCollection.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "LocalDMCCollection"

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected mCallerIntent:Landroid/content/Intent;

.field protected mPhotoIDs:[I

.field protected mStartUpIndex:I

.field protected mStartUpPhotoID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "caller"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 35
    const-string v1, "com.htc.HTCAlbum.LOCA_DMC"

    const-string v2, "com.htc.HTCAlbum.LOCA_DMC"

    const-string v3, "com.htc.HTCAlbum.LOCA_DMC"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mCallerIntent:Landroid/content/Intent;

    .line 24
    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mPhotoIDs:[I

    .line 25
    iput v4, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    .line 26
    iput v4, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpIndex:I

    .line 39
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mCallerIntent:Landroid/content/Intent;

    .line 40
    const-string v1, "from_gallery"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    .local v0, fromGallery:Z
    invoke-virtual {p0, p2, v0}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->readData(Landroid/content/Intent;Z)V

    .line 43
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->saveData()V

    .line 44
    return-void
.end method


# virtual methods
.method protected doMakeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 2
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 85
    const-string v0, "LocalDMCCollection"

    const-string v1, "[LocalDMCCollection][domakeList]"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makePhotoDMCList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoIDs()[I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mPhotoIDs:[I

    return-object v0
.end method

.method public getStartupIndex()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpIndex:I

    return v0
.end method

.method public getStartupPhotoID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 7
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->doMakeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    .line 96
    .local v3, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_2

    .line 98
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    .line 99
    .local v4, size:I
    new-array v1, v4, [I

    .line 101
    .local v1, idList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 103
    invoke-interface {v3, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 104
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v1, v0

    .line 105
    iget v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    aget v5, v1, v0

    iget v6, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    if-ne v5, v6, :cond_0

    .line 108
    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpIndex:I

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mPhotoIDs:[I

    .line 115
    .end local v0           #i:I
    .end local v1           #idList:[I
    .end local v4           #size:I
    :cond_2
    return-object v3
.end method

.method protected readData(Landroid/content/Intent;Z)V
    .locals 3
    .parameter "caller"
    .parameter "fromGallery"

    .prologue
    const/4 v2, 0x0

    .line 48
    if-eqz p2, :cond_0

    .line 50
    const-string v1, "folder_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 51
    const-string v1, "key_bucket_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 52
    const-string v1, "key_folder_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 53
    const-string v1, "photoId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->setProperties(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 65
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "folder_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 59
    const-string v1, "key_bucket_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 60
    const-string v1, "key_folder_name"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public saveData()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "folder_type"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v2, "key_bucket_id"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v2, "key_folder_name"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    return-void
.end method
