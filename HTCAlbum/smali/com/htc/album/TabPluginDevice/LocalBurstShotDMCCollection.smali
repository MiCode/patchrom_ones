.class public Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;
.super Lcom/htc/album/TabPluginDevice/LocalDMCCollection;
.source "LocalBurstShotDMCCollection.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "caller"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getBurstCoverImage()Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 5

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->getPhotoCount()I

    move-result v3

    .line 63
    .local v3, total:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    .line 64
    .local v2, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 66
    invoke-interface {v2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 74
    :goto_1
    return-object v4

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected readData(Landroid/content/Intent;Z)V
    .locals 3
    .parameter "caller"
    .parameter "fromGallery"

    .prologue
    .line 34
    const-string v1, "com.htc.HTCAlbum.BURST_SHOTS"

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 35
    if-eqz p2, :cond_0

    .line 37
    const-string v1, "key_burstshot_bucket_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 38
    const-string v1, "photoId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "key_burstshot_bucket_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    goto :goto_0
.end method

.method public saveData()V
    .locals 4

    .prologue
    .line 51
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_burstshot_bucket_id"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    return-void
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "givenName"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 28
    return-void
.end method
