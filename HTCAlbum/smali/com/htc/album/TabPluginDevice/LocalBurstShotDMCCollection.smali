.class public Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;
.super Lcom/htc/album/TabPluginDevice/LocalDMCCollection;
.source "LocalBurstShotDMCCollection.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "LocalBurstShotDMCCollection"


# instance fields
.field private mCoverFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "caller"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    const-string v0, "LocalBurstShotDMCCollection"

    const-string v1, "[LocalBurstShotDMCCollection]"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected doMakeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 36
    const-string v0, "LocalBurstShotDMCCollection"

    const-string v1, "[LocalBurstShotDMCCollection][domakeList]"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-nez p2, :cond_0

    .line 38
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 41
    .restart local p2
    :cond_0
    const-string v0, "key_BurstShot_CoverFilePath"

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->mCoverFilePath:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getBurstCoverImage()Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 5

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->getPhotoCount()I

    move-result v3

    .line 84
    .local v3, total:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    .line 85
    .local v2, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 87
    invoke-interface {v2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 95
    :goto_1
    return-object v4

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected readData(Landroid/content/Intent;Z)V
    .locals 4
    .parameter "caller"
    .parameter "fromGallery"

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v1, "com.htc.HTCAlbum.BURST_SHOTS"

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 51
    if-eqz p2, :cond_0

    .line 53
    const-string v1, "key_burstshot_bucket_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 54
    const-string v1, "photoId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->mStartUpPhotoID:I

    .line 55
    const-string v1, "key_BurstShot_CoverFilePath"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->mCoverFilePath:Ljava/lang/String;

    .line 63
    :goto_0
    const-string v1, "LocalBurstShotDMCCollection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[readData]mCoverFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->mCoverFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "key_burstshot_bucket_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 61
    const-string v1, "key_BurstShot_CoverFilePath"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->mCoverFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public saveData()V
    .locals 5

    .prologue
    .line 70
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_burstshot_bucket_id"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string v2, "key_BurstShot_CoverFilePath"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->mCoverFilePath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string v2, "LocalBurstShotDMCCollection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[saveData]mCoverFilePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->mCoverFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "givenName"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 31
    return-void
.end method
