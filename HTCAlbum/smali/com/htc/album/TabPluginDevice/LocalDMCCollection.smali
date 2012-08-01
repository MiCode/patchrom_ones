.class public Lcom/htc/album/TabPluginDevice/LocalDMCCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "LocalDMCCollection.java"


# static fields
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

    .line 34
    const-string v1, "com.htc.HTCAlbum.LOCA_DMC"

    const-string v2, "com.htc.HTCAlbum.LOCA_DMC"

    const-string v3, "com.htc.HTCAlbum.LOCA_DMC"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mCallerIntent:Landroid/content/Intent;

    .line 23
    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mPhotoIDs:[I

    .line 24
    iput v4, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    .line 25
    iput v4, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpIndex:I

    .line 38
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mCallerIntent:Landroid/content/Intent;

    .line 39
    const-string v1, "from_gallery"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, fromGallery:Z
    invoke-virtual {p0, p2, v0}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->readData(Landroid/content/Intent;Z)V

    .line 42
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->saveData()V

    .line 43
    return-void
.end method


# virtual methods
.method public getPhotoIDs()[I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mPhotoIDs:[I

    return-object v0
.end method

.method public getStartupIndex()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpIndex:I

    return v0
.end method

.method public getStartupPhotoID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
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
    .line 86
    iget-object v5, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makePhotoDMCList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    .line 88
    .local v3, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_2

    .line 90
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    .line 91
    .local v4, size:I
    new-array v1, v4, [I

    .line 93
    .local v1, idList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 95
    invoke-interface {v3, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 96
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v1, v0

    .line 97
    iget v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    aget v5, v1, v0

    iget v6, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    if-ne v5, v6, :cond_0

    .line 100
    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpIndex:I

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mPhotoIDs:[I

    .line 107
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

    .line 47
    if-eqz p2, :cond_0

    .line 49
    const-string v1, "folder_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 50
    const-string v1, "key_bucket_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 51
    const-string v1, "key_folder_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 52
    const-string v1, "photoId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->setProperties(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 64
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "folder_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 58
    const-string v1, "key_bucket_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 59
    const-string v1, "key_folder_name"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public saveData()V
    .locals 4

    .prologue
    .line 112
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "folder_type"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v2, "key_bucket_id"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v2, "key_folder_name"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    return-void
.end method
