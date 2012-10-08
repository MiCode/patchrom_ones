.class public Lcom/htc/album/TabPluginDevice/BurstShotCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "BurstShotCollection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BurstShotCollection"


# instance fields
.field private mCoverFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "type"
    .parameter "bucketId"
    .parameter "displayName"
    .parameter "coverfilePath"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object p5, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverFilePath:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getCoverfilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverFilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 2
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 26
    if-nez p2, :cond_0

    .line 27
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 30
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 31
    const-string v0, "key_BurstShot_CoverFilePath"

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverFilePath:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method
