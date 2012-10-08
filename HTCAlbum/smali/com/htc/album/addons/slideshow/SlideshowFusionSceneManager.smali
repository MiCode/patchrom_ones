.class public Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
.super Ljava/lang/Object;
.source "SlideshowFusionSceneManager.java"


# instance fields
.field private final DEBUG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mCurrentPosition:I

.field private mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

.field private mDecoderHandler:Landroid/os/Handler;

.field private mFxView:Lcom/htc/fusion/fx/FxView;

.field private mInitialized:Z

.field private mOrientation:I

.field private mOrientationPrevious:I

.field private mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

.field protected mTransitionAnimation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    .line 15
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 16
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 17
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    .line 18
    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    .line 19
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 20
    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    .line 22
    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    .line 23
    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientationPrevious:I

    .line 27
    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->DEBUG:Z

    .line 28
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    .line 35
    return-void
.end method


# virtual methods
.method public create(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;I)Z
    .locals 3
    .parameter "activity"
    .parameter "view"
    .parameter "transitionAnimation"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 42
    iput p3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    .line 43
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionSceneManager][create]mTransitionAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create]TRANSITION_PHOTO_LS"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setTransitionAnimationID(I)V

    .line 81
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V

    .line 83
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create]TRANSITION_FALLING_PHOTO"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create]??"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    goto :goto_0
.end method

.method public deInit()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->deinit()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 194
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    .line 199
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 200
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 201
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    .line 203
    return-void
.end method

.method public getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    return-object v0
.end method

.method public init(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const v6, 0xc350

    const/4 v5, 0x1

    .line 89
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init] + "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 92
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_PHOTO_LS"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    const/4 v2, 0x0

    .line 98
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    .line 100
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    .line 102
    const/4 v3, 0x4

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 103
    iput-boolean v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    .line 104
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 105
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 106
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    .line 107
    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    .line 109
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v3, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x1b

    if-ge v1, v3, :cond_5

    .line 119
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    .line 120
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iput v1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    .line 121
    const/4 v3, 0x3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 122
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 123
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 124
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    .line 125
    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    .line 127
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    .line 129
    iput v7, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    .line 136
    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v3, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_2
    const/4 v3, 0x2

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    goto :goto_1

    .line 146
    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .end local v1           #i:I
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 148
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_FALLING_PHOTO"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    .line 151
    const/4 v0, 0x0

    .line 153
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    .line 154
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    .line 155
    iput v8, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 156
    iput-boolean v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    .line 157
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 158
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 159
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    .line 160
    iput v7, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    .line 162
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v3, :cond_4

    .line 164
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v3, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 166
    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 168
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .end local v2           #msg:Landroid/os/Message;
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    .line 184
    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    .line 185
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init] - "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void

    .line 171
    :cond_6
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    if-nez v3, :cond_7

    .line 173
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_FADE"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 175
    :cond_7
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    if-ne v3, v5, :cond_8

    .line 177
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_SLIDE"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 179
    :cond_8
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    if-ne v3, v8, :cond_5

    .line 181
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_ROTATE"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    return v0
.end method

.method public onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 2
    .parameter "index"
    .parameter "DI"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][onDecodeComplete] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 273
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][onDecodeComplete] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public setDecoder(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;II)V
    .locals 1
    .parameter "decoder"
    .parameter "size"
    .parameter "currentPosition"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 213
    invoke-virtual {p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    .line 214
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setMediaListSize(I)V

    .line 215
    iput p3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    .line 217
    return-void
.end method

.method public setIsPlaying(Z)V
    .locals 1
    .parameter "playing"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iput-boolean p1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mIsPlaying:Z

    .line 226
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 235
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientationPrevious:I

    .line 236
    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    .line 238
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientationPrevious:I

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setOrientation(I)V

    .line 252
    :cond_0
    return-void
.end method

.method public setPlaybackSpeed(I)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setPlaybackSpeed(I)V

    .line 222
    return-void
.end method
