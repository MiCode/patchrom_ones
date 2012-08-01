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

.field private mOnPrepareOptionsMenuFirstCalled:Z

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
    .line 98
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

    .line 79
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 112
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->SPECIFY_DIRECTION:Z

    .line 113
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->DIRECTION_FORWARD:Z

    .line 114
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->DIRECTION_BACKWARD:Z

    .line 120
    iput v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 121
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    .line 122
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    .line 123
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    .line 125
    iput v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->MUSIC_STATE_STOP:I

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->MUSIC_STATE_PLAYING:I

    .line 127
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->MUSIC_STATE_PAUSE:I

    .line 130
    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderBucketId:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 137
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    .line 138
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 139
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnPrepareOptionsMenuFirstCalled:Z

    .line 145
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 146
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    .line 148
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 157
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 158
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    .line 166
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    .line 167
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBackupIsPlayingFlag:Z

    .line 171
    new-instance v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    .line 175
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurDirection:Z

    .line 176
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMoveNext:Z

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    .line 182
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 183
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    .line 184
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    .line 190
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 660
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$1;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1123
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$2;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    .line 1182
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$3;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    .line 1740
    return-void
.end method

.method private ReleaseBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "aView"

    .prologue
    .line 1260
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1261
    .local v1, dw:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 1262
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1263
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1265
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1269
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private ReleaseNextViewOnSwitcher()V
    .locals 0

    .prologue
    .line 1274
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1422
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1424
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][requestAudioFocus]: Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1426
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    .line 1427
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    .line 1429
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    .line 1433
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPrevious()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/addons/slideshow/Slideshow3D;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/album/addons/slideshow/Slideshow3D;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPlay()V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/addons/slideshow/Slideshow3D;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/Slideshow3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/addons/slideshow/Slideshow3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/addons/slideshow/Slideshow3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/album/addons/slideshow/Slideshow3D;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/album/addons/slideshow/Slideshow3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    return-void
.end method

.method private attachMediaController()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x0

    .line 415
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/slideshow/SlideShowController;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 417
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->setControllerEventListener(Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;)V

    .line 419
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0x27

    const v4, 0x20800c0

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 420
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0x24

    const v4, 0x20800b6

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 421
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0xf

    const v4, 0x20800b4

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 423
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 426
    .local v6, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 427
    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 428
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 430
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 431
    .local v7, rootLayout:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v7, v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 434
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonNext;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonNext;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    new-instance v2, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonPrev;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$ControlButtonPrev;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 435
    return-void
.end method

.method private cancelPost()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 959
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 596
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_1

    .line 598
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 599
    .local v0, index:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 600
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

    .line 601
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 605
    .end local v0           #index:I
    :goto_0
    return-void

    .line 604
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][initLayout]: initLayout NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchSetting()V
    .locals 3

    .prologue
    .line 707
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 708
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->startActivity(Landroid/content/Intent;)V

    .line 711
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    .line 712
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBackupIsPlayingFlag:Z

    .line 713
    return-void
.end method

.method private loadImage(ZZ)V
    .locals 6
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    const/4 v4, 0x1

    .line 1024
    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    if-eqz v3, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-interface {v3, v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 1029
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    .line 1033
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

    .line 1036
    :cond_3
    iget v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 1039
    .local v2, nNewPosition:I
    :cond_4
    if-eqz p2, :cond_b

    move v3, v4

    :goto_1
    add-int/2addr v2, v3

    .line 1040
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 1041
    const/4 v2, 0x0

    .line 1042
    :cond_5
    if-gez v2, :cond_6

    .line 1043
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1044
    :cond_6
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_0

    .line 1049
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

    .line 1051
    :cond_9
    iput v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 1065
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

    .line 1066
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    .line 1067
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setTransitionAnim(ZZ)V

    .line 1068
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updatePrevNextButtons()V

    .line 1070
    const/4 v1, 0x0

    .line 1097
    .local v1, mTempBmp:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 1039
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

    .line 1143
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1144
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 1147
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 1148
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 1150
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    .line 1151
    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    .prologue
    .line 1154
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 1161
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1162
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 1164
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    .line 1165
    return-void

    .line 1158
    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    goto :goto_0
.end method

.method private onControlbarNext()V
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doNextImage()Z

    .line 1876
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1877
    return-void
.end method

.method private onControlbarPause()V
    .locals 1

    .prologue
    .line 1862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    .line 1863
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPauseTarget()V

    .line 1864
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1865
    :cond_0
    return-void
.end method

.method private onControlbarPlay()V
    .locals 1

    .prologue
    .line 1869
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPlayTarget()Z

    .line 1870
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1871
    :cond_0
    return-void
.end method

.method private onControlbarPrevious()V
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPreviousImage()Z

    .line 1882
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1883
    return-void
.end method

.method private post(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    if-nez v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 966
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1396
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1397
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    .line 1399
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 1401
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 1403
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/album/addons/slideshow/Slideshow3D$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    .line 1406
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow3D][requestAudioFocus]: Request audio focus"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1409
    .local v0, ret:I
    if-eq v0, v4, :cond_2

    .line 1411
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

    .line 1414
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1416
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    .line 1418
    .end local v0           #ret:I
    :cond_3
    return-void
.end method

.method private retrieveSettings()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 518
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_duration_setting"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, interval:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    add-int/lit16 v6, v6, 0x320

    iput v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowInterval:I

    .line 521
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v6, p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->syncPreferenceAnimSettings(Landroid/content/Context;)V

    .line 523
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_repeat_setting"

    invoke-virtual {v6, v7, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    .line 525
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_orientation_setting"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, orientation:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOrientation:I

    .line 528
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_transition_setting"

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, transition:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 532
    .local v1, nTransAnimIndex:I
    iget v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 534
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    .line 538
    :cond_0
    iget v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    if-eq v1, v6, :cond_1

    .line 540
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    .line 541
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 547
    :cond_1
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v7, "slide_show_music_enable_setting"

    invoke-virtual {v6, v7, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    .line 548
    iget-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-ne v6, v10, :cond_7

    .line 552
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v7, "slide_show_music_picker_setting"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, strUri:Ljava/lang/String;
    const/4 v5, 0x0

    .line 554
    .local v5, uriTemp:Landroid/net/Uri;
    if-nez v3, :cond_2

    const-string v6, ""

    if-eq v3, v6, :cond_3

    .line 556
    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 559
    :cond_3
    if-nez v5, :cond_4

    .line 561
    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    .line 562
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 563
    sget-object v6, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][Slideshow3D][retrieveSettings]: Uri.parse NG !"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .end local v3           #strUri:Ljava/lang/String;
    .end local v5           #uriTemp:Landroid/net/Uri;
    :goto_0
    return-void

    .line 569
    .restart local v3       #strUri:Ljava/lang/String;
    .restart local v5       #uriTemp:Landroid/net/Uri;
    :cond_4
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v6

    if-eqz v6, :cond_6

    .line 572
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 573
    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    .line 576
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->playMusic()V

    goto :goto_0

    .line 582
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

    .line 455
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 457
    :cond_0
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: init para NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 482
    :cond_1
    :goto_0
    return v1

    .line 461
    :cond_2
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-lt p0, v5, :cond_3

    .line 462
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    add-int/lit8 p0, v5, -0x1

    .line 467
    :cond_3
    move v1, p0

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 469
    :try_start_0
    invoke-interface {p2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 470
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, strPath:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 467
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 476
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v3           #strPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 477
    .local v0, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: searching NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 478
    goto :goto_0

    .line 481
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: no found indicate index, set index 0 !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 482
    goto :goto_0
.end method

.method private setKeepScreenOn(Z)V
    .locals 2
    .parameter "IsScreenOn"

    .prologue
    const/16 v1, 0x80

    .line 1277
    if-eqz p1, :cond_0

    .line 1278
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1281
    :goto_0
    return-void

    .line 1280
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
    .line 592
    return-void
.end method

.method private shouldRotate(II)Z
    .locals 4
    .parameter "h"
    .parameter "w"

    .prologue
    const/4 v2, 0x1

    .line 1107
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1108
    .local v0, screenH:I
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1110
    .local v1, screenW:I
    if-le p1, p2, :cond_1

    .line 1111
    if-ge v0, v1, :cond_2

    .line 1120
    :cond_0
    :goto_0
    return v2

    .line 1115
    :cond_1
    if-ge p1, p2, :cond_2

    .line 1116
    if-gt v0, v1, :cond_0

    .line 1120
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showControlBar(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 1852
    if-eqz p1, :cond_0

    .line 1853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 1857
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V

    .line 1858
    return-void

    .line 1855
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

    .line 1789
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    if-eqz v0, :cond_3

    .line 1791
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 1792
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    .line 1793
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v4, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 1803
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1805
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 1807
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    .line 1809
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 1848
    :cond_2
    :goto_0
    return-void

    .line 1814
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 1815
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_4

    .line 1817
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x2

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(IIZ)V

    .line 1818
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    if-eqz v0, :cond_7

    .line 1820
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 1821
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars()V

    .line 1833
    :goto_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setAlpha(F)V

    .line 1835
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1837
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 1839
    :cond_5
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_6

    .line 1841
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 1845
    :cond_6
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1846
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1831
    :cond_7
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v4, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private updatePrevNextButtons()V
    .locals 3

    .prologue
    .line 971
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-gtz v1, :cond_1

    .line 973
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 994
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4

    .line 996
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 1021
    :goto_1
    return-void

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enablePrevBtn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1019
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 984
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 986
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 990
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enablePrevBtn(Z)V

    goto :goto_0

    .line 1002
    :cond_3
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enableNextBtn(Z)V

    goto :goto_1

    .line 1007
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1009
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    goto :goto_1

    .line 1013
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
    .line 609
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

    .line 610
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 613
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 615
    iput p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 616
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 624
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 627
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    .line 634
    :goto_1
    return-void

    .line 621
    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][updateTitlebar]: mControlBarMgr is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
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
    .line 1101
    return-void
.end method

.method public checkInit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 489
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 491
    :cond_0
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mImageList NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_0
    return v0

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-nez v1, :cond_2

    .line 497
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mSlideShowView NG 0 !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_3

    .line 503
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 509
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 5

    .prologue
    .line 1487
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_transition_setting"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1488
    .local v1, strTransition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1489
    .local v0, nAnimIndex:I
    packed-switch v0, :pswitch_data_0

    .line 1499
    :pswitch_0
    const/4 v0, -0x3

    .end local v0           #nAnimIndex:I
    :pswitch_1
    return v0

    .line 1489
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
    .line 1783
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 1785
    :cond_0
    return-void
.end method

.method public destoryMusic()V
    .locals 2

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1373
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][destoryMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->abandonAudioFocus()V

    .line 1377
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1378
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1381
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][destoryMusic]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 1440
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1442
    .local v0, keyCode:I
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1475
    :cond_1
    :goto_0
    return v1

    .line 1444
    :cond_2
    const/16 v2, 0x4f

    if-ne v0, v2, :cond_5

    .line 1448
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1449
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1450
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1451
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1475
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1454
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1458
    :cond_5
    const/16 v2, 0x55

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_7

    .line 1461
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 1467
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
    .line 2022
    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1726
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1728
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/album/addons/slideshow/Slideshow3D$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1731
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1732
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 1734
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1735
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1736
    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 1965
    :goto_0
    return-object v0

    .line 1964
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderIndicator NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 1952
    :goto_0
    return-object v0

    .line 1951
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderName NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    const-string v0, ""

    goto :goto_0
.end method

.method public initControlBarManager()V
    .locals 4

    .prologue
    .line 1774
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1775
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 1777
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v2, 0xde

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 1778
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v1

    const v2, 0x3f666666

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setAlpha(F)V

    .line 1779
    return-void
.end method

.method public launchSlideshowByType(IZ)V
    .locals 7
    .parameter "type"
    .parameter "isFromOnStart"

    .prologue
    const/4 v6, 0x0

    .line 1504
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

    .line 1505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1522
    :goto_0
    :pswitch_0
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1523
    const-string v1, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1524
    const-string v1, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemfullpath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
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

    .line 1526
    const-string v1, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewSingleImage"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1527
    const-string v1, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "folder_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1528
    const-string v1, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_folder_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    const-string v1, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_bucket_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    const-string v1, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photoIds"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1531
    if-eqz p2, :cond_0

    .line 1533
    const-string v1, "isInsideSlideshow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1536
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->startActivity(Landroid/content/Intent;)V

    .line 1537
    return-void

    .line 1513
    :pswitch_1
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1517
    :pswitch_2
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOWFUSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1507
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

    .line 1170
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1171
    .local v1, ret:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1173
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1174
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1175
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1178
    .local v0, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1179
    return-object v1
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 2017
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onGoBack()V

    .line 2018
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 1696
    const v3, 0xea60

    if-ne p1, v3, :cond_2

    .line 1698
    const/4 v3, -0x1

    if-ne v3, p2, :cond_1

    .line 1700
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1701
    .local v1, selectSoundUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1703
    .local v0, csValue:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1704
    .local v2, strFileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1707
    if-eqz v2, :cond_0

    .line 1710
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_picker_setting"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1711
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_enable_setting"

    invoke-virtual {v3, v4, v6}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1714
    :cond_0
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_ask_music_setting"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1718
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_1
    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 1722
    :cond_2
    return-void
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 1936
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 1926
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
    .line 1888
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mWasControlShowing:Z

    .line 1889
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1916
    :goto_0
    return-void

    .line 1892
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSetting()V

    goto :goto_0

    .line 1896
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1898
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    goto :goto_0

    .line 1902
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPlay()V

    goto :goto_0

    .line 1907
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPrevious()V

    goto :goto_0

    .line 1910
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarNext()V

    goto :goto_0

    .line 1913
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onGoBack()V

    goto :goto_0

    .line 1889
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
    .line 196
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    .line 198
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    .line 199
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onCreate"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v8, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v8, :cond_0

    .line 202
    iget-object v8, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 206
    :cond_0
    new-instance v8, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 207
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_setting_mode"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    .line 209
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    invoke-virtual {v8, p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 211
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onCreate]: init SlideshowSetingManager NG !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 411
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkLaunchOtherSlideshow()I

    move-result v2

    .line 218
    .local v2, launchType:I
    const/4 v8, -0x3

    if-eq v8, v2, :cond_2

    .line 220
    const/4 v8, 0x0

    invoke-virtual {p0, v2, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshowByType(IZ)V

    .line 221
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "isInsideSlideshow"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 226
    .local v1, isInsideSlideshow:Z
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_ask_music_setting"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 227
    .local v0, askMusic:Z
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_music_enable_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    .line 229
    if-nez v1, :cond_3

    .line 231
    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-nez v8, :cond_b

    if-eqz v0, :cond_b

    .line 233
    const v8, 0x36870

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showDialog(I)V

    .line 234
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 242
    :cond_3
    :goto_1
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][Slideshow3D][onCreate]: Run 3D Slideshow !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "folder_type"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 249
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 251
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "mFolderType = null, change folder type to com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v8, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "key_bucket_id"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 256
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 257
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 261
    :cond_5
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "album_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 263
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "key_folder_name"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 294
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v8, p0, v9}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 296
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v8, :cond_7

    .line 302
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "photoIds"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 303
    .local v3, nPhotoIds:[I
    if-eqz v3, :cond_10

    .line 305
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

    .line 306
    invoke-static {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 318
    .end local v3           #nPhotoIds:[I
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_11

    .line 321
    :cond_8
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 323
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onCreate]: Preference Folder is not exist, Set folder to Default folder !! (Dock Mode)"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 327
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 328
    const v8, 0x7f0a004e

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 331
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

    .line 333
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 336
    :cond_9
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_11

    .line 338
    :cond_a
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onCreate]: mImageList is Null or Zero !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    .line 238
    :cond_b
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_ask_music_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 265
    :cond_c
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 267
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "slide_show_folder_picker_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, strFolderType:Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 272
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 274
    .local v7, type:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 275
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 276
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 277
    :cond_d
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 278
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 279
    :cond_e
    :goto_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 280
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

    .line 285
    .end local v7           #type:Ljava/util/StringTokenizer;
    :cond_f
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 286
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 287
    const v8, 0x7f0a004e

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 290
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

    .line 310
    .end local v5           #strFolderType:Ljava/lang/String;
    .restart local v3       #nPhotoIds:[I
    :cond_10
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 311
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

    .line 344
    .end local v3           #nPhotoIds:[I
    :cond_11
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    .line 345
    const v8, 0x7f030037

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setContentView(I)V

    .line 348
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemIndex"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 349
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_back_index"

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    .line 350
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

    .line 351
    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-eqz v8, :cond_12

    .line 353
    const/4 v6, 0x0

    .line 354
    .local v6, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemfullpath"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v8, v6, v9}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v8

    iput v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 357
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

    .line 360
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

    .line 361
    :cond_14
    new-instance v8, Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-direct {v8, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 362
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/slideshow/SlideshowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/slideshow/SlideshowView;->setPlayIndex(I)V

    .line 364
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    new-instance v9, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;

    invoke-direct {v9}, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;-><init>()V

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideAnimatorsFactory(Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;)V

    .line 365
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 366
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v8, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->setEventListener(Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V

    .line 367
    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v8, :cond_15

    .line 369
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v8, p1}, Lcom/htc/sunny2/slideshow/SlideshowView;->create(Landroid/os/Bundle;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    .line 370
    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v8, :cond_18

    .line 372
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onCreate() NG - SlideshowView create"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_5
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v8, Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v9, v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;)Z

    .line 383
    :cond_15
    const v8, 0x7f09003b

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 384
    .local v4, rootLayout:Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 387
    iget-object v8, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v8, :cond_16

    .line 389
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initControlBarManager()V

    .line 391
    :cond_16
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initLayout()V

    .line 392
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 394
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v8

    if-nez v8, :cond_17

    .line 396
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->attachMediaController()V

    .line 400
    :cond_17
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 401
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 402
    const/4 v8, 0x1

    iput v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 405
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 410
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    goto/16 :goto_0

    .line 376
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

    .line 1574
    sparse-switch p1, :sswitch_data_0

    .line 1689
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    :goto_1
    return-object v5

    .line 1577
    :sswitch_0
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0021

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0022

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1581
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$4;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$4;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1589
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$5;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$5;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1598
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$6;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$6;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1606
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_1

    .line 1608
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :sswitch_1
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0023

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1610
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1611
    .local v2, inflater:Landroid/view/LayoutInflater;
    if-nez v2, :cond_0

    .line 1613
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get LayoutInflater"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1617
    :cond_0
    const v5, 0x7f030038

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1618
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_1

    .line 1620
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get slide_show_ask_music layout"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1624
    :cond_1
    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1625
    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1626
    .local v3, textView:Landroid/widget/TextView;
    if-nez v3, :cond_2

    .line 1628
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get ask_text TextView"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1631
    :cond_2
    const v5, 0x7f0a0024

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1633
    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1634
    .restart local v3       #textView:Landroid/widget/TextView;
    if-nez v3, :cond_3

    .line 1636
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get remind_text TextView"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1639
    :cond_3
    const v5, 0x7f0a015d

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1641
    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    .line 1642
    .local v1, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v1, :cond_4

    .line 1644
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreateDialog] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1648
    :cond_4
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1650
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$7;

    invoke-direct {v5, p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D$7;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1664
    const v5, 0x20401ee

    new-instance v6, Lcom/htc/album/addons/slideshow/Slideshow3D$8;

    invoke-direct {v6, p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D$8;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1675
    new-instance v5, Lcom/htc/album/addons/slideshow/Slideshow3D$9;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$9;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1684
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_1

    .line 1574
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

    .line 1977
    const/4 v0, 0x0

    .line 1978
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1979
    .local v1, context:Landroid/content/Context;
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 1981
    const/16 v3, 0x27

    const v4, 0x20800c0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1982
    const/16 v3, 0x24

    const v4, 0x20800b6

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1983
    const/16 v3, 0xf

    const v4, 0x20800b4

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1985
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 1986
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 1988
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 1992
    :cond_0
    return-object v0
.end method

.method public onCurIndexChange(II)V
    .locals 2
    .parameter "nIndex"
    .parameter "ntotal"

    .prologue
    .line 1542
    if-nez p2, :cond_0

    .line 1544
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowSettingManager][onCurIndexChange]: no image !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    .line 1551
    :goto_0
    return-void

    .line 1549
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    .line 1550
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updatePrevNextButtons()V

    goto :goto_0
.end method

.method public onDLNASupportRange()Z
    .locals 1

    .prologue
    .line 1201
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 899
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->destoryMusic()V

    .line 903
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 905
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    .line 907
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->destroy()V

    .line 908
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 913
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 914
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 916
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 917
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onDestroy()V

    .line 918
    return-void
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 2012
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1388
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

    .line 1389
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 1391
    const/4 v0, 0x0

    return v0
.end method

.method public onFfwdTarget()V
    .locals 0

    .prologue
    .line 1197
    return-void
.end method

.method public onFinishInflate(ILandroid/view/View;)V
    .locals 0
    .parameter "resourceId"
    .parameter "v"

    .prologue
    .line 1288
    return-void
.end method

.method public onGoBack()V
    .locals 0

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 1205
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 944
    packed-switch p1, :pswitch_data_0

    .line 953
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 950
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_0

    .line 944
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
    .line 694
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 701
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 697
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSetting()V

    goto :goto_0

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x7f09008a
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuPress()V
    .locals 0

    .prologue
    .line 1199
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 754
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 757
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    :goto_0
    return-void

    .line 759
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

    .line 766
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 767
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    .line 770
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 779
    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    if-eqz v0, :cond_3

    .line 781
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    .line 785
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

    .line 1208
    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPauseTarget]: onPauseTarget()"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1210
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1214
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1215
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1219
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 1221
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPause()Z

    .line 1224
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->pauseMusic()V

    .line 1226
    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 1227
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 1228
    return-void
.end method

.method public onPlayTarget()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1231
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPlayTarget]: onPlayTarget()"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/slideshow/SlideshowView;->create(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    .line 1235
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v0, :cond_0

    .line 1237
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate() NG - SlideshowView create"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;)Z

    .line 1240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    .line 1242
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1243
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 1245
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPlay()Z

    .line 1247
    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 1248
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    .line 1249
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->playMusic()V

    .line 1250
    return v2
.end method

.method public onPlaybackMode()V
    .locals 0

    .prologue
    .line 1257
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 672
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnPrepareOptionsMenuFirstCalled:Z

    if-eqz v1, :cond_0

    .line 674
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnPrepareOptionsMenuFirstCalled:Z

    .line 675
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 676
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    .line 677
    const v1, 0x7f09008a

    const v2, 0x2040178

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 678
    .local v0, menuItem:Landroid/view/MenuItem;
    const v1, 0x20800c3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 679
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 685
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :goto_0
    return v4

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V

    goto :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2
    .parameter "footer"

    .prologue
    .line 1998
    instance-of v1, p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    if-eqz v1, :cond_0

    .line 2000
    check-cast p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    .end local p1
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findRimButton(I)Lcom/htc/widget/HtcRimButton;

    move-result-object v0

    .line 2001
    .local v0, playBtn:Lcom/htc/widget/HtcRimButton;
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v1, :cond_1

    const v1, 0x20800b6

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 2003
    .end local v0           #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_0
    return-void

    .line 2001
    .restart local v0       #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_1
    const v1, 0x20800bb

    goto :goto_0
.end method

.method public onRepeatPause(I)V
    .locals 2
    .parameter "nDelay"

    .prologue
    .line 1759
    move v0, p1

    .line 1761
    .local v0, nDelayTime:I
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$10;

    invoke-direct {v1, p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D$10;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;I)V

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1768
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 719
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 722
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 724
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

    .line 725
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    .line 728
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPlayTarget()Z

    .line 748
    :goto_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_3

    .line 742
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 744
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_1
.end method

.method public onRewTarget()V
    .locals 0

    .prologue
    .line 1253
    return-void
.end method

.method public onSettings()V
    .locals 0

    .prologue
    .line 1255
    return-void
.end method

.method protected onStart()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 805
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStart()V

    .line 806
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onStart"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v8

    if-nez v8, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    .line 814
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkLaunchOtherSlideshow()I

    move-result v1

    .line 815
    .local v1, launchType:I
    const/4 v8, -0x3

    if-eq v8, v1, :cond_3

    .line 817
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-ltz v8, :cond_2

    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 819
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-interface {v8, v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 820
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_2

    .line 822
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_back_index"

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemIndex"

    iget v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 826
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 827
    .local v6, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemfullpath"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
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

    .line 833
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #strFullPath:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshowByType(IZ)V

    .line 834
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    goto :goto_0

    .line 839
    :cond_3
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 841
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "slide_show_folder_picker_setting"

    invoke-virtual {v8, v9, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 843
    .local v5, strFolderTypeKeyValue:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 845
    const/4 v4, 0x0

    .line 846
    .local v4, strFolderType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 847
    .local v2, strBucketId:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 848
    .local v3, strFolderName:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 850
    .local v7, type:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 851
    :cond_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 852
    :cond_5
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 853
    :cond_6
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 854
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

    .line 856
    :cond_7
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 858
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 860
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 861
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 863
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    const-string v9, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 864
    const v8, 0x7f0a004d

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 868
    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_8

    .line 869
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 870
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 871
    iput-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 874
    :cond_8
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 876
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_b

    .line 878
    :cond_9
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onStart]: mImageList is Null or Zero !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    .line 866
    :cond_a
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    goto :goto_2

    .line 883
    :cond_b
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    .line 884
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v8, Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v9, v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;)Z

    .line 887
    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-nez v8, :cond_c

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 889
    :cond_c
    invoke-direct {p0, v10, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    goto/16 :goto_0
.end method

.method public onStatusChange(I)V
    .locals 2
    .parameter "nStatus"

    .prologue
    .line 1555
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onStatusChange]:"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne p1, v0, :cond_0

    .line 1558
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 1559
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 798
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStop()V

    .line 801
    return-void
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1294
    return-void
.end method

.method public pauseMusic()V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1344
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][pauseMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1348
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->abandonAudioFocus()V

    .line 1349
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1350
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1353
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][pauseMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    :cond_1
    return-void
.end method

.method public playMusic()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1298
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v3, :cond_1

    .line 1300
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1304
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestAudioFocus()V

    .line 1306
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1307
    iput v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1309
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Pause -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :cond_0
    :goto_0
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: End"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :cond_1
    return-void

    .line 1311
    :cond_2
    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    if-ne v3, v5, :cond_0

    .line 1313
    const/4 v1, 0x0

    .line 1314
    .local v1, fileA:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #fileA:Ljava/io/File;
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1317
    .restart local v1       #fileA:Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestAudioFocus()V

    .line 1319
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1320
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1321
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1322
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1323
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1325
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1327
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Stop -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, ex:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1330
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1331
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1333
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Play Music Start NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 1972
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
    .line 1940
    const/4 v0, 0x0

    return v0
.end method

.method public showErrorDialog()V
    .locals 1

    .prologue
    .line 1565
    const v0, 0x1b669

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showDialog(I)V

    .line 1566
    return-void
.end method

.method public stopMusic()V
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1360
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][stopMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->abandonAudioFocus()V

    .line 1364
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1365
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1367
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][stopMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    :cond_0
    return-void
.end method
