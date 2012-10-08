.class public Lcom/htc/album/addons/slideshow/Slideshow3D;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;
.implements Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/Slideshow3D$TemplateBroadcastReceiver;,
        Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;,
        Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonPrev;,
        Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonNext;,
        Lcom/htc/album/addons/slideshow/Slideshow3D$SlideshowConstants;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> S3D: "

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

.field private mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field mBackupIsPlayingFlag:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBucketId:Ljava/lang/String;

.field private mBundleUsedWhenOnCreate:Landroid/os/Bundle;

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

.field private mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

.field private mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

.field private mSlideshowInterval:I

.field private mSlideshowViewInitialized:Z

.field private mStopAndLeave:Z

.field private mTransitionAnimIndex:I

.field private mUriMusic:Landroid/net/Uri;

.field private mWasControlShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 114
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->SPECIFY_DIRECTION:Z

    .line 115
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->DIRECTION_FORWARD:Z

    .line 116
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->DIRECTION_BACKWARD:Z

    .line 122
    iput v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 123
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    .line 124
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    .line 125
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    .line 127
    iput v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->MUSIC_STATE_STOP:I

    .line 128
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->MUSIC_STATE_PLAYING:I

    .line 129
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->MUSIC_STATE_PAUSE:I

    .line 132
    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderBucketId:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 139
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    .line 140
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 141
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNoUpdateControlBar:Z

    .line 147
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 148
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    .line 150
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 158
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 159
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 160
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    .line 168
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    .line 169
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBackupIsPlayingFlag:Z

    .line 173
    new-instance v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    .line 177
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurDirection:Z

    .line 178
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMoveNext:Z

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    .line 184
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 185
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    .line 186
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    .line 192
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 674
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$1;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1139
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$2;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    .line 1198
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$3;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    .line 1770
    return-void
.end method

.method private ReleaseBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "aView"

    .prologue
    .line 1278
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1279
    .local v1, dw:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 1280
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1281
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1283
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1287
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private ReleaseNextViewOnSwitcher()V
    .locals 0

    .prologue
    .line 1292
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1440
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1442
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][requestAudioFocus]: Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1444
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    .line 1445
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    .line 1447
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    .line 1451
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPrevious()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/addons/slideshow/Slideshow3D;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/album/addons/slideshow/Slideshow3D;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPlay()V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/addons/slideshow/Slideshow3D;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/Slideshow3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/addons/slideshow/Slideshow3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/addons/slideshow/Slideshow3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/album/addons/slideshow/Slideshow3D;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/album/addons/slideshow/Slideshow3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    return-void
.end method

.method private attachMediaController()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x0

    .line 417
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/slideshow/SlideShowController;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 419
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->setControllerEventListener(Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;)V

    .line 421
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0x27

    const v4, 0x20800c0

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 422
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0x24

    const v4, 0x20800b6

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 423
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0xf

    const v4, 0x20800b4

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 425
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 428
    .local v6, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 429
    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 430
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 432
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 433
    .local v7, rootLayout:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v7, v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 436
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonNext;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonNext;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    new-instance v2, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonPrev;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonPrev;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 437
    return-void
.end method

.method private cancelPost()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 975
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 598
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_1

    .line 600
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 601
    .local v0, index:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 602
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 603
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 607
    .end local v0           #index:I
    :goto_0
    return-void

    .line 606
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][initLayout]: initLayout NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchSetting()V
    .locals 3

    .prologue
    .line 722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 723
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->startActivity(Landroid/content/Intent;)V

    .line 726
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    .line 727
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBackupIsPlayingFlag:Z

    .line 728
    return-void
.end method

.method private loadImage(ZZ)V
    .locals 6
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    const/4 v4, 0x1

    .line 1040
    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    if-eqz v3, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-interface {v3, v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 1045
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    .line 1049
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1052
    :cond_3
    iget v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 1055
    .local v2, nNewPosition:I
    :cond_4
    if-eqz p2, :cond_b

    move v3, v4

    :goto_1
    add-int/2addr v2, v3

    .line 1056
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 1057
    const/4 v2, 0x0

    .line 1058
    :cond_5
    if-gez v2, :cond_6

    .line 1059
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1060
    :cond_6
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 1061
    if-eqz v0, :cond_0

    .line 1065
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v0

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_8

    :cond_7
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-ne v2, v3, :cond_4

    .line 1067
    :cond_9
    iput v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 1081
    .end local v2           #nNewPosition:I
    :cond_a
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th image."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    .line 1083
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setTransitionAnim(ZZ)V

    .line 1084
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updatePrevNextButtons()V

    .line 1086
    const/4 v1, 0x0

    .line 1113
    .local v1, mTempBmp:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 1055
    .end local v1           #mTempBmp:Landroid/graphics/Bitmap;
    .restart local v2       #nNewPosition:I
    :cond_b
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private loadNextImage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1159
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1160
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 1163
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 1164
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 1166
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    .line 1167
    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    .prologue
    .line 1170
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-nez v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 1177
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1178
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 1180
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    .line 1181
    return-void

    .line 1174
    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    goto :goto_0
.end method

.method private onControlbarNext()V
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doNextImage()Z

    .line 1906
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1907
    return-void
.end method

.method private onControlbarPause()V
    .locals 1

    .prologue
    .line 1892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    .line 1893
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPauseTarget()V

    .line 1894
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1895
    :cond_0
    return-void
.end method

.method private onControlbarPlay()V
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPlayTarget()Z

    .line 1900
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1901
    :cond_0
    return-void
.end method

.method private onControlbarPrevious()V
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPreviousImage()Z

    .line 1912
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1913
    return-void
.end method

.method private post(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 982
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1414
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1415
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 1419
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 1421
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/album/addons/slideshow/Slideshow3D$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    .line 1424
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow3D][requestAudioFocus]: Request audio focus"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1427
    .local v0, ret:I
    if-eq v0, v4, :cond_2

    .line 1429
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][Slideshow3D][requestAudioFocus]: request audio focus fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1434
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    .line 1436
    .end local v0           #ret:I
    :cond_3
    return-void
.end method

.method private retrieveSettings()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 520
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_duration_setting"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, interval:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    add-int/lit16 v6, v6, 0x320

    iput v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowInterval:I

    .line 523
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v6, p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->syncPreferenceAnimSettings(Landroid/content/Context;)V

    .line 525
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_repeat_setting"

    invoke-virtual {v6, v7, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    .line 527
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_orientation_setting"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, orientation:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOrientation:I

    .line 530
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_transition_setting"

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, transition:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 534
    .local v1, nTransAnimIndex:I
    iget v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 536
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    .line 540
    :cond_0
    iget v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    if-eq v1, v6, :cond_1

    .line 542
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    .line 543
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 549
    :cond_1
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v7, "slide_show_music_enable_setting"

    invoke-virtual {v6, v7, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    .line 550
    iget-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-ne v6, v10, :cond_7

    .line 554
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v7, "slide_show_music_picker_setting"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, strUri:Ljava/lang/String;
    const/4 v5, 0x0

    .line 556
    .local v5, uriTemp:Landroid/net/Uri;
    if-nez v3, :cond_2

    const-string v6, ""

    if-eq v3, v6, :cond_3

    .line 558
    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 561
    :cond_3
    if-nez v5, :cond_4

    .line 563
    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    .line 564
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 565
    sget-object v6, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][Slideshow3D][retrieveSettings]: Uri.parse NG !"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .end local v3           #strUri:Ljava/lang/String;
    .end local v5           #uriTemp:Landroid/net/Uri;
    :goto_0
    return-void

    .line 571
    .restart local v3       #strUri:Ljava/lang/String;
    .restart local v5       #uriTemp:Landroid/net/Uri;
    :cond_4
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v6

    if-eqz v6, :cond_6

    .line 574
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 575
    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    .line 578
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->playMusic()V

    goto :goto_0

    .line 584
    .end local v3           #strUri:Ljava/lang/String;
    .end local v5           #uriTemp:Landroid/net/Uri;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    goto :goto_0
.end method

.method public static searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I
    .locals 7
    .parameter "nCurIndex"
    .parameter "strFullPath"
    .parameter "imageList"

    .prologue
    const/4 v4, 0x0

    .line 457
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 459
    :cond_0
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: init para NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 484
    :cond_1
    :goto_0
    return v1

    .line 463
    :cond_2
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-lt p0, v5, :cond_3

    .line 464
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    add-int/lit8 p0, v5, -0x1

    .line 469
    :cond_3
    move v1, p0

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 471
    :try_start_0
    invoke-interface {p2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 472
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, strPath:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 469
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 478
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v3           #strPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 479
    .local v0, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: searching NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 480
    goto :goto_0

    .line 483
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: no found indicate index, set index 0 !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 484
    goto :goto_0
.end method

.method private setKeepScreenOn(Z)V
    .locals 2
    .parameter "IsScreenOn"

    .prologue
    const/16 v1, 0x80

    .line 1295
    if-eqz p1, :cond_0

    .line 1296
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1299
    :goto_0
    return-void

    .line 1298
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private setTransitionAnim(ZZ)V
    .locals 0
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    .line 594
    return-void
.end method

.method private shouldRotate(II)Z
    .locals 4
    .parameter "h"
    .parameter "w"

    .prologue
    const/4 v2, 0x1

    .line 1123
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1124
    .local v0, screenH:I
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1126
    .local v1, screenW:I
    if-le p1, p2, :cond_1

    .line 1127
    if-ge v0, v1, :cond_2

    .line 1136
    :cond_0
    :goto_0
    return v2

    .line 1131
    :cond_1
    if-ge p1, p2, :cond_2

    .line 1132
    if-gt v0, v1, :cond_0

    .line 1136
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showControlBar(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 1882
    if-eqz p1, :cond_0

    .line 1883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 1887
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V

    .line 1888
    return-void

    .line 1885
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    goto :goto_0
.end method

.method private updateControlBar()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1819
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    if-eqz v0, :cond_3

    .line 1821
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 1822
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    .line 1823
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v4, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 1833
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1835
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 1837
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    .line 1839
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 1878
    :cond_2
    :goto_0
    return-void

    .line 1844
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 1845
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_4

    .line 1847
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x2

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(IIZ)V

    .line 1848
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    if-eqz v0, :cond_7

    .line 1850
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 1851
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars()V

    .line 1863
    :goto_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setAlpha(F)V

    .line 1865
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1867
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 1869
    :cond_5
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_6

    .line 1871
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 1875
    :cond_6
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1876
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1861
    :cond_7
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v4, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private updatePrevNextButtons()V
    .locals 3

    .prologue
    .line 987
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-gtz v1, :cond_1

    .line 989
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 1010
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4

    .line 1012
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1014
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 1037
    :goto_1
    return-void

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enablePrevBtn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1033
    :catch_0
    move-exception v0

    .line 1035
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1000
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1002
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 1006
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enablePrevBtn(Z)V

    goto :goto_0

    .line 1018
    :cond_3
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enableNextBtn(Z)V

    goto :goto_1

    .line 1023
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1025
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    goto :goto_1

    .line 1029
    :cond_5
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enableNextBtn(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateTitlebar(II)V
    .locals 2
    .parameter "index"
    .parameter "total"

    .prologue
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 615
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 617
    iput p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 618
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 626
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNoUpdateControlBar:Z

    .line 630
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->invalidateOptionsMenu()V

    .line 636
    :goto_1
    return-void

    .line 623
    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][updateTitlebar]: mControlBarMgr is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][updateTitlebar] mActionBar is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 1117
    return-void
.end method

.method public checkInit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 493
    :cond_0
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mImageList NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :goto_0
    return v0

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-nez v1, :cond_2

    .line 499
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mSlideShowView NG 0 !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_3

    .line 505
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 511
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 5

    .prologue
    .line 1505
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_transition_setting"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1506
    .local v1, strTransition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1507
    .local v0, nAnimIndex:I
    packed-switch v0, :pswitch_data_0

    .line 1517
    :pswitch_0
    const/4 v0, -0x3

    .end local v0           #nAnimIndex:I
    :pswitch_1
    return v0

    .line 1507
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deinitControlBarManager()V
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 1815
    :cond_0
    return-void
.end method

.method public destoryMusic()V
    .locals 2

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1391
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][destoryMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->abandonAudioFocus()V

    .line 1395
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1396
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1399
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][destoryMusic]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 1458
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1460
    .local v0, keyCode:I
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1493
    :cond_1
    :goto_0
    return v1

    .line 1462
    :cond_2
    const/16 v2, 0x4f

    if-ne v0, v2, :cond_5

    .line 1466
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1467
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1468
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1469
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1493
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1472
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1476
    :cond_5
    const/16 v2, 0x55

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_7

    .line 1479
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 1485
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
    .line 2052
    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1756
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1758
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/album/addons/slideshow/Slideshow3D$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1761
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1762
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 1764
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1765
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1766
    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 1995
    :goto_0
    return-object v0

    .line 1994
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderIndicator NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 1982
    :goto_0
    return-object v0

    .line 1981
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderName NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const-string v0, ""

    goto :goto_0
.end method

.method public initControlBarManager()V
    .locals 4

    .prologue
    .line 1804
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1805
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 1807
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v2, 0xde

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 1808
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v1

    const v2, 0x3f666666

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setAlpha(F)V

    .line 1809
    return-void
.end method

.method public launchSlideshowByType(IZ)V
    .locals 7
    .parameter "type"
    .parameter "isFromOnStart"

    .prologue
    const/4 v6, 0x0

    .line 1522
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][Slideshow3D][launchSlideshowByType]: Fusion Slideshow -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1525
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1540
    :goto_0
    :pswitch_0
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    const-string v1, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1542
    const-string v1, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemfullpath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    const-string v1, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "itemIndex"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    const-string v1, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewSingleImage"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1545
    const-string v1, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "folder_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1546
    const-string v1, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_folder_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1547
    const-string v1, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_bucket_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    const-string v1, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photoIds"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1549
    if-eqz p2, :cond_0

    .line 1551
    const-string v1, "isInsideSlideshow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1554
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->startActivity(Landroid/content/Intent;)V

    .line 1555
    return-void

    .line 1531
    :pswitch_1
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1535
    :pswitch_2
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOWFUSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1525
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1186
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1187
    .local v1, ret:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1189
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1190
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1191
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1194
    .local v0, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    return-object v1
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 2047
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onGoBack()V

    .line 2048
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 1726
    const v3, 0xea60

    if-ne p1, v3, :cond_2

    .line 1728
    const/4 v3, -0x1

    if-ne v3, p2, :cond_1

    .line 1730
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1731
    .local v1, selectSoundUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1733
    .local v0, csValue:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1734
    .local v2, strFileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1737
    if-eqz v2, :cond_0

    .line 1740
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_picker_setting"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1741
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_enable_setting"

    invoke-virtual {v3, v4, v6}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1744
    :cond_0
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_ask_music_setting"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1748
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_1
    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 1752
    :cond_2
    return-void
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 1966
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 1956
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
    .line 1918
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    .line 1919
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1946
    :goto_0
    return-void

    .line 1922
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSetting()V

    goto :goto_0

    .line 1926
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1928
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    goto :goto_0

    .line 1932
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPlay()V

    goto :goto_0

    .line 1937
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPrevious()V

    goto :goto_0

    .line 1940
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarNext()V

    goto :goto_0

    .line 1943
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onGoBack()V

    goto :goto_0

    .line 1919
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
    .locals 12
    .parameter "bundle"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    .line 200
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    .line 201
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onCreate"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v8, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v8, :cond_0

    .line 204
    iget-object v8, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 208
    :cond_0
    new-instance v8, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 209
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_setting_mode"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    .line 211
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    invoke-virtual {v8, p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 213
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onCreate]: init SlideshowSetingManager NG !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 413
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkLaunchOtherSlideshow()I

    move-result v2

    .line 220
    .local v2, launchType:I
    const/4 v8, -0x3

    if-eq v8, v2, :cond_2

    .line 222
    const/4 v8, 0x0

    invoke-virtual {p0, v2, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshowByType(IZ)V

    .line 223
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "isInsideSlideshow"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 228
    .local v1, isInsideSlideshow:Z
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_ask_music_setting"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 229
    .local v0, askMusic:Z
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_music_enable_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    .line 231
    if-nez v1, :cond_3

    .line 233
    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-nez v8, :cond_b

    if-eqz v0, :cond_b

    .line 235
    const v8, 0x36870

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showDialog(I)V

    .line 236
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 244
    :cond_3
    :goto_1
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][Slideshow3D][onCreate]: Run 3D Slideshow !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "folder_type"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 251
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 253
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "mFolderType = null, change folder type to com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v8, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "key_bucket_id"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 258
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 259
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 263
    :cond_5
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "album_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 265
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "key_folder_name"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 296
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v8, p0, v9}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 298
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v8, :cond_7

    .line 304
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "photoIds"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 305
    .local v3, nPhotoIds:[I
    if-eqz v3, :cond_10

    .line 307
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][SlideShow3D][onCreate]: from photo ids: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 320
    .end local v3           #nPhotoIds:[I
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_11

    .line 323
    :cond_8
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 325
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onCreate]: Preference Folder is not exist, Set folder to Default folder !! (Dock Mode)"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 329
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 330
    const v8, 0x7f0a004e

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 333
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "slide_show_folder_picker_setting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 338
    :cond_9
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_11

    .line 340
    :cond_a
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onCreate]: mImageList is Null or Zero !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    .line 240
    :cond_b
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_ask_music_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 267
    :cond_c
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 269
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "slide_show_folder_picker_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, strFolderType:Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 274
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 276
    .local v7, type:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 277
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 278
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 279
    :cond_d
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 280
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 281
    :cond_e
    :goto_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    goto :goto_4

    .line 287
    .end local v7           #type:Ljava/util/StringTokenizer;
    :cond_f
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 288
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 289
    const v8, 0x7f0a004e

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 292
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "slide_show_folder_picker_setting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 312
    .end local v5           #strFolderType:Ljava/lang/String;
    .restart local v3       #nPhotoIds:[I
    :cond_10
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 313
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][SlideShow3D][onCreate]: from bucket id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 346
    .end local v3           #nPhotoIds:[I
    :cond_11
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    .line 347
    const v8, 0x7f030037

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setContentView(I)V

    .line 350
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemIndex"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 351
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_back_index"

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    .line 352
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Slideshow3D][onCreate]: Slideshow Get Index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Get Ent Pos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-eqz v8, :cond_12

    .line 355
    const/4 v6, 0x0

    .line 356
    .local v6, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemfullpath"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 357
    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v8, v6, v9}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v8

    iput v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 359
    .end local v6           #strFullPath:Ljava/lang/String;
    :cond_12
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Slideshow3D][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_13

    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-gez v8, :cond_14

    :cond_13
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 363
    :cond_14
    new-instance v8, Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-direct {v8, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 364
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/slideshow/SlideshowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/slideshow/SlideshowView;->setPlayIndex(I)V

    .line 366
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    new-instance v9, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;

    invoke-direct {v9}, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;-><init>()V

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideAnimatorsFactory(Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;)V

    .line 367
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 368
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v8, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->setEventListener(Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V

    .line 369
    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v8, :cond_15

    .line 371
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v8, p1}, Lcom/htc/sunny2/slideshow/SlideshowView;->create(Landroid/os/Bundle;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    .line 372
    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v8, :cond_18

    .line 374
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onCreate() NG - SlideshowView create"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_5
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v8, Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v9, v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;)Z

    .line 385
    :cond_15
    const v8, 0x7f09003b

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 386
    .local v4, rootLayout:Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 389
    iget-object v8, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v8, :cond_16

    .line 391
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initControlBarManager()V

    .line 393
    :cond_16
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initLayout()V

    .line 394
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 396
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v8

    if-nez v8, :cond_17

    .line 398
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->attachMediaController()V

    .line 402
    :cond_17
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 403
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 404
    const/4 v8, 0x1

    iput v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 407
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 412
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    goto/16 :goto_0

    .line 378
    .end local v4           #rootLayout:Landroid/widget/RelativeLayout;
    :cond_18
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    goto :goto_5
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "args"

    .prologue
    const v7, 0x2040174

    .line 1592
    sparse-switch p1, :sswitch_data_0

    .line 1719
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    :goto_1
    return-object v5

    .line 1595
    :sswitch_0
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0021

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0022

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1599
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$4;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$4;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1607
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$5;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$5;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1616
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$6;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$6;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1624
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_1

    .line 1626
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :sswitch_1
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0023

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1628
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1629
    .local v2, inflater:Landroid/view/LayoutInflater;
    if-nez v2, :cond_0

    .line 1631
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get LayoutInflater"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1635
    :cond_0
    const v5, 0x7f030038

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1636
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_1

    .line 1638
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get slide_show_ask_music layout"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1642
    :cond_1
    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1643
    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1644
    .local v3, textView:Landroid/widget/TextView;
    if-nez v3, :cond_2

    .line 1646
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get ask_text TextView"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1649
    :cond_2
    const v5, 0x7f0a0024

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1651
    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1652
    .restart local v3       #textView:Landroid/widget/TextView;
    if-nez v3, :cond_3

    .line 1654
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get remind_text TextView"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1657
    :cond_3
    const v5, 0x7f0a015d

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1659
    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    .line 1660
    .local v1, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v1, :cond_4

    .line 1662
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1666
    :cond_4
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1668
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$7;

    invoke-direct {v5, p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D$7;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1694
    const v5, 0x20401ee

    new-instance v6, Lcom/htc/album/addons/slideshow/Slideshow3D$8;

    invoke-direct {v6, p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D$8;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1705
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$9;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$9;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1714
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_1

    .line 1592
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

    .line 2007
    const/4 v0, 0x0

    .line 2008
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2009
    .local v1, context:Landroid/content/Context;
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 2011
    const/16 v3, 0x27

    const v4, 0x20800c0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2012
    const/16 v3, 0x24

    const v4, 0x20800b6

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2013
    const/16 v3, 0xf

    const v4, 0x20800b4

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2015
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 2016
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 2018
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 2022
    :cond_0
    return-object v0
.end method

.method public onCurIndexChange(II)V
    .locals 2
    .parameter "nIndex"
    .parameter "ntotal"

    .prologue
    .line 1560
    if-nez p2, :cond_0

    .line 1562
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowSettingManager][onCurIndexChange]: no image !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    .line 1569
    :goto_0
    return-void

    .line 1567
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    .line 1568
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updatePrevNextButtons()V

    goto :goto_0
.end method

.method public onDLNASupportRange()Z
    .locals 1

    .prologue
    .line 1217
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 914
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    .line 917
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->destoryMusic()V

    .line 919
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 921
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    .line 923
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->destroy()V

    .line 924
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 929
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 930
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 932
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 933
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onDestroy()V

    .line 934
    return-void
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 2042
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1406
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

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

    .line 1407
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 1409
    const/4 v0, 0x0

    return v0
.end method

.method public onFfwdTarget()V
    .locals 0

    .prologue
    .line 1213
    return-void
.end method

.method public onFinishInflate(ILandroid/view/View;)V
    .locals 0
    .parameter "resourceId"
    .parameter "v"

    .prologue
    .line 1306
    return-void
.end method

.method public onGoBack()V
    .locals 0

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 1221
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 960
    packed-switch p1, :pswitch_data_0

    .line 969
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 966
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_0

    .line 960
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
    .line 709
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 716
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 712
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSetting()V

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x7f09008a
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuPress()V
    .locals 0

    .prologue
    .line 1215
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 769
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 772
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    :goto_0
    return-void

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 781
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 782
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    .line 785
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 794
    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    if-eqz v0, :cond_3

    .line 796
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    .line 800
    :cond_3
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPauseTarget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1224
    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPauseTarget]: onPauseTarget()"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1226
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1230
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1231
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1235
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 1237
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPause()Z

    .line 1240
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->pauseMusic()V

    .line 1242
    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 1243
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 1244
    return-void
.end method

.method public onPlayTarget()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1247
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPlayTarget]: onPlayTarget()"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/slideshow/SlideshowView;->create(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    .line 1251
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v0, :cond_0

    .line 1253
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate() NG - SlideshowView create"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;)Z

    .line 1256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    .line 1259
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1260
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 1262
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPlay()Z

    .line 1264
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 1265
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    .line 1266
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->playMusic()V

    .line 1267
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mTransitionAnimIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getTransitionKeyValue4Profile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 1268
    return v3
.end method

.method public onPlaybackMode()V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 686
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 687
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    .line 688
    const v1, 0x7f09008a

    const v2, 0x2040178

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 689
    .local v0, menuItem:Landroid/view/MenuItem;
    const v1, 0x20800c3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 690
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 692
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNoUpdateControlBar:Z

    if-eqz v1, :cond_0

    .line 694
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNoUpdateControlBar:Z

    .line 700
    :goto_0
    return v4

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V

    goto :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2
    .parameter "footer"

    .prologue
    .line 2028
    instance-of v1, p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    if-eqz v1, :cond_0

    .line 2030
    check-cast p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    .end local p1
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findRimButton(I)Lcom/htc/widget/HtcRimButton;

    move-result-object v0

    .line 2031
    .local v0, playBtn:Lcom/htc/widget/HtcRimButton;
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v1, :cond_1

    const v1, 0x20800b6

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 2033
    .end local v0           #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_0
    return-void

    .line 2031
    .restart local v0       #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_1
    const v1, 0x20800bb

    goto :goto_0
.end method

.method public onRepeatPause(I)V
    .locals 2
    .parameter "nDelay"

    .prologue
    .line 1789
    move v0, p1

    .line 1791
    .local v0, nDelayTime:I
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$10;

    invoke-direct {v1, p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D$10;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;I)V

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1798
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 734
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 737
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    :goto_0
    return-void

    .line 739
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 740
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    .line 743
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 745
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPlayTarget()Z

    .line 763
    :goto_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 759
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_1
.end method

.method public onRewTarget()V
    .locals 0

    .prologue
    .line 1271
    return-void
.end method

.method public onSettings()V
    .locals 0

    .prologue
    .line 1273
    return-void
.end method

.method protected onStart()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 820
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStart()V

    .line 821
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onStart"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v8

    if-nez v8, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    .line 829
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkLaunchOtherSlideshow()I

    move-result v1

    .line 830
    .local v1, launchType:I
    const/4 v8, -0x3

    if-eq v8, v1, :cond_3

    .line 832
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-ltz v8, :cond_2

    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 834
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-interface {v8, v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 835
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_2

    .line 837
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_back_index"

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 839
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemIndex"

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 842
    .local v6, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemfullpath"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Slideshow][onStart]: Set CurPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Set EntPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #strFullPath:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshowByType(IZ)V

    .line 849
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    goto :goto_0

    .line 854
    :cond_3
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 856
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "slide_show_folder_picker_setting"

    invoke-virtual {v8, v9, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 858
    .local v5, strFolderTypeKeyValue:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 860
    const/4 v4, 0x0

    .line 861
    .local v4, strFolderType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 862
    .local v2, strBucketId:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 863
    .local v3, strFolderName:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 865
    .local v7, type:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 866
    :cond_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 867
    :cond_5
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 868
    :cond_6
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 869
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 871
    :cond_7
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 873
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 875
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 876
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 878
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    const-string v9, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 879
    const v8, 0x7f0a004d

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 883
    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_8

    .line 884
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 885
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 886
    iput-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 889
    :cond_8
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 891
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_b

    .line 893
    :cond_9
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onStart]: mImageList is Null or Zero !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    .line 881
    :cond_a
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    goto :goto_2

    .line 898
    :cond_b
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    .line 899
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v8, Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v9, v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;)Z

    .line 902
    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-nez v8, :cond_c

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 904
    :cond_c
    invoke-direct {p0, v10, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    goto/16 :goto_0
.end method

.method public onStatusChange(I)V
    .locals 2
    .parameter "nStatus"

    .prologue
    .line 1573
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onStatusChange]:"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne p1, v0, :cond_0

    .line 1576
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 1577
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 813
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStop()V

    .line 816
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1312
    return-void
.end method

.method public pauseMusic()V
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1362
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][pauseMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1366
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->abandonAudioFocus()V

    .line 1367
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1368
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1371
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][pauseMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_1
    return-void
.end method

.method public playMusic()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1316
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v3, :cond_1

    .line 1318
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1322
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestAudioFocus()V

    .line 1324
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1325
    iput v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1327
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Pause -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    :cond_0
    :goto_0
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: End"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :cond_1
    return-void

    .line 1329
    :cond_2
    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    if-ne v3, v5, :cond_0

    .line 1331
    const/4 v1, 0x0

    .line 1332
    .local v1, fileA:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #fileA:Ljava/io/File;
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1335
    .restart local v1       #fileA:Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestAudioFocus()V

    .line 1337
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1338
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1339
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1340
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1341
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1343
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1345
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Stop -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, ex:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1348
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1349
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1351
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Play Music Start NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2002
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
    .line 1970
    const/4 v0, 0x0

    return v0
.end method

.method public showErrorDialog()V
    .locals 1

    .prologue
    .line 1583
    const v0, 0x1b669

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showDialog(I)V

    .line 1584
    return-void
.end method

.method public stopMusic()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1378
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][stopMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->abandonAudioFocus()V

    .line 1382
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1383
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1385
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][stopMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    :cond_0
    return-void
.end method
