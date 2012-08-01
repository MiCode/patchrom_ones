.class final Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;
.super Ljava/lang/Thread;
.source "AlbumCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/ObjectWriter/AlbumCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadCacheUpdate"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCancel:Z

.field mContext:Landroid/content/Context;

.field mMediaType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 2
    .parameter "cxt"
    .parameter "bundle"
    .parameter "mediaType"

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mCancel:Z

    .line 192
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    .line 193
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mBundle:Landroid/os/Bundle;

    .line 194
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mMediaType:I

    .line 197
    iput-object p1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mBundle:Landroid/os/Bundle;

    .line 199
    iput p3, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mMediaType:I

    .line 200
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mCancel:Z

    .line 226
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 204
    const-string v3, "AlbumCacher"

    const-string v4, "[HTCAlbum][AlbumCacher][updateCache]: Begin"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 206
    const-string v3, "AlbumCacher"

    const-string v4, "[HTCAlbum][AlbumCacher][updateCache]: null context or filename"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mBundle:Landroid/os/Bundle;

    const-string v4, "MimeTypeFilter"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, filter:Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v0}, Lcom/htc/album/helper/FolderManager;-><init>()V

    .line 212
    .local v0, collectionMgr:Lcom/htc/album/helper/FolderManager;
    iget-boolean v3, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mCancel:Z

    if-eq v3, v5, :cond_0

    .line 214
    iget-object v3, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mMediaType:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/htc/album/helper/FolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 216
    .local v2, newCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-boolean v3, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mCancel:Z

    if-eq v3, v5, :cond_0

    .line 218
    iget-object v3, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    const-string v4, "local"

    const-string v5, "local"

    const-string v6, ".flist"

    invoke-static {v3, v4, v5, v2, v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 221
    const-string v3, "AlbumCacher"

    const-string v4, "[HTCAlbum][AlbumCacher][updateCache]: End"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v0           #collectionMgr:Lcom/htc/album/helper/FolderManager;
    .end local v1           #filter:Ljava/lang/String;
    .end local v2           #newCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
