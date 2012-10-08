.class public abstract Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.super Ljava/lang/Object;
.source "SceneAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/IMediaList;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mDataBundle:Landroid/os/Bundle;

.field private mFlagListUpdate:I

.field private mIsDestroying:Z

.field protected mIsLoadInProgress:Z

.field protected mIsUnloaded:Z

.field private mSceneNotify:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;",
            ">;"
        }
    .end annotation
.end field

.field protected mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mActivity:Landroid/app/Activity;

    .line 30
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    .line 31
    iput v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    .line 32
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsLoadInProgress:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsDestroying:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    .line 36
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    .line 42
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mActivity:Landroid/app/Activity;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private appendUpdateFlag(I)V
    .locals 1
    .parameter "nFlag"

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    .line 225
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    .line 227
    return-void
.end method

.method private getUpdateFlag()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    return v0
.end method

.method private removeUpdateFlag(I)V
    .locals 2
    .parameter "nFlag"

    .prologue
    .line 230
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    .line 232
    return-void
.end method


# virtual methods
.method public addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V
    .locals 5
    .parameter "notify"

    .prologue
    .line 47
    const/4 v1, 0x0

    .local v1, szIdentity:Ljava/lang/String;
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 49
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneAdapter][addSceneDataChangeNotify]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    return-void
.end method

.method public enableBroadcastNotify()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public isDestroyingAdapter()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsDestroying:Z

    return v0
.end method

.method public isLoadingInProgress()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsLoadInProgress:Z

    return v0
.end method

.method public notifyDataChangedAt(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 261
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v4, v5, :cond_1

    .line 272
    :cond_0
    return-void

    .line 264
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 265
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    .local v0, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    .line 270
    .local v2, notify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;->notifyDataChangedAt(I)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .line 246
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v4, v5, :cond_1

    .line 257
    :cond_0
    return-void

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 250
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 251
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 254
    .local v0, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    .line 255
    .local v2, notify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public notifyDestroyingAdapter()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsDestroying:Z

    .line 75
    return-void
.end method

.method public onLoadData()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onLoadData]: begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->appendUpdateFlag(I)V

    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;-><init>(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    .line 106
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->start()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getUpdateFlag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->postTask(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onLoadData]: end... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method protected onLoadDataBegin()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsLoadInProgress:Z

    .line 187
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onNotifyUpdating(Z)V

    .line 188
    return-void
.end method

.method protected onLoadDataCancelled()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 202
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v0, v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onNotifyUpdating(Z)V

    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onLoadDataEnd]: notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->notifyDataSetChanged()V

    .line 217
    :goto_1
    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->appendUpdateFlag(I)V

    .line 218
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsLoadInProgress:Z

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onLoadDataEnd]: onNotifyUpdateComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onNotifyUpdateComplete()V

    goto :goto_1
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 192
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onNotifyUpdateComplete()V
    .locals 6

    .prologue
    .line 292
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v4, v5, :cond_1

    .line 304
    :cond_0
    return-void

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 296
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    .local v0, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    .line 301
    .local v2, notify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;->onNotifyUpdateComplete()V

    goto :goto_0
.end method

.method public onNotifyUpdating(Z)V
    .locals 6
    .parameter "bIsLoading"

    .prologue
    .line 276
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v4, v5, :cond_1

    .line 287
    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 280
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 281
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    .local v0, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    .line 285
    .local v2, notify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;->onNotifyUpdating(Z)V

    goto :goto_0
.end method

.method public onUnloadData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onUnloadData]: begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    .line 120
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    .line 121
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    .line 122
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->postStop()V

    .line 126
    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    .line 128
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onUnloadData]: end..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public removeSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V
    .locals 4
    .parameter "notify"

    .prologue
    .line 58
    const/4 v1, 0x0

    .local v1, szIdentity:Ljava/lang/String;
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 60
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    .line 61
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 64
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    return-void
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setIntermediateDataBundle(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    .line 138
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->appendUpdateFlag(I)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadData()V

    .line 142
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneAdapter][setIntermediateDataBundle]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getUpdateFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
