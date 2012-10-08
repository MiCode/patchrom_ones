.class public Lcom/htc/album/addons/SceneScrollCacheHandler;
.super Ljava/lang/Object;
.source "SceneScrollCacheHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
.implements Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;,
        Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SceneScrollCacheHandler"

.field private static final RETRY_TIMER:I = 0x1f4

.field private static final SCCSTATE_PREPARE_FOOTER_SNAPSHOT:I = 0xb

.field private static final SCCSTATE_PREPARE_HEADER_SNAPSHOT:I = 0xa

.field private static final SCCSTATE_UNKNOWN:I = -0x1


# instance fields
.field private mEnableCache:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsEnableDelayCache:Z

.field private mIsEnablePreciseFooterCache:Z

.field private mIsEnablePreciseHeaderCache:Z

.field private mIsFooterSnapShotLock:Z

.field private mIsHeaderSnapShotLock:Z

.field private mIsProgressBarOn:Z

.field private mScrollCacheListener:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

.field private mScrollState:I

.field private mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 3
    .parameter "sunnyScene"

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    .line 60
    const/16 v0, 0x4f4c

    iput v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    .line 62
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnableDelayCache:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsProgressBarOn:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsHeaderSnapShotLock:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    .line 67
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseHeaderCache:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseFooterCache:Z

    .line 69
    new-instance v0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollCacheListener:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    .line 402
    new-instance v0, Lcom/htc/album/addons/SceneScrollCacheHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$1;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 148
    const-string v0, "SceneScrollCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][SceneScrollCacheHandler]: identify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "SceneScrollCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][SceneScrollCacheHandler]: cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "SceneScrollCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][SceneScrollCacheHandler]: host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/SceneScrollCacheHandler;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/SceneScrollCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onCacheAttached(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    return-void
.end method

.method private onCacheAttached(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 3
    .parameter "nCacheType"

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 209
    :cond_0
    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    if-ne v0, v1, :cond_1

    .line 211
    const-string v0, "SceneScrollCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][onCacheAttached]: already in idle state skip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onShowControlBar(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;Z)V

    goto :goto_0
.end method

.method private onShowControlBar(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;Z)V
    .locals 4
    .parameter "nCacheType"
    .parameter "bShow"

    .prologue
    const/4 v3, 0x0

    .line 453
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v1, Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 454
    .local v1, scene:Lcom/htc/sunny2/scene/GalleryBaseScene;
    const/4 v0, 0x0

    .line 455
    .local v0, control:Lcom/htc/album/modules/ui/widget/BaseControlBar;
    if-eqz p2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    .line 478
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->invalidate()V

    goto :goto_0

    .line 485
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 487
    sget-object v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v2, p1, :cond_3

    .line 488
    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v0

    .line 505
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 506
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    goto :goto_0

    .line 492
    :cond_4
    sget-object v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-eq v2, p1, :cond_3

    .line 497
    sget-object v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v2, p1, :cond_3

    .line 499
    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    goto :goto_1
.end method

.method private takeSnapShot4Footer(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    const/4 v7, 0x1

    .line 305
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 307
    .local v2, sceneGallery:Lcom/htc/sunny2/scene/GalleryBaseScene;
    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 308
    .local v1, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->isExistSnapShot()Z

    move-result v0

    .line 313
    .local v0, bExistSnapShot:Z
    iget-boolean v5, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnableDelayCache:Z

    if-ne v7, v5, :cond_2

    if-nez v0, :cond_2

    iget-boolean v5, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    if-nez v5, :cond_2

    .line 316
    const-string v5, "SceneScrollCacheHandler"

    const-string v6, "[HTCAlbum][SceneScrollCacheHandler][takeSnapShot4Footer]: lock it... 500"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iput-boolean v7, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    .line 318
    const/16 v5, 0xb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 323
    .local v4, snapShot:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 325
    iget-object v5, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->getScreenCacheHandler(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v3

    .line 326
    .local v3, screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    sget-object v5, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v3, v5, v4, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->postScrollCacheUpdate(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    .line 331
    .end local v3           #screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    :cond_3
    iget-boolean v5, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    if-eqz v5, :cond_0

    .line 333
    const-string v5, "SceneScrollCacheHandler"

    const-string v6, "[HTCAlbum][SceneScrollCacheHandler][takeSnapShot4Footer]: unlock it: "

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    goto :goto_0
.end method

.method private takeSnapShot4Header(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 301
    return-void
.end method


# virtual methods
.method public enablePreciseFooterCache()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseFooterCache:Z

    .line 170
    return-void
.end method

.method public enablePreciseHeaderCache()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseHeaderCache:Z

    .line 166
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public isHeaderSnapShotLock()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsHeaderSnapShotLock:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    sget-object v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->UNKNOWN:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onShowControlBar(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;Z)V

    .line 226
    invoke-virtual {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onReleaseCache()V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 428
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 422
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollCacheListener:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-direct {p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Header(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    goto :goto_0

    .line 425
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollCacheListener:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-direct {p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Footer(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNotifyHeaderProgressBar(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsProgressBarOn:Z

    .line 143
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onReleaseCache()V

    goto :goto_0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 436
    :cond_0
    return-void
.end method

.method public onPrepareCache(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    .line 340
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v3, Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 341
    .local v3, sceneGallery:Lcom/htc/sunny2/scene/GalleryBaseScene;
    iget-object v5, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->getScreenCacheHandler(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v4

    .line 343
    .local v4, screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    const-string v5, "SceneScrollCacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SceneScrollCacheHandler][onPrepareCache]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v5, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 347
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->setStatusBarHeight(I)V

    .line 348
    iget-object v5, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 350
    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v2

    .line 354
    .local v2, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    if-eqz v2, :cond_1

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, bitmapHost:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->isExistSnapShot()Z

    move-result v5

    if-nez v5, :cond_0

    .line 359
    instance-of v5, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v5, :cond_0

    .line 360
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 362
    :cond_0
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 363
    if-eqz v1, :cond_1

    .line 365
    sget-object v5, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v4, v5, v1, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->postScrollCacheUpdate(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    .line 385
    .end local v1           #bitmapHost:Landroid/graphics/Bitmap;
    .end local v2           #hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    :cond_1
    :goto_0
    return-void

    .line 377
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Header(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    .line 383
    invoke-direct {p0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Footer(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    goto :goto_0
.end method

.method public onReleaseCache()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 173
    iget-boolean v4, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v4, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v4, "SceneScrollCacheHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneScrollCacheHandler][onReleaseCache]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->getScreenCacheHandler(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v3

    .line 179
    .local v3, screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 181
    .local v2, sceneGallery:Lcom/htc/sunny2/scene/GalleryBaseScene;
    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v3, v4, v7, v8}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->postScrollCacheDisplay(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    .line 182
    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v3, v4, v7, v8}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->postScrollCacheDisplay(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    .line 184
    iget-object v4, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v1

    .line 187
    .local v1, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->releaseSnapShot()V

    goto :goto_0

    .line 198
    .end local v1           #hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    :cond_2
    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 199
    .local v0, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->releaseSnapShot()V

    goto :goto_0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    :cond_0
    return-void
.end method

.method public onScrollIdle()V
    .locals 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 245
    :cond_0
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    .line 249
    sget-object v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->UNKNOWN:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onShowControlBar(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;Z)V

    goto :goto_0
.end method

.method public onScrolling()V
    .locals 2

    .prologue
    const/16 v1, 0x4f4e

    .line 388
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    if-eq v1, v0, :cond_0

    .line 395
    iput v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    .line 397
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollCacheListener:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onPrepareCache(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    goto :goto_0
.end method

.method public scrollListener()Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;Lcom/htc/album/addons/SceneScrollCacheHandler$1;)V

    return-object v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 414
    return-void
.end method

.method public uninitialize()V
    .locals 3

    .prologue
    .line 154
    const-string v0, "SceneScrollCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][uninitialize]: identify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "SceneScrollCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][uninitialize]: host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    .line 158
    return-void
.end method
