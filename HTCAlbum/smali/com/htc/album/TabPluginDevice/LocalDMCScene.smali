.class public abstract Lcom/htc/album/TabPluginDevice/LocalDMCScene;
.super Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.source "LocalDMCScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        "C:",
        "Lcom/htc/album/TabPluginDevice/LocalDMCCollection;",
        ">",
        "Lcom/htc/album/TabPluginDLNA/DMCBaseScene",
        "<TADAPTER;>;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocalDMCScene"


# instance fields
.field private RES_720P:J

.field private mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field private mCurPlayingIndex:I

.field private mForceHDOutuput:Z

.field private mIsScreenCacheHD:Z

.field private mOutputTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingContentID:Ljava/lang/String;

.field private mTotalImages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 32
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    .line 33
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mTotalImages:I

    .line 34
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    .line 226
    const-wide/32 v0, 0xe1000

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->RES_720P:J

    .line 227
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    .line 228
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    .line 41
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 42
    return-void
.end method

.method private enableHDScreenQuality()Z
    .locals 8

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    const-wide/16 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 235
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->loadData()V

    .line 236
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 237
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    if-nez v3, :cond_0

    move-wide v1, v6

    .line 244
    .local v1, requestRes:J
    :goto_0
    cmp-long v3, v1, v6

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    .line 247
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    .line 249
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    if-eqz v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheTaskFactorParam(Landroid/content/Context;)I

    move-result v6

    iput v6, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 252
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    if-nez v3, :cond_2

    .line 254
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    .line 255
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v4, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 256
    const-string v3, "LocalDMCScene"

    const-string v5, "[enableHDScreenQuality] Enabled"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_2
    return v4

    .line 237
    .end local v1           #requestRes:J
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getRunningDMRRes(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .restart local v1       #requestRes:J
    :cond_1
    move v3, v5

    .line 244
    goto :goto_1

    :cond_2
    move v4, v5

    .line 261
    goto :goto_2
.end method

.method private setOutputPath(I)V
    .locals 17
    .parameter "index"

    .prologue
    .line 110
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    if-nez v1, :cond_1

    .line 148
    :cond_0
    return-void

    .line 113
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 114
    .local v9, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    if-eqz v9, :cond_0

    .line 117
    const/4 v14, 0x2

    .line 118
    .local v14, num:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mTotalImages:I

    move/from16 v16, v0

    .line 119
    .local v16, total:I
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    .line 120
    const/4 v14, 0x1

    .line 122
    :cond_2
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v14, :cond_0

    .line 124
    add-int p1, p1, v11

    rem-int v13, p1, v16

    .line 125
    .local v13, imageIdx:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    if-eqz v1, :cond_6

    .line 127
    const/4 v15, 0x0

    .line 128
    .local v15, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #path:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 131
    .restart local v15       #path:Ljava/lang/String;
    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 133
    :cond_4
    invoke-virtual {v9, v13}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 134
    .local v12, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 135
    .local v10, flag:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const/16 v2, 0xc

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetDMCCachePath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v15

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    .end local v10           #flag:I
    .end local v12           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v13, v15}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setOutputPath(ILjava/lang/String;)V

    .line 122
    .end local v15           #path:Ljava/lang/String;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 145
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setOutputPath(ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalDMCCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method protected getFullFilmViewExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 210
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v0, inValue:Landroid/os/Bundle;
    const-string v1, "TEXTURE_MAX_COUNT"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v1, "CACHE_SET"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v1, "FULL_MEM_CAHCE_SIZE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v1, "FULL_FILE_CAHCE_SIZE"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->enableHDScreenQuality()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "SPECIFIC_HQ_CACHE_FLAG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v1, "SPECIFIC_HQ_SIZE_LONG_SIDE"

    const/16 v2, 0x500

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v1, "SPECIFIC_HQ_SIZE_SHORT_SIDE"

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    :cond_0
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalDMCCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->getDisplayName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method protected abstract getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.end method

.method protected abstract getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
.end method

.method protected declared-synchronized getStartupIndex()I
    .locals 7

    .prologue
    .line 50
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalDMCCollection;

    move-result-object v0

    .line 51
    .local v0, collection:Lcom/htc/album/TabPluginDevice/LocalDMCCollection;,"TC;"
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->getStartupPhotoID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->getStartupIndex()I

    move-result v2

    .line 53
    .local v2, pos:I
    iput v2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    .line 55
    if-gez v2, :cond_0

    .line 57
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemIndex"

    iget-wide v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    long-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0           #collection:Lcom/htc/album/TabPluginDevice/LocalDMCCollection;,"TC;"
    .end local v2           #pos:I
    :goto_0
    monitor-exit p0

    return v2

    .line 63
    :catch_0
    move-exception v1

    .line 65
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_0

    .line 50
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 73
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mTotalImages:I

    .line 74
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 76
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mTotalImages:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    .line 77
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onBindAdapter()V

    .line 78
    return-void
.end method

.method protected onItemInfoChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 9
    .parameter "ctlInfo"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 296
    iget-wide v0, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 297
    .local v0, nTitleIndex:J
    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    long-to-int v2, v7

    .line 298
    .local v2, playingIndex:I
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v3, v6

    .line 299
    .local v3, validContentID:Z
    :goto_0
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    if-ne v2, v7, :cond_4

    :cond_1
    move v4, v6

    .line 301
    .local v4, validPlayingIndex:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 303
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onItemInfoChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 309
    :cond_2
    :goto_2
    return-void

    .end local v3           #validContentID:Z
    .end local v4           #validPlayingIndex:Z
    :cond_3
    move v3, v5

    .line 298
    goto :goto_0

    .restart local v3       #validContentID:Z
    :cond_4
    move v4, v5

    .line 299
    goto :goto_1

    .line 305
    .restart local v4       #validPlayingIndex:Z
    :cond_5
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 307
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onItemInfoChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    goto :goto_2
.end method

.method protected onLoadData(Landroid/content/Intent;Landroid/content/SharedPreferences;Z)V
    .locals 0
    .parameter "caller"
    .parameter "pref"
    .parameter "fromGallery"

    .prologue
    .line 188
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    return-void
.end method

.method protected onPlayNext()V
    .locals 4

    .prologue
    .line 332
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 333
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->setOutputPath(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPlayNext()V

    .line 343
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "LocalDMCScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPlayNext] Exception while setOutputPath, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPlayPrevious()V
    .locals 4

    .prologue
    .line 315
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 316
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->setOutputPath(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPlayPrevious()V

    .line 326
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 323
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "LocalDMCScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPlayPrevious] Exception while setOutputPath, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRendererConnected(Ljava/lang/String;)V
    .locals 6
    .parameter "renderer"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    const/4 v5, 0x0

    .line 270
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getRunningDMRRes(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 271
    .local v1, res:J
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 273
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1           #res:J
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRendererConnected(Ljava/lang/String;)V

    .line 286
    return-void

    .line 277
    .restart local v1       #res:J
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 280
    .end local v1           #res:J
    :catch_0
    move-exception v0

    .line 282
    .local v0, ex:Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    goto :goto_0
.end method

.method protected onSaveData(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .parameter "editor"

    .prologue
    .line 194
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalDMCCollection;

    move-result-object v0

    .line 195
    .local v0, collection:Lcom/htc/album/TabPluginDevice/LocalDMCCollection;,"TC;"
    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->saveData()V

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 1

    .prologue
    .line 102
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    .line 105
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onUnbindAdapter()V

    .line 106
    return-void
.end method

.method protected playItemAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 154
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->setOutputPath(I)V

    .line 155
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 156
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 157
    iput p1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay(J)V

    .line 164
    const-string v2, "LocalDMCScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[playItemAt] index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "LocalDMCScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[playItemAt] Exception while setOutputPath, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setDataSource(I)V
    .locals 5
    .parameter "selectedIndex"

    .prologue
    .line 83
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;TC;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalDMCCollection;

    move-result-object v0

    .line 84
    .local v0, collection:Lcom/htc/album/TabPluginDevice/LocalDMCCollection;,"TC;"
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->getPhotoIDs()[I

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource([II)V

    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->setOutputPath(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 94
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "LocalDMCScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDataSource] Exception while setOutputPath, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
