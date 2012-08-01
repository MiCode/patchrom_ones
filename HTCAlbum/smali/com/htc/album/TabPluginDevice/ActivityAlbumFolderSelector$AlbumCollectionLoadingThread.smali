.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
.super Ljava/lang/Thread;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCollectionLoadingThread"
.end annotation


# instance fields
.field private mCollectionMgr:Lcom/htc/album/helper/FolderManager;

.field private mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingRequest:Z

.field private final mLocker:Ljava/lang/Object;

.field private mSaveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveRequest:Z

.field private mStop:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "n"
    .parameter "uiHandler"

    .prologue
    const/4 v1, 0x0

    .line 921
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 922
    const-string v0, "AlbumCollectionLoadingThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 911
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    .line 923
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    .line 924
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

    .line 925
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    .line 926
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    .line 927
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    .line 928
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

    return-object v0
.end method

.method private onLoadData()V
    .locals 15

    .prologue
    const-wide/16 v13, 0xbb8

    const/4 v12, 0x5

    .line 996
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 1001
    .local v8, thisActivity:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
    const-string v9, "local"

    const-string v10, "local"

    const-string v11, ".flist"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1009
    .local v4, mTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const-string v9, "local"

    const-string v10, "local"

    const-string v11, ".fflist"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1013
    .local v3, isHidden:Z
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 1015
    :cond_0
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1057
    :goto_0
    return-void

    .line 1019
    :cond_1
    const/4 v9, 0x1

    if-ne v9, v3, :cond_6

    .line 1022
    const-string v9, "local"

    const-string v10, "local"

    const-string v11, ".fflist"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1026
    .local v2, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v0, 0x0

    .line 1027
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v1, 0x0

    .line 1028
    .local v1, hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v5, 0x0

    .line 1030
    .local v5, nCount:I
    if-eqz v2, :cond_2

    .line 1031
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1033
    :cond_2
    const/4 v6, 0x0

    .local v6, nHiddenIndex:I
    :goto_1
    if-le v5, v6, :cond_6

    .line 1035
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v1, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v1       #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v1, :cond_4

    .line 1033
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1038
    :cond_4
    const/4 v7, 0x0

    .local v7, nIndex:I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v7, :cond_3

    .line 1040
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 1041
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1042
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setVisibility(I)V

    .line 1038
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1047
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v1           #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v2           #hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .end local v5           #nCount:I
    .end local v6           #nHiddenIndex:I
    .end local v7           #nIndex:I
    :cond_6
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    if-nez v9, :cond_7

    .line 1048
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread$1;

    invoke-direct {v10, p0, v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread$1;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1056
    :cond_7
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private onSaveData(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p1, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 985
    .local v0, thisActivity:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
    if-eqz p1, :cond_0

    .line 986
    const-string v1, "local"

    const-string v2, "local"

    const-string v3, ".fflist"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 992
    :cond_0
    return-void
.end method


# virtual methods
.method public doLoading()V
    .locals 2

    .prologue
    .line 968
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 969
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    .line 970
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 971
    monitor-exit v1

    .line 972
    return-void

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doSave(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 975
    .local p1, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 976
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    .line 977
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveList:Ljava/util/ArrayList;

    .line 978
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 979
    monitor-exit v1

    .line 980
    return-void

    .line 979
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doStop()V
    .locals 2

    .prologue
    .line 961
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 962
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    .line 963
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 964
    monitor-exit v1

    .line 965
    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 931
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    if-nez v1, :cond_0

    .line 932
    new-instance v1, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v1}, Lcom/htc/album/helper/FolderManager;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    .line 935
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    if-nez v1, :cond_3

    .line 936
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 938
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    if-nez v1, :cond_1

    .line 939
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    if-ne v4, v1, :cond_2

    .line 948
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->onLoadData()V

    .line 949
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    .line 952
    :cond_2
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    if-ne v4, v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->onSaveData(Ljava/util/ArrayList;)V

    .line 954
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 945
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 958
    :cond_3
    return-void
.end method
