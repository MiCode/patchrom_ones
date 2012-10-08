.class public Lcom/htc/album/addons/slideshow/SlideShow;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "SlideShow.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;,
        Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;,
        Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonPrev;,
        Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonNext;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SLIDESHOW_INTERVAL:I = 0x3

.field private static final DEFAULT_TRANSITION_INTERVAL:I = 0x320

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I = 0x4

.field public static final ORIENTATION_ACTUAL_STR:Ljava/lang/String; = "1"

.field private static final ORIENTATION_BESTFIT:I = 0x0

.field private static final SLIDESHOW_ERROR_DIALOG:I = 0x1b669

.field private static final SLIDESHOW_MUSIC_DIALOG:I = 0x36870

.field private static final TIMEOUT_HOOKKEY_DOUBLE_CLICK_CHECK:I = 0x1f4

.field public static final TRANSITION_DEFAULT:I = 0x6

.field private static final mMusicPickerRequestCode:I = 0xea60


# instance fields
.field private final DIRECTION_BACKWARD:Z

.field private final DIRECTION_FORWARD:Z

.field private final MUSIC_STATE_PAUSE:I

.field private final MUSIC_STATE_PLAYING:I

.field private final MUSIC_STATE_STOP:I

.field private final SPECIFY_DIRECTION:Z

.field private mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

.field private mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field mBackupIsPlayingFlag:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBucketId:Ljava/lang/String;

.field private mControlBarFileIndicator:Landroid/widget/TextView;

.field private mControlBarFolder:Landroid/widget/TextView;

.field private mCurDirection:Z

.field private mCurFolderBucketId:Ljava/lang/String;

.field private mCurFolderIndicator:Ljava/lang/String;

.field private mCurFolderName:Ljava/lang/String;

.field private mCurMode:Ljava/lang/String;

.field private mCurMoveNext:Z

.field private mCurTransitionAnimIndex:I

.field private mCurrentPosition:I

.field private mEnableMusic:Z

.field private mEnterPosition:I

.field private mFolderType:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mIsControlShowing:Z

.field private mIsHeadsetHook:Z

.field private mIsPlaying:Z

.field mIsSettingShown:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicState:I

.field private mNextImageRunnable:Ljava/lang/Runnable;

.field private mNoUpdateControlBar:Z

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrientation:I

.field private mPosted:Z

.field private mRepeat:Z

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field private mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

.field private mSlideshowInterval:I

.field private mStopAndLeave:Z

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mTitle:Landroid/widget/RelativeLayout;

.field private mTransitionAnimIndex:I

.field private mUriMusic:Landroid/net/Uri;

.field private mWasControlShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 120
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->SPECIFY_DIRECTION:Z

    .line 121
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->DIRECTION_FORWARD:Z

    .line 122
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->DIRECTION_BACKWARD:Z

    .line 129
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 130
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    .line 131
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    .line 132
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsHeadsetHook:Z

    .line 134
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->MUSIC_STATE_STOP:I

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->MUSIC_STATE_PLAYING:I

    .line 136
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->MUSIC_STATE_PAUSE:I

    .line 139
    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    .line 140
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderBucketId:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    .line 146
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mWasControlShowing:Z

    .line 147
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    .line 148
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNoUpdateControlBar:Z

    .line 154
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 155
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    .line 157
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 164
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mPosted:Z

    .line 165
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 166
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    .line 174
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsSettingShown:Z

    .line 175
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBackupIsPlayingFlag:Z

    .line 179
    new-instance v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    .line 182
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurDirection:Z

    .line 183
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMoveNext:Z

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurTransitionAnimIndex:I

    .line 188
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTitle:Landroid/widget/RelativeLayout;

    .line 189
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFolder:Landroid/widget/TextView;

    .line 190
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFileIndicator:Landroid/widget/TextView;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    .line 198
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 200
    new-instance v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    .line 682
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$1;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1253
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$2;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    .line 1311
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$3;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    .line 1872
    return-void
.end method

.method private ReleaseBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "aView"

    .prologue
    .line 1376
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1377
    .local v1, dw:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 1378
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1379
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1381
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1385
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private ReleaseNextViewOnSwitcher()V
    .locals 2

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .line 1390
    .local v0, aView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1392
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #aView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseBitmap(Landroid/widget/ImageView;)V

    .line 1394
    :cond_0
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1544
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1546
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][requestAudioFocus]: Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1548
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    .line 1549
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    .line 1551
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsHeadsetHook:Z

    .line 1555
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPrevious()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/album/addons/slideshow/SlideShow;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPlay()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updateControlBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/SlideShow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/addons/slideshow/SlideShow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/addons/slideshow/SlideShow;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/album/addons/slideshow/SlideShow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/album/addons/slideshow/SlideShow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    return-void
.end method

.method private attachMediaController()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x0

    .line 414
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/slideshow/SlideShowController;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 416
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->setControllerEventListener(Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;)V

    .line 418
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0x27

    const v4, 0x20800c0

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 419
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0x24

    const v4, 0x20800b6

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 420
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0xf

    const v4, 0x20800b4

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 422
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 425
    .local v6, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 426
    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 427
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 429
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 430
    .local v7, rootLayout:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v7, v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 433
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    new-instance v1, Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonNext;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonNext;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    new-instance v2, Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonPrev;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonPrev;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 434
    return-void
.end method

.method private cancelPost()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mPosted:Z

    .line 1005
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 619
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    if-nez v1, :cond_0

    .line 621
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 622
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 623
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_2

    .line 628
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v0

    .line 629
    .local v0, index:I
    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/4 v0, -0x1

    .line 630
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    .line 631
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 635
    .end local v0           #index:I
    :goto_0
    return-void

    .line 634
    :cond_2
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][initLayout]: initLayout NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTransAnimChange()Z
    .locals 5

    .prologue
    .line 552
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_transition_setting"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, transition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 556
    .local v0, nTransition:I
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 558
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][Slideshow][retrieveSettings]: Stop music by Change Transition."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v2, 0x1

    .line 562
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private launchSetting()V
    .locals 3

    .prologue
    .line 727
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 728
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->startActivity(Landroid/content/Intent;)V

    .line 731
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsSettingShown:Z

    .line 732
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBackupIsPlayingFlag:Z

    .line 733
    return-void
.end method

.method private loadImage(ZZ)V
    .locals 7
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    const/4 v5, 0x1

    .line 1070
    iget-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    if-eqz v4, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 1075
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 1079
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1082
    :cond_3
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 1085
    .local v3, nNewPosition:I
    :cond_4
    if-eqz p2, :cond_c

    move v4, v5

    :goto_1
    add-int/2addr v3, v4

    .line 1086
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 1087
    const/4 v3, 0x0

    .line 1088
    :cond_5
    if-gez v3, :cond_6

    .line 1089
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1090
    :cond_6
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->getShuffleIndex(I)I

    move-result v6

    invoke-interface {v4, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 1091
    if-eqz v1, :cond_0

    .line 1095
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    if-ne v4, v5, :cond_8

    :cond_7
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-ne v3, v4, :cond_4

    .line 1097
    :cond_9
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 1112
    .end local v3           #nNewPosition:I
    :cond_a
    sget-object v4, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "th image."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->updateTitlebar(I)V

    .line 1114
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->retrieveSettings()V

    .line 1115
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideShow;->setTransitionAnim(ZZ)V

    .line 1116
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updatePrevNextButtons()V

    .line 1118
    const/4 v2, 0x0

    .line 1121
    .local v2, mTempBmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 1124
    iget-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v4, :cond_b

    .line 1125
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideshowInterval:I

    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    .line 1126
    :cond_b
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v4}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideshowInterval:I

    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    goto/16 :goto_0

    .line 1085
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #mTempBmp:Landroid/graphics/Bitmap;
    .restart local v3       #nNewPosition:I
    :cond_c
    const/4 v4, -0x1

    goto/16 :goto_1
.end method

.method private loadNextImage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1273
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1274
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 1275
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 1278
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 1279
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 1281
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->loadImage(ZZ)V

    .line 1282
    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    .prologue
    .line 1285
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-gez v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 1287
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 1290
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 1291
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 1293
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->loadImage(ZZ)V

    .line 1294
    return-void
.end method

.method private onControlbarNext()V
    .locals 2

    .prologue
    .line 2034
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2035
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    .line 2037
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 2038
    return-void
.end method

.method private onControlbarPause()V
    .locals 1

    .prologue
    .line 2020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mWasControlShowing:Z

    .line 2021
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onPauseTarget()V

    .line 2022
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 2023
    :cond_0
    return-void
.end method

.method private onControlbarPlay()V
    .locals 1

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onPlayTarget()Z

    .line 2028
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 2029
    :cond_0
    return-void
.end method

.method private onControlbarPrevious()V
    .locals 1

    .prologue
    .line 2042
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-lez v0, :cond_1

    .line 2043
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadPreviousImage()V

    .line 2045
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 2046
    return-void
.end method

.method private post(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 1008
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mPosted:Z

    .line 1012
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1518
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1519
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    .line 1521
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 1523
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 1525
    new-instance v1, Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;Lcom/htc/album/addons/slideshow/SlideShow$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    .line 1528
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][requestAudioFocus]: Request audio focus"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1531
    .local v0, ret:I
    if-eq v0, v4, :cond_2

    .line 1533
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][Slideshow][requestAudioFocus]: request audio focus fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1538
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsHeadsetHook:Z

    .line 1540
    .end local v0           #ret:I
    :cond_3
    return-void
.end method

.method private retrieveSettings()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 485
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_duration_setting"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, interval:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    add-int/lit16 v5, v5, 0x320

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideshowInterval:I

    .line 488
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v5, p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->syncPreferenceAnimSettings(Landroid/content/Context;)V

    .line 490
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_repeat_setting"

    invoke-virtual {v5, v6, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    .line 492
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_orientation_setting"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, orientation:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOrientation:I

    .line 495
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_transition_setting"

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, transition:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTransitionAnimIndex:I

    .line 499
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v5}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v5

    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurTransitionAnimIndex:I

    if-eq v5, v6, :cond_0

    .line 501
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow][retrieveSettings]: Stop music by Change Transition."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    .line 508
    :cond_0
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_enable_setting"

    invoke-virtual {v5, v6, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    .line 509
    iget-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    if-ne v5, v9, :cond_6

    .line 513
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_picker_setting"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, strUri:Ljava/lang/String;
    const/4 v4, 0x0

    .line 515
    .local v4, uriTemp:Landroid/net/Uri;
    if-nez v2, :cond_1

    const-string v5, ""

    if-eq v2, v5, :cond_2

    .line 517
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 520
    :cond_2
    if-nez v4, :cond_3

    .line 522
    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    .line 523
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    .line 524
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow][retrieveSettings]: Uri.parse NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .end local v2           #strUri:Ljava/lang/String;
    .end local v4           #uriTemp:Landroid/net/Uri;
    :goto_0
    return-void

    .line 530
    .restart local v2       #strUri:Ljava/lang/String;
    .restart local v4       #uriTemp:Landroid/net/Uri;
    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 533
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    .line 534
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    .line 537
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->playMusic()V

    goto :goto_0

    .line 543
    .end local v2           #strUri:Ljava/lang/String;
    .end local v4           #uriTemp:Landroid/net/Uri;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    goto :goto_0
.end method

.method private setKeepScreenOn(Z)V
    .locals 2
    .parameter "IsScreenOn"

    .prologue
    const/16 v1, 0x80

    .line 1397
    if-eqz p1, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1401
    :goto_0
    return-void

    .line 1400
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private setTransitionAnim(ZZ)V
    .locals 6
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    const-wide/16 v4, 0x320

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, animIn:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 571
    .local v1, animOut:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v2, p0, v3}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 574
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->isRandomized()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurDirection:Z

    if-ne v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMoveNext:Z

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurTransitionAnimIndex:I

    if-ne v2, v3, :cond_0

    .line 615
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 585
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 587
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationInReversed()Landroid/view/animation/Animation;

    move-result-object v0

    .line 588
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOutReversed()Landroid/view/animation/Animation;

    move-result-object v1

    .line 600
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 602
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 604
    :cond_2
    if-eqz v1, :cond_3

    .line 606
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 609
    :cond_3
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 610
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 612
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurTransitionAnimIndex:I

    .line 613
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurDirection:Z

    .line 614
    iput-boolean p2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMoveNext:Z

    goto :goto_0

    .line 592
    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIn()Landroid/view/animation/Animation;

    move-result-object v0

    .line 593
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOut()Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_1
.end method

.method private shouldRotate(II)Z
    .locals 4
    .parameter "h"
    .parameter "w"

    .prologue
    const/4 v2, 0x1

    .line 1237
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1238
    .local v0, screenH:I
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1240
    .local v1, screenW:I
    if-le p1, p2, :cond_1

    .line 1241
    if-ge v0, v1, :cond_2

    .line 1250
    :cond_0
    :goto_0
    return v2

    .line 1245
    :cond_1
    if-ge p1, p2, :cond_2

    .line 1246
    if-gt v0, v1, :cond_0

    .line 1250
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showControlBar(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 2006
    if-eqz p1, :cond_0

    .line 2008
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    .line 2015
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updateControlBar()V

    .line 2016
    return-void

    .line 2012
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    goto :goto_0
.end method

.method private updateControlBar()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1944
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    if-eqz v0, :cond_3

    .line 1946
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    .line 1947
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mWasControlShowing:Z

    .line 1948
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v4, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 1958
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1960
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 1962
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    .line 1964
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 2002
    :cond_2
    :goto_0
    return-void

    .line 1969
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    .line 1970
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_4

    .line 1972
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x2

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(IIZ)V

    .line 1973
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mWasControlShowing:Z

    if-eqz v0, :cond_7

    .line 1975
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 1976
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars()V

    .line 1988
    :goto_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setAlpha(F)V

    .line 1990
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1992
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 1994
    :cond_5
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_6

    .line 1996
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 1999
    :cond_6
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2000
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1986
    :cond_7
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v4, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private updatePrevNextButtons()V
    .locals 3

    .prologue
    .line 1017
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-gtz v1, :cond_1

    .line 1019
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 1040
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4

    .line 1042
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1044
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 1067
    :goto_1
    return-void

    .line 1025
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enablePrevBtn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1063
    :catch_0
    move-exception v0

    .line 1065
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1030
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1032
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 1036
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enablePrevBtn(Z)V

    goto :goto_0

    .line 1048
    :cond_3
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enableNextBtn(Z)V

    goto :goto_1

    .line 1053
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1055
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    goto :goto_1

    .line 1059
    :cond_5
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enableNextBtn(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateTitlebar(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    .line 648
    :goto_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 658
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNoUpdateControlBar:Z

    .line 662
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->invalidateOptionsMenu()V

    .line 668
    :goto_2
    return-void

    .line 645
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][updateTitlebar]: mImageList is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][updateTitlebar]: mControlBarMgr is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 666
    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][updateTitlebar] mActionBar is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 27
    .parameter "image"

    .prologue
    .line 1136
    if-nez p1, :cond_0

    .line 1138
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][LoadImageToSwitcher]: image NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :goto_0
    return-void

    .line 1142
    :cond_0
    const/16 v19, 0x0

    .line 1143
    .local v19, mTempBmp:Landroid/graphics/Bitmap;
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v18

    .line 1144
    .local v18, h:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v26

    .line 1145
    .local v26, w:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->shouldRotate(II)Z

    move-result v21

    .line 1147
    .local v21, shouldRotate:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getWidth()I

    move-result v25

    .line 1148
    .local v25, switcherWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getHeight()I

    move-result v22

    .line 1150
    .local v22, switcherHeight:I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    move/from16 v23, v25

    .line 1151
    .local v23, switcherLongSideLength:I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    move/from16 v24, v25

    .line 1153
    .local v24, switcherShortSideLength:I
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    move/from16 v6, v23

    .line 1154
    .local v6, targetWidth:I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    move/from16 v7, v23

    .line 1156
    .local v7, targetHeight:I
    :goto_6
    const/16 v9, 0x402

    .line 1158
    .local v9, decodeFlag:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1160
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_7

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    move-object/from16 v4, p1

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v8, 0x10

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1164
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]image decoder DRM load from input stream NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1147
    .end local v6           #targetWidth:I
    .end local v7           #targetHeight:I
    .end local v9           #decodeFlag:I
    .end local v22           #switcherHeight:I
    .end local v23           #switcherLongSideLength:I
    .end local v24           #switcherShortSideLength:I
    .end local v25           #switcherWidth:I
    :cond_1
    sget v25, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_LAND:I

    goto :goto_1

    .line 1148
    .restart local v25       #switcherWidth:I
    :cond_2
    sget v22, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_PORT:I

    goto :goto_2

    .restart local v22       #switcherHeight:I
    :cond_3
    move/from16 v23, v22

    .line 1150
    goto :goto_3

    .restart local v23       #switcherLongSideLength:I
    :cond_4
    move/from16 v24, v22

    .line 1151
    goto :goto_4

    .restart local v24       #switcherShortSideLength:I
    :cond_5
    move/from16 v6, v24

    .line 1153
    goto :goto_5

    .restart local v6       #targetWidth:I
    :cond_6
    move/from16 v7, v24

    .line 1154
    goto :goto_6

    .line 1170
    .restart local v7       #targetHeight:I
    .restart local v9       #decodeFlag:I
    :cond_7
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]image decoder isDrm() but not DrmMedia NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1185
    if-eqz v19, :cond_c

    .line 1198
    const-string v3, "video/3gpp-3d"

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "video/mp4-3d"

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1201
    :cond_9
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][LoadImageToSwitcher]: Shouldn\'t run to here, Slideshow not support Video !!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mOrientation:I

    if-nez v3, :cond_e

    if-eqz v21, :cond_e

    .line 1211
    const/16 v20, 0x0

    .line 1214
    .local v20, rotateImg:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    if-nez v3, :cond_d

    .line 1215
    const/16 v3, 0x5a

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1221
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseNextViewOnSwitcher()V

    .line 1222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1223
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 1224
    const/16 v19, 0x0

    .line 1225
    goto/16 :goto_0

    .line 1175
    .end local v20           #rotateImg:Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v16, 0x10

    move v14, v6

    move v15, v7

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1177
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]image decoder load from file path NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1206
    :cond_c
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][LoadImageToSwitcher]: Bitmap curImage.thumbBitmap is NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1219
    .restart local v20       #rotateImg:Landroid/graphics/Bitmap;
    :cond_d
    const/16 v3, -0x5a

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v20

    goto :goto_7

    .line 1227
    .end local v20           #rotateImg:Landroid/graphics/Bitmap;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseNextViewOnSwitcher()V

    .line 1228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public buildShuffleList()V
    .locals 3

    .prologue
    .line 1897
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    .line 1898
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1900
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1901
    return-void
.end method

.method public checkInit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 456
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 458
    :cond_0
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][checkInit]: mImageList NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return v0

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    if-nez v1, :cond_2

    .line 464
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][checkInit]: mAnimiationManager NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_3

    .line 470
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 476
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 5

    .prologue
    .line 1636
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_transition_setting"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1637
    .local v1, strTransition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1638
    .local v0, nAnimIndex:I
    packed-switch v0, :pswitch_data_0

    .line 1645
    const/4 v0, -0x3

    .end local v0           #nAnimIndex:I
    :pswitch_0
    return v0

    .line 1638
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public destoryMusic()V
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1495
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][destoryMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->abandonAudioFocus()V

    .line 1499
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1500
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1503
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][destoryMusic]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 1562
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1564
    .local v0, keyCode:I
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsHeadsetHook:Z

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1597
    :cond_1
    :goto_0
    return v1

    .line 1566
    :cond_2
    const/16 v2, 0x4f

    if-ne v0, v2, :cond_5

    .line 1570
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1571
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1572
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1573
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1597
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1576
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1580
    :cond_5
    const/16 v2, 0x55

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_7

    .line 1583
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 1589
    :cond_7
    const/16 v2, 0x57

    if-eq v0, v2, :cond_1

    const/16 v2, 0x58

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x59

    if-ne v0, v2, :cond_3

    goto :goto_0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 2164
    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1858
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1860
    new-instance v1, Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;Lcom/htc/album/addons/slideshow/SlideShow$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1863
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1864
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 1866
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1867
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1868
    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 1905
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->getShuffleIndex(I)I

    move-result v0

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    .line 2108
    :goto_0
    return-object v0

    .line 2107
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderIndicator NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 2095
    :goto_0
    return-object v0

    .line 2094
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderName NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    const-string v0, ""

    goto :goto_0
.end method

.method public getShuffleIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 1910
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1912
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][getShuffleIndex]: mShuffleList is null, set index = 0"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    .end local p1
    :goto_0
    return p1

    .line 1916
    .restart local p1
    :cond_0
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1918
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][Slideshow][getShuffleIndex]: request index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", out of list size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1922
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "slide_show_shuffle_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1924
    .local v0, bShuffle:Z
    if-eqz v0, :cond_3

    .line 1925
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 1927
    :cond_3
    iget p1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    goto :goto_0
.end method

.method public initControlBarManager()V
    .locals 4

    .prologue
    .line 1934
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1935
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 1937
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v2, 0xde

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 1938
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v1

    const v2, 0x3f666666

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setAlpha(F)V

    .line 1939
    return-void
.end method

.method public launchSlideshowByType(IZ)V
    .locals 7
    .parameter "type"
    .parameter "isFromOnStart"

    .prologue
    const/4 v6, 0x0

    .line 1650
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideShow][launchSlideshowByType]: Fusion Slideshow -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1653
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1665
    :goto_0
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    const-string v1, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1667
    const-string v1, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemfullpath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1668
    const-string v1, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "itemIndex"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1669
    const-string v1, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewSingleImage"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1670
    const-string v1, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "folder_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    const-string v1, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_folder_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    const-string v1, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_bucket_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1673
    const-string v1, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photoIds"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1674
    if-eqz p2, :cond_0

    .line 1676
    const-string v1, "isInsideSlideshow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1679
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->startActivity(Landroid/content/Intent;)V

    .line 1680
    return-void

    .line 1656
    :pswitch_0
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW3D"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1660
    :pswitch_1
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOWFUSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1653
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1299
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1300
    .local v1, ret:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1302
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1303
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1304
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1307
    .local v0, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1308
    return-object v1
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 2154
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onGoBack()V

    .line 2155
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 1828
    const v3, 0xea60

    if-ne p1, v3, :cond_2

    .line 1830
    const/4 v3, -0x1

    if-ne v3, p2, :cond_1

    .line 1832
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1833
    .local v1, selectSoundUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1835
    .local v0, csValue:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1836
    .local v2, strFileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1839
    if-eqz v2, :cond_0

    .line 1842
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_picker_setting"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1843
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_enable_setting"

    invoke-virtual {v3, v4, v6}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1846
    :cond_0
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_ask_music_setting"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1850
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_1
    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 1854
    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1891
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onBackPressed()V

    .line 1892
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2051
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mWasControlShowing:Z

    .line 2052
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2079
    :goto_0
    return-void

    .line 2055
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSetting()V

    goto :goto_0

    .line 2059
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 2061
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V

    goto :goto_0

    .line 2065
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPlay()V

    goto :goto_0

    .line 2070
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPrevious()V

    goto :goto_0

    .line 2073
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarNext()V

    goto :goto_0

    .line 2076
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onGoBack()V

    goto :goto_0

    .line 2052
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_3
        0x13 -> :sswitch_4
        0x23 -> :sswitch_0
        0x24 -> :sswitch_1
        0x27 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    .line 207
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v9, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v9, :cond_0

    .line 210
    iget-object v9, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 214
    :cond_0
    new-instance v9, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 215
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "slideshow_setting_mode"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    .line 217
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    invoke-virtual {v9, p0, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 219
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowSettingManager][onCreate]: init SlideshowSetingManager NG !"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkLaunchOtherSlideshow()I

    move-result v2

    .line 225
    .local v2, launchType:I
    const/4 v9, -0x3

    if-eq v9, v2, :cond_2

    .line 227
    const/4 v9, 0x0

    invoke-virtual {p0, v2, v9}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSlideshowByType(IZ)V

    .line 228
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    .line 410
    :goto_0
    return-void

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "isInsideSlideshow"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 233
    .local v1, isInsideSlideshow:Z
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_ask_music_setting"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    .local v0, askMusic:Z
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_music_enable_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    .line 236
    if-nez v1, :cond_3

    .line 238
    iget-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    if-nez v9, :cond_b

    if-eqz v0, :cond_b

    .line 240
    const v9, 0x36870

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideShow;->showDialog(I)V

    .line 241
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 249
    :cond_3
    :goto_1
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][Slideshow][onCreate]: Run 2D Slideshow !"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "key_bucket_id"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "viewSingleImage"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 258
    .local v8, viewSingleImage:Z
    const/4 v4, 0x1

    .line 260
    .local v4, sort:I
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "folder_type"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 261
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 264
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][Slideshow][onCreate]: null folder detected... "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v9, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 270
    :cond_4
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 271
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 277
    :cond_5
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "album_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 279
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "key_folder_name"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 311
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9, p0, v10}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 313
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v9, :cond_7

    .line 319
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "photoIds"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 320
    .local v3, nPhotoIds:[I
    if-eqz v3, :cond_10

    .line 322
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][Slideshow][onCreate]: from photo ids: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 335
    .end local v3           #nPhotoIds:[I
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-gtz v9, :cond_11

    .line 338
    :cond_8
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "dock_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 340
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowSettingManager][onCreate]: no pref folder, set folder to all photo"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 344
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 345
    const v9, 0x7f0a004e

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 348
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "slide_show_folder_picker_setting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 350
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 353
    :cond_9
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-gtz v9, :cond_11

    .line 355
    :cond_a
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowSettingManager][onCreate]: empty list"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->showErrorDialog()V

    goto/16 :goto_0

    .line 245
    .end local v4           #sort:I
    .end local v8           #viewSingleImage:Z
    :cond_b
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_ask_music_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 281
    .restart local v4       #sort:I
    .restart local v8       #viewSingleImage:Z
    :cond_c
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "dock_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 283
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "slide_show_folder_picker_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, strFolderType:Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 288
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 290
    .local v7, type:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 291
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 292
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 293
    :cond_d
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 294
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 295
    :cond_e
    :goto_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 296
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    goto :goto_4

    .line 301
    .end local v7           #type:Ljava/util/StringTokenizer;
    :cond_f
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 302
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 303
    const v9, 0x7f0a004e

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 306
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "slide_show_folder_picker_setting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 327
    .end local v5           #strFolderType:Ljava/lang/String;
    .restart local v3       #nPhotoIds:[I
    :cond_10
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 328
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][Slideshow][onCreate]: from bucket id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 362
    .end local v3           #nPhotoIds:[I
    :cond_11
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "itemIndex"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 363
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "slideshow_back_index"

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    .line 364
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][Slideshow][onCreate]: Slideshow Get Index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Get Ent Pos: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-eqz v9, :cond_12

    .line 367
    const/4 v6, 0x0

    .line 368
    .local v6, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "itemfullpath"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 370
    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v9, v6, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v9

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 372
    .end local v6           #strFullPath:Ljava/lang/String;
    :cond_12
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][Slideshow][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-ltz v9, :cond_13

    .line 376
    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 378
    :cond_13
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowSettingManager][onCreate]: Slideshow reset mCurrentPosition: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 383
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->retrieveSettings()V

    .line 384
    const v9, 0x7f030037

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideShow;->setContentView(I)V

    .line 385
    iget-object v9, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v9, :cond_14

    .line 387
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->initControlBarManager()V

    .line 389
    :cond_14
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->initLayout()V

    .line 390
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mPosted:Z

    .line 392
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestFooterBar()Z

    move-result v9

    if-nez v9, :cond_15

    .line 394
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->attachMediaController()V

    .line 398
    :cond_15
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 399
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 400
    const/4 v9, 0x1

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 404
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 409
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->enableBroadcastReceiver()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "args"

    .prologue
    const v7, 0x2040174

    .line 1694
    sparse-switch p1, :sswitch_data_0

    .line 1821
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    :goto_1
    return-object v5

    .line 1697
    :sswitch_0
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0021

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0022

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1701
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideShow$4;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/SlideShow$4;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    invoke-virtual {v0, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1709
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideShow$5;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/SlideShow$5;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1718
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideShow$6;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/SlideShow$6;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1726
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_1

    .line 1728
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :sswitch_1
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0023

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1730
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideShow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1731
    .local v2, inflater:Landroid/view/LayoutInflater;
    if-nez v2, :cond_0

    .line 1733
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow][onCreateDialog] Can\'t get LayoutInflater"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1737
    :cond_0
    const v5, 0x7f030038

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1738
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_1

    .line 1740
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow][onCreateDialog] Can\'t get slide_show_ask_music layout"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1744
    :cond_1
    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1745
    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1746
    .local v3, textView:Landroid/widget/TextView;
    if-nez v3, :cond_2

    .line 1748
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow][onCreateDialog] Can\'t get ask_text TextView"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1751
    :cond_2
    const v5, 0x7f0a0024

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1753
    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1754
    .restart local v3       #textView:Landroid/widget/TextView;
    if-nez v3, :cond_3

    .line 1756
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][onCreateDialog] Can\'t get remind_text TextView"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1759
    :cond_3
    const v5, 0x7f0a015d

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1761
    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    .line 1762
    .local v1, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v1, :cond_4

    .line 1764
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][onCreateDialog] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1768
    :cond_4
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1770
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideShow$7;

    invoke-direct {v5, p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow$7;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1796
    const v5, 0x20401ee

    new-instance v6, Lcom/htc/album/addons/slideshow/SlideShow$8;

    invoke-direct {v6, p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow$8;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1807
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideShow$9;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/SlideShow$9;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1816
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_1

    .line 1694
    :sswitch_data_0
    .sparse-switch
        0x1b669 -> :sswitch_0
        0x36870 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 2120
    const/4 v0, 0x0

    .line 2121
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2122
    .local v1, context:Landroid/content/Context;
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 2124
    const/16 v3, 0x27

    const v4, 0x20800c0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2125
    const/16 v3, 0x24

    const v4, 0x20800b6

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2126
    const/16 v3, 0xf

    const v4, 0x20800b4

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2128
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 2129
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 2131
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 2135
    :cond_0
    return-object v0
.end method

.method public onDLNASupportRange()Z
    .locals 1

    .prologue
    .line 1330
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 932
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onDestory"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    .line 935
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->destoryMusic()V

    .line 937
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 938
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz v2, :cond_2

    .line 939
    const/4 v0, 0x0

    .line 940
    .local v0, aView:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 941
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 943
    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseBitmap(Landroid/widget/ImageView;)V

    .line 940
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 946
    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->removeAllViews()V

    .line 947
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 950
    .end local v0           #aView:Landroid/view/View;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_3

    .line 951
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 952
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 953
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 955
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 956
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    .line 957
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onDestroy()V

    .line 958
    return-void
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 2159
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1510
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][Slideshow3D][onError]: Stop Music, what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    .line 1513
    const/4 v0, 0x0

    return v0
.end method

.method public onFfwdTarget()V
    .locals 0

    .prologue
    .line 1326
    return-void
.end method

.method public onFinishInflate(ILandroid/view/View;)V
    .locals 0
    .parameter "resourceId"
    .parameter "v"

    .prologue
    .line 1408
    return-void
.end method

.method public onGoBack()V
    .locals 0

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    .line 1334
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 990
    packed-switch p1, :pswitch_data_0

    .line 999
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 996
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 714
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 721
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 717
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSetting()V

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x7f09008a
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuPress()V
    .locals 0

    .prologue
    .line 1328
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 785
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 788
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 797
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    .line 800
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V

    .line 801
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsSettingShown:Z

    if-eqz v0, :cond_1

    .line 803
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsSettingShown:Z

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->destroyDrawingCache()V

    .line 807
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][onPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPauseTarget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1337
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 1338
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 1341
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1343
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1344
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1345
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1350
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->pauseMusic()V

    .line 1352
    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    .line 1353
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 1354
    return-void
.end method

.method public onPlayTarget()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1357
    invoke-direct {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 1358
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 1360
    invoke-direct {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    .line 1361
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    .line 1363
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->playMusic()V

    .line 1365
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTransitionAnimIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getTransitionKeyValue4Profile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 1366
    return v3
.end method

.method public onPlaybackMode()V
    .locals 0

    .prologue
    .line 1373
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 694
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 695
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    .line 696
    const v1, 0x7f09008a

    const v2, 0x2040178

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 697
    .local v0, menuItem:Landroid/view/MenuItem;
    const v1, 0x20800c3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 698
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 700
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNoUpdateControlBar:Z

    if-eqz v1, :cond_0

    .line 702
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNoUpdateControlBar:Z

    .line 708
    :goto_0
    return v4

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updateControlBar()V

    goto :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2
    .parameter "footer"

    .prologue
    .line 2141
    instance-of v1, p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    if-eqz v1, :cond_0

    .line 2143
    check-cast p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    .end local p1
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findRimButton(I)Lcom/htc/widget/HtcRimButton;

    move-result-object v0

    .line 2144
    .local v0, playBtn:Lcom/htc/widget/HtcRimButton;
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v1, :cond_1

    const v1, 0x20800b6

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 2146
    .end local v0           #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_0
    return-void

    .line 2144
    .restart local v0       #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_1
    const v1, 0x20800bb

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 738
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 742
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 745
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 746
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    .line 750
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->isTransAnimChange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    .line 758
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onPlayTarget()Z

    .line 759
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideshowInterval:I

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    .line 779
    :goto_1
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_4

    .line 765
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 767
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    goto :goto_1
.end method

.method public onRewTarget()V
    .locals 0

    .prologue
    .line 1369
    return-void
.end method

.method public onSettings()V
    .locals 0

    .prologue
    .line 1371
    return-void
.end method

.method protected onStart()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 835
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStart()V

    .line 836
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v11, "onStart"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v10

    if-nez v10, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->enableBroadcastReceiver()V

    .line 844
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "slide_show_orientation_setting"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, orientation:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 846
    .local v2, mOrentation:I
    if-nez v2, :cond_3

    .line 847
    invoke-virtual {p0, v13}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    .line 852
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkLaunchOtherSlideshow()I

    move-result v1

    .line 853
    .local v1, launchType:I
    const/4 v10, -0x3

    if-eq v10, v1, :cond_4

    .line 855
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-ltz v10, :cond_2

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 857
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-interface {v10, v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 858
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_2

    .line 860
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "slideshow_back_index"

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 862
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemIndex"

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 864
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    .line 865
    .local v8, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemfullpath"

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][Slideshow][onStart]: Set CurPos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Set EntPos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v8           #strFullPath:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    invoke-virtual {p0, v1, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSlideshowByType(IZ)V

    .line 872
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    goto/16 :goto_0

    .line 849
    .end local v1           #launchType:I
    :cond_3
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    goto :goto_1

    .line 877
    .restart local v1       #launchType:I
    :cond_4
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "dock_mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 879
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "slide_show_folder_picker_setting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 881
    .local v7, strFolderTypeKeyValue:Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 883
    const/4 v6, 0x0

    .line 884
    .local v6, strFolderType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 885
    .local v4, strBucketId:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 886
    .local v5, strFolderName:Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 888
    .local v9, type:Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 889
    :cond_5
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 890
    :cond_6
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 891
    :cond_7
    :goto_2
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 892
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 894
    :cond_8
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 896
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 898
    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 899
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 901
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    const-string v11, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 902
    const v10, 0x7f0a004d

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 906
    :goto_3
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v10, v11}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 907
    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 908
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    if-gtz v10, :cond_b

    .line 910
    :cond_9
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][Slideshow][onStart]: mImageList is Null or Zero !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->showErrorDialog()V

    goto/16 :goto_0

    .line 904
    :cond_a
    iput-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    goto :goto_3

    .line 915
    :cond_b
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 917
    iget-object v10, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v10, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->updateTitlebar(I)V

    goto/16 :goto_0

    .line 925
    .end local v4           #strBucketId:Ljava/lang/String;
    .end local v5           #strFolderName:Ljava/lang/String;
    .end local v6           #strFolderType:Ljava/lang/String;
    .end local v9           #type:Ljava/util/StringTokenizer;
    :cond_c
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][Slideshow][onStart]: Get Folder from preference NG !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 814
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 817
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 820
    :cond_0
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_orientation_setting"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, orientation:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 825
    .local v0, mOrentation:I
    if-nez v0, :cond_1

    .line 826
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    .line 830
    :goto_0
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStop()V

    .line 831
    return-void

    .line 828
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1414
    return-void
.end method

.method public pauseMusic()V
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1466
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][pauseMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1470
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->abandonAudioFocus()V

    .line 1471
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1472
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 1475
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][pauseMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_1
    return-void
.end method

.method public playMusic()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1420
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v3, :cond_1

    .line 1422
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: Begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1426
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestAudioFocus()V

    .line 1428
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1429
    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 1431
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: Pause -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_0
    :goto_0
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: End"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :cond_1
    return-void

    .line 1433
    :cond_2
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    if-ne v3, v5, :cond_0

    .line 1435
    const/4 v1, 0x0

    .line 1436
    .local v1, fileA:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #fileA:Ljava/io/File;
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1439
    .restart local v1       #fileA:Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestAudioFocus()V

    .line 1441
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1442
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1443
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1444
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1445
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1447
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 1449
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: Stop -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    .local v0, ex:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1452
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1453
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1455
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: Play Music Start NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2115
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 2083
    const/4 v0, 0x0

    return v0
.end method

.method public showErrorDialog()V
    .locals 1

    .prologue
    .line 1685
    const v0, 0x1b669

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showDialog(I)V

    .line 1686
    return-void
.end method

.method public stopMusic()V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1482
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][stopMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->abandonAudioFocus()V

    .line 1486
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1487
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 1489
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][stopMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_0
    return-void
.end method
