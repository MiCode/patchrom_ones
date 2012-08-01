.class public Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;
.super Ljava/lang/Object;
.source "DMCOnlineImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;,
        Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    }
.end annotation


# static fields
.field public static final MAX_SIZE_FILECACHE:I = 0xa00000


# instance fields
.field private final PRE_LOG:Ljava/lang/String;

.field private final STATE_DOWNLOADING:I

.field private final STATE_EMPTY:I

.field private final STATE_FINISH:I

.field private final TAG:Ljava/lang/String;

.field public mCacheManager:Lcom/htc/opensense/cache/CacheManager;

.field private mCacheState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

.field private mContext:Landroid/content/Context;

.field private mCurIndex:I

.field private mHandle:Landroid/os/Handler;

.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "DMCImageProvider"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "KA>>> [DMCProvider]"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->PRE_LOG:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    .line 37
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCurIndex:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->STATE_EMPTY:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->STATE_DOWNLOADING:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->STATE_FINISH:I

    .line 48
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mThread:Ljava/lang/Thread;

    .line 59
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 252
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$1;-><init>(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    .line 65
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    .line 68
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->initCacheManager()Z

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mThread:Ljava/lang/Thread;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->notifyDownloadSuccess(ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V

    return-void
.end method

.method private deinitCacheManager()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][deinitCacheManager]: deinit CacheManager. +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 247
    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][deinitCacheManager]: deinit CacheManager. -"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method

.method private initCacheManager()Z
    .locals 5

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, nCacheDir:Ljava/io/File;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v2, :cond_1

    .line 201
    const-string v2, "DMCImageProvider"

    const-string v3, "KA>>> [DMCProvider][deinitCacheManager]: init CacheManager. +"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/cache/CacheManager;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 207
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const/high16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/htc/opensense/cache/CacheManager;->setMaxSizeAllocatedInCurrentFolder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    const-string v2, "DMCImageProvider"

    const-string v3, "KA>>> [DMCProvider][deinitCacheManager]: init CacheManager. -"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 214
    if-eqz v1, :cond_0

    .line 215
    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][DMCOnlineImageProvider]: unable to create cache manager! PATH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    const-string v2, "DMCImageProvider"

    const-string v3, "KA>>> [DMCProvider][DMCOnlineImageProvider]: Cache is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "DMCImageProvider"

    const-string v3, "KA>>> [DMCProvider][DMCOnlineImageProvider]: Cache already exist !"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private notifyDownloadSuccess(ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V
    .locals 3
    .parameter "nPos"
    .parameter "cache"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    const v2, 0x220100

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p2, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelDownloadTasks()V
    .locals 6

    .prologue
    .line 170
    const-string v3, "DMCImageProvider"

    const-string v4, "KA>>> [DMCProvider][cancelDownloadTasks]: +"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    .line 174
    .local v2, nCancelCount:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;

    .line 178
    .local v0, cache:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    if-eqz v0, :cond_0

    .line 180
    iget v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget v4, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/cache/CacheManager;->stopDownloadPhotoByTaskId(I)V

    .line 184
    const/4 v3, 0x1

    iput v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    .line 185
    const/4 v3, 0x0

    iput v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v0           #cache:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v3, "DMCImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [DMCProvider][cancelDownloadTasks]: -, Cancel Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public cancelDownloadTasks(I)V
    .locals 0
    .parameter "nPos"

    .prologue
    .line 166
    return-void
.end method

.method public init(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 78
    .local v2, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v2, :cond_0

    .line 80
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;-><init>(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;)V

    .line 81
    .local v0, cache:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mID:Ljava/lang/String;

    .line 82
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUrl:Ljava/lang/String;

    .line 84
    const/4 v3, 0x1

    iput v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    .line 86
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v0           #cache:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    .end local v2           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onDestory]: +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->cancelDownloadTasks()V

    .line 110
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->deinitCacheManager()V

    .line 111
    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onDestory]: -"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onPause]: +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->cancelDownloadTasks()V

    .line 95
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->deinitCacheManager()V

    .line 96
    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onPause]: -"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onResume]: +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->initCacheManager()Z

    .line 103
    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onResume]: -"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public requestDecodeTasks(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 128
    return-void
.end method

.method public requestDownloadTasks(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 132
    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][requestDownloadTasks]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;

    .line 138
    .local v1, cache:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    iget v2, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 140
    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][requestDownloadTasks]: Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already download."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1, v1}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->notifyDownloadSuccess(ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V

    .line 160
    .end local v1           #cache:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local v1       #cache:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    :cond_1
    iget v2, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 146
    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][requestDownloadTasks]: Request Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " download."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "photo_id"

    iget-object v3, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "index_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v2, "photo_url"

    iget-object v3, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v3, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v2

    iput v2, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    goto :goto_0

    .line 156
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][requestDownloadTasks]: Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is downloading..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
