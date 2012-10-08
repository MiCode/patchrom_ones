.class public Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;
.super Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;
.source "SlideshowFusionSceneFallingPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;
    }
.end annotation


# instance fields
.field protected final FALLING_SPEED:F

.field private final LOCK:Ljava/lang/Object;

.field private final LOG_TAG:Ljava/lang/String;

.field protected final MAX_ITEM:I

.field protected final NUM_DEFORMATION:I

.field protected final NUM_PHOTO_SAMPLE:I

.field protected final Z_FIGHTING_OFFSET:F

.field protected final hitBoxPrefix:Ljava/lang/String;

.field protected mAryImage:[Lcom/htc/fusion/fx/FxImage;

.field protected mAryImageIsPortrait:[Z

.field protected mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

.field protected mAryPhotoItem_ScenePausedFrame:[F

.field protected mAryPhotoItem_Scene_Falling_PausedFrame:[F

.field protected mCurrentUsingShuffleListIndex:I

.field protected mHitBoxMessageListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
            ">;"
        }
    .end annotation
.end field

.field protected mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field protected mIndex:I

.field protected mMovingSpeed:F

.field protected mOrientation:I

.field protected mRand:Ljava/util/Random;

.field protected mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTableTimelineControlPausedFrame:F

.field protected final photoItemPrefix:Ljava/lang/String;

.field protected final sceneContainerPrefix:Ljava/lang/String;

.field protected final tableTimelinePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x6

    .line 26
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;-><init>()V

    .line 28
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOCK:Ljava/lang/Object;

    .line 31
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->MAX_ITEM:I

    .line 32
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->NUM_DEFORMATION:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->NUM_PHOTO_SAMPLE:I

    .line 34
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->FALLING_SPEED:F

    .line 35
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->Z_FIGHTING_OFFSET:F

    .line 37
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    .line 39
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    .line 40
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mOrientation:I

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mRand:Ljava/util/Random;

    .line 43
    const-string v0, "tableLooping"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->tableTimelinePrefix:Ljava/lang/String;

    .line 44
    const-string v0, "hitbox.menu"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->hitBoxPrefix:Ljava/lang/String;

    .line 45
    const-string v0, "scenecontainer"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->sceneContainerPrefix:Ljava/lang/String;

    .line 46
    const-string v0, "Port/photoItem"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->photoItemPrefix:Ljava/lang/String;

    .line 48
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControlPausedFrame:F

    .line 50
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 52
    new-array v0, v1, [Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    .line 53
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem_ScenePausedFrame:[F

    .line 54
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem_Scene_Falling_PausedFrame:[F

    .line 55
    new-array v0, v1, [Lcom/htc/fusion/fx/FxImage;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImage:[Lcom/htc/fusion/fx/FxImage;

    .line 56
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImageIsPortrait:[Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mShuffleList:Ljava/util/ArrayList;

    .line 59
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mCurrentUsingShuffleListIndex:I

    .line 61
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mHitBoxMessageListener:Lcom/htc/fusion/fx/MessageListener;

    .line 434
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setMovingSpeed(F)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 538
    return-void
.end method


# virtual methods
.method public buildShuffleList()V
    .locals 3

    .prologue
    .line 426
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mShuffleList:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 429
    .local v0, originalListLastItem:I
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 431
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mShuffleList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 432
    return-void
.end method

.method public deinit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 144
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mShuffleList:Ljava/util/ArrayList;

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aput-object v2, v1, v0

    .line 148
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImage:[Lcom/htc/fusion/fx/FxImage;

    aput-object v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 151
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 152
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->deinit()V

    .line 153
    return-void
.end method

.method public getScenePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/htc/album/addons/slideshow/CustomizedSettings;->getScenePath(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V
    .locals 7
    .parameter "activity"
    .parameter "view"

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V

    .line 105
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "tableLooping"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 106
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "hitbox.menu"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 107
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 108
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 109
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mHitBoxMessageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v4, v5}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, photoItemIndex:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-gt v0, v4, :cond_1

    .line 114
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, str:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_2
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    new-instance v6, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-direct {v6, p0, v4, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;Lcom/htc/fusion/fx/controls/FxSceneContainer;I)V

    aput-object v6, v5, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scenecontainerL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    goto :goto_2

    .line 123
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scenecontainerR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    goto :goto_2

    .line 112
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v1           #j:I
    :cond_1
    const/4 v0, 0x1

    :goto_3
    const/4 v4, 0x6

    if-gt v0, v4, :cond_2

    .line 134
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->buildShuffleList()V

    .line 137
    return-void

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 4
    .parameter "index"
    .parameter "DI"

    .prologue
    const/4 v3, 0x1

    .line 304
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onDecodeComplete] + , index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v0, :pswitch_data_0

    .line 367
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 369
    iget-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    .line 374
    :cond_1
    const/4 p2, 0x0

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onDecodeComplete] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_3
    return-void

    .line 309
    :pswitch_0
    if-ltz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onDecodeComplete]decodeMode = fp"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImage:[Lcom/htc/fusion/fx/FxImage;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/fusion/fx/FxImageManager;->createImage(Landroid/graphics/Bitmap;)Lcom/htc/fusion/fx/FxImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 319
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImage:[Lcom/htc/fusion/fx/FxImage;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImage:[Lcom/htc/fusion/fx/FxImage;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxImage;->applyStaticAntiAlias(I)Z

    .line 323
    :cond_4
    iget-boolean v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isPortrait:Z

    if-eqz v0, :cond_5

    .line 325
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImageIsPortrait:[Z

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    aput-boolean v3, v0, v1

    .line 333
    :goto_1
    iget-boolean v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    if-eqz v0, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->onGoNext()V

    goto :goto_0

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryImageIsPortrait:[Z

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 339
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->onGoPrevious()V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onGoNext()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onGoNext] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$4;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$4;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)V

    invoke-static {v0}, Lcom/htc/fusion/fx/FxRunAsync;->Execute(Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;)Ljava/util/concurrent/Future;

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onGoNext] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void

    .line 295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoPause()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onGoPause] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIsPlaying:Z

    .line 230
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)V

    invoke-static {v0}, Lcom/htc/fusion/fx/FxRunAsync;->Execute(Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;)Ljava/util/concurrent/Future;

    .line 268
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onGoPause] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void

    .line 268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoPlay()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIsPlaying:Z

    .line 163
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)V

    invoke-static {v0}, Lcom/htc/fusion/fx/FxRunAsync;->Execute(Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;)Ljava/util/concurrent/Future;

    .line 218
    :cond_0
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGoPrevious()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public setOrientation(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 382
    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mOrientation:I

    .line 384
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_2

    .line 386
    if-ne p1, v2, :cond_1

    .line 388
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "L_zoom"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 402
    if-ne p1, v2, :cond_3

    .line 404
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][setOrientation]mTableTimelineControl, L_looping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "L_looping"

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 413
    :goto_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 422
    :cond_0
    :goto_2
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "P_zoom"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][setOrientation]mScene is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][setOrientation]mTableTimelineControl, P_looping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "P_looping"

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto :goto_1

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][setOrientation]mTableTimelineControl is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setPlaybackSpeed(I)V
    .locals 3
    .parameter "speedLevel"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][setPlaybackSpeed] + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mPlaybackSpeed:I

    .line 545
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mPlaybackSpeed:I

    packed-switch v0, :pswitch_data_0

    .line 559
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][setPlaybackSpeed] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void

    .line 548
    :pswitch_1
    const v0, 0x3fa66666

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->setMovingSpeed(F)V

    goto :goto_0

    .line 551
    :pswitch_2
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->setMovingSpeed(F)V

    goto :goto_0

    .line 554
    :pswitch_3
    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->setMovingSpeed(F)V

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
