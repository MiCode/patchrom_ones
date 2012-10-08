.class public Lcom/htc/album/addons/slideshow/SlideshowFusion;
.super Landroid/app/Activity;
.source "SlideshowFusion.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;
.implements Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;,
        Lcom/htc/album/addons/slideshow/SlideshowFusion$TemplateBroadcastReceiver;,
        Lcom/htc/album/addons/slideshow/SlideshowFusion$ControlButtonPrev;,
        Lcom/htc/album/addons/slideshow/SlideshowFusion$ControlButtonNext;
    }
.end annotation


# static fields
.field public static final AUTO_HIDE_CONTROLBAR_INTERVAL:I = 0xdac

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SLIDESHOW_INTERVAL:I = 0x3

.field private static final DEFAULT_TRANSITION_INTERVAL:I = 0x320

.field static final DELAY_TIME:I = 0xbb8

.field public static final FOOT_BAR_SLIDESHOW:I = 0xde

.field public static final HEADER_BAR_SLIDESHOW:I = 0x6f

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MSG_HIDE_CMD_BAR:I = 0x20

.field public static final MSG_SHOW_CMD_BAR:I = 0x10

.field public static final ORIENTATION_ACTUAL_STR:Ljava/lang/String; = "1"

.field private static final ORIENTATION_BESTFIT:I = 0x0

.field private static final SLIDESHOW_ERROR_DIALOG:I = 0x1b669

.field private static final SLIDESHOW_MUSIC_DIALOG:I = 0x36870

.field public static final TRANSITION_DEFAULT:I = 0x6

.field private static final mMusicPickerRequestCode:I = 0xea60


# instance fields
.field private final DEFAULT_NEXT_TIME:I

.field private final DIRECTION_BACKWARD:Z

.field private final DIRECTION_FORWARD:Z

.field private final MUSIC_STATE_PAUSE:I

.field private final MUSIC_STATE_PLAYING:I

.field private final MUSIC_STATE_STOP:I

.field private final SPECIFY_DIRECTION:Z

.field private final cmdBarHandler:Landroid/os/Handler;

.field private initialQuick:Z

.field private lastCancelledTime:J

.field private lastPostedInterval:J

.field private lastPostedTime:J

.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field mAnimationInt:I

.field private mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field mBackupIsPlayingFlag:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBucketId:Ljava/lang/String;

.field protected mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

.field private mCurDirection:Z

.field private mCurFolderBucketId:Ljava/lang/String;

.field private mCurFolderIndicator:Ljava/lang/String;

.field private mCurFolderName:Ljava/lang/String;

.field private mCurMode:Ljava/lang/String;

.field private mCurMoveNext:Z

.field private mCurTransitionAnimIndex:I

.field mCurrentID:I

.field private mCurrentPosition:I

.field private mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

.field private mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

.field private mEnableMusic:Z

.field private mEnterPosition:I

.field private mFittingOrientation:I

.field private mFolderType:Ljava/lang/String;

.field private mFxView:Lcom/htc/fusion/fx/FxView;

.field mHandler:Landroid/os/Handler;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mIsControlShowing:Z

.field private mIsHeadsetHook:Z

.field private mIsPlaying:Z

.field mIsSettingShown:Z

.field private mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicState:I

.field private mNoUpdateControlBar:Z

.field private mOrientation:I

.field private mPausedByNoRepeat:Z

.field private mPosted:Z

.field mRandom:Ljava/util/Random;

.field private mRepeat:Z

.field mRunnableNext:Ljava/lang/Runnable;

.field mRunnablePrev:Ljava/lang/Runnable;

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field private mSettingsInterval:I

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

.field private mTransitionAnimIndex:I

.field private mUriMusic:Landroid/net/Uri;

.field private mWasControlShowing:Z

.field private timeLeftToNextPost:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentID:I

    .line 85
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRandom:Ljava/util/Random;

    .line 87
    const/16 v0, 0x1388

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEFAULT_NEXT_TIME:I

    .line 89
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    .line 91
    iput-wide v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedTime:J

    .line 92
    iput-wide v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedInterval:J

    .line 93
    iput-wide v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastCancelledTime:J

    .line 94
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    .line 96
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 98
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 99
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    .line 125
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->SPECIFY_DIRECTION:Z

    .line 126
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DIRECTION_FORWARD:Z

    .line 127
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DIRECTION_BACKWARD:Z

    .line 129
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 135
    iput v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    .line 136
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioMgr:Landroid/media/AudioManager;

    .line 137
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;

    .line 138
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsHeadsetHook:Z

    .line 140
    iput v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->MUSIC_STATE_STOP:I

    .line 141
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->MUSIC_STATE_PLAYING:I

    .line 142
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->MUSIC_STATE_PAUSE:I

    .line 145
    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    .line 146
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderBucketId:Ljava/lang/String;

    .line 147
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 148
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderIndicator:Ljava/lang/String;

    .line 152
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mWasControlShowing:Z

    .line 153
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsControlShowing:Z

    .line 154
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mNoUpdateControlBar:Z

    .line 160
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 161
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    .line 163
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 167
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPosted:Z

    .line 168
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 169
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    .line 171
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    .line 181
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsSettingShown:Z

    .line 182
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBackupIsPlayingFlag:Z

    .line 189
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurDirection:Z

    .line 190
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMoveNext:Z

    .line 191
    iput v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mShuffleList:Ljava/util/ArrayList;

    .line 202
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 203
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    .line 205
    iput v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAnimationInt:I

    .line 206
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnableNext:Ljava/lang/Runnable;

    .line 232
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnablePrev:Ljava/lang/Runnable;

    .line 250
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cmdBarHandler:Landroid/os/Handler;

    .line 267
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 268
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 1713
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1513
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1516
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;

    .line 1517
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioMgr:Landroid/media/AudioManager;

    .line 1519
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsHeadsetHook:Z

    .line 1528
    :goto_0
    return-void

    .line 1525
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][abandonAudioFocus]mAudioMgr null"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/album/addons/slideshow/SlideshowFusion;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/addons/slideshow/SlideshowFusion;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarNext()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPrevious()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPlay()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/album/addons/slideshow/SlideshowFusion;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateTitlebar(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsControlShowing:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsControlShowing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mWasControlShowing:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mWasControlShowing:Z

    return p1
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideShowController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPause()V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadNextImage()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadPreviousImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/album/addons/slideshow/SlideshowFusion;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    return v0
.end method

.method private attachMediaController()V
    .locals 14

    .prologue
    const v4, 0x20800b6

    const/16 v3, 0x24

    const/4 v13, -0x2

    const/4 v2, 0x0

    .line 548
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/slideshow/SlideShowController;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 550
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->setControllerEventListener(Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;)V

    .line 552
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 563
    :goto_0
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 566
    .local v11, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 567
    const/16 v0, 0xe

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 568
    const/4 v0, -0x1

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 570
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 571
    .local v12, rootLayout:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v12, v0, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 574
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    new-instance v1, Lcom/htc/album/addons/slideshow/SlideshowFusion$ControlButtonNext;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$ControlButtonNext;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    new-instance v2, Lcom/htc/album/addons/slideshow/SlideshowFusion$ControlButtonPrev;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$ControlButtonPrev;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 575
    return-void

    .line 558
    .end local v11           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12           #rootLayout:Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v8, 0x27

    const v9, 0x20800c0

    move-object v6, p0

    move v7, v2

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 559
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 560
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/16 v3, 0xf

    const v4, 0x20800b4

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    goto :goto_0
.end method

.method private cancelPost()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnableNext:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 913
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnablePrev:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 915
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPosted:Z

    .line 917
    return-void
.end method

.method private launchSetting()V
    .locals 3

    .prologue
    .line 1723
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1724
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1726
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->startActivity(Landroid/content/Intent;)V

    .line 1727
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsSettingShown:Z

    .line 1728
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBackupIsPlayingFlag:Z

    .line 1729
    return-void
.end method

.method private loadImage(ZZ)V
    .locals 11
    .parameter "direction"
    .parameter "isMoveNext"

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x1

    .line 2003
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][SlideshowFusion][loadImage] + "

    invoke-static {v6, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    iget-boolean v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    if-eqz v6, :cond_1

    .line 2006
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowFusion][loadImage]mStopAndLeave - "

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    :cond_0
    :goto_0
    return-void

    .line 2010
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v1

    .line 2011
    .local v1, currentIndex:I
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 2012
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SlideshowFusion][loadImage]currIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    if-nez v3, :cond_2

    .line 2016
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowFusion][loadImage]image == null - "

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2021
    :cond_2
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    if-ne v6, v7, :cond_4

    :cond_3
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2023
    :cond_4
    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 2027
    .local v5, nNewPosition:I
    :cond_5
    if-eqz p2, :cond_e

    move v6, v7

    :goto_1
    add-int/2addr v5, v6

    .line 2028
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_6

    const/4 v5, 0x0

    .line 2029
    :cond_6
    if-gez v5, :cond_7

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 2030
    :cond_7
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getShuffleIndex(I)I

    move-result v8

    invoke-interface {v6, v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 2031
    if-eqz v3, :cond_0

    .line 2033
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v3

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    if-ne v6, v7, :cond_9

    :cond_8
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-ne v5, v6, :cond_5

    .line 2035
    :cond_a
    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 2048
    .end local v5           #nNewPosition:I
    :cond_b
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v1

    .line 2049
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SlideshowFusion][loadImage]load "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "th image."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->retrieveSettings()V

    .line 2053
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    .line 2054
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updatePrevNextButtons()V

    .line 2056
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v6, :cond_d

    .line 2058
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v6}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 2059
    .local v2, decoderHander:Landroid/os/Handler;
    if-eqz v2, :cond_d

    .line 2061
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    .line 2062
    .local v0, DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iput v1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    .line 2063
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    const/4 v8, 0x6

    if-ne v6, v8, :cond_f

    .line 2065
    const/4 v6, 0x4

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 2066
    iput v7, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    .line 2079
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 2080
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 2081
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v6

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    .line 2082
    iput-boolean p2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    .line 2083
    iput v7, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    .line 2084
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v6, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 2085
    const v6, 0xc350

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2087
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2091
    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .end local v2           #decoderHander:Landroid/os/Handler;
    .end local v4           #msg:Landroid/os/Message;
    :cond_d
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowFusion][loadImage] - "

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2027
    .restart local v5       #nNewPosition:I
    :cond_e
    const/4 v6, -0x1

    goto/16 :goto_1

    .line 2068
    .end local v5           #nNewPosition:I
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .restart local v2       #decoderHander:Landroid/os/Handler;
    :cond_f
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_10

    .line 2070
    iput v10, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 2071
    const/4 v6, 0x0

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    goto :goto_2

    .line 2073
    :cond_10
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eqz v6, :cond_11

    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v6, v7, :cond_11

    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-ne v6, v10, :cond_c

    .line 2076
    :cond_11
    const/4 v6, 0x2

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 2077
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFittingOrientation:I

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    goto :goto_2
.end method

.method private loadNextImage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1986
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadNextImage] + "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1989
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 1990
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    .line 1993
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 1995
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 1997
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadImage(ZZ)V

    .line 1998
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadNextImage] - "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    .prologue
    .line 1965
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadPreviousImage] + "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-nez v0, :cond_1

    .line 1968
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 1969
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    .line 1976
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1978
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 1980
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadImage(ZZ)V

    .line 1981
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadPreviousImage] - "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    return-void

    .line 1973
    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    goto :goto_0
.end method

.method private onControlbarNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1856
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1858
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 1859
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZZ)V

    .line 1861
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    .line 1862
    return-void
.end method

.method private onControlbarPause()V
    .locals 1

    .prologue
    .line 1733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mWasControlShowing:Z

    .line 1734
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onPauseTarget()V

    .line 1735
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1739
    :cond_0
    return-void
.end method

.method private onControlbarPlay()V
    .locals 1

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onPlayTarget()Z

    .line 1744
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1748
    :cond_0
    return-void
.end method

.method private onControlbarPrevious()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1845
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1847
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 1848
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZZ)V

    .line 1850
    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    .line 1851
    return-void
.end method

.method private post(JZ)V
    .locals 1
    .parameter "interval"
    .parameter "isMoveNext"

    .prologue
    .line 922
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZZ)V

    .line 923
    return-void
.end method

.method private post(JZZ)V
    .locals 2
    .parameter "interval"
    .parameter "isMoveNext"
    .parameter "isByUser"

    .prologue
    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedTime:J

    .line 929
    iput-wide p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedInterval:J

    .line 930
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    if-nez v0, :cond_0

    .line 932
    if-eqz p3, :cond_1

    .line 934
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnableNext:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 940
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPosted:Z

    .line 943
    :cond_0
    return-void

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnablePrev:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1487
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioMgr:Landroid/media/AudioManager;

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 1491
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 1493
    new-instance v1, Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;Lcom/htc/album/addons/slideshow/SlideshowFusion$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;

    .line 1498
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowFusion$SlideShowAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1499
    .local v0, ret:I
    if-eq v0, v4, :cond_2

    .line 1501
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusion][requestAudioFocus]: request audio focus fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1506
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsHeadsetHook:Z

    .line 1508
    .end local v0           #ret:I
    :cond_3
    return-void
.end method

.method private retrieveSettings()V
    .locals 12

    .prologue
    const/16 v11, 0x1388

    const/16 v10, 0x9c4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1270
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_duration_setting"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1271
    .local v1, interval:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingsInterval:I

    .line 1272
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1274
    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingsInterval:I

    packed-switch v5, :pswitch_data_0

    .line 1286
    :pswitch_0
    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    .line 1317
    :goto_0
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_repeat_setting"

    invoke-virtual {v5, v6, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    .line 1320
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_orientation_setting"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1321
    .local v0, fit_orientation:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFittingOrientation:I

    .line 1324
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_transition_setting"

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1325
    .local v3, transition:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    .line 1329
    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v5, v6, :cond_0

    .line 1332
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->stopMusic()V

    .line 1338
    :cond_0
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_enable_setting"

    invoke-virtual {v5, v6, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    .line 1340
    iget-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    if-ne v5, v9, :cond_8

    .line 1344
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_picker_setting"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1345
    .local v2, strUri:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1346
    .local v4, uriTemp:Landroid/net/Uri;
    if-nez v2, :cond_1

    const-string v5, ""

    if-eq v2, v5, :cond_2

    .line 1348
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1351
    :cond_2
    if-nez v4, :cond_5

    .line 1353
    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    .line 1354
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->stopMusic()V

    .line 1355
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][retrieveSettings]: Uri.parse NG !"

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    .end local v2           #strUri:Ljava/lang/String;
    .end local v4           #uriTemp:Landroid/net/Uri;
    :goto_1
    return-void

    .line 1277
    .end local v0           #fit_orientation:Ljava/lang/String;
    .end local v3           #transition:Ljava/lang/String;
    :pswitch_1
    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    goto :goto_0

    .line 1280
    :pswitch_2
    const/16 v5, 0x1964

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 1283
    :pswitch_3
    const/16 v5, 0x1f40

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 1290
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1292
    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingsInterval:I

    packed-switch v5, :pswitch_data_1

    .line 1304
    :pswitch_4
    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 1295
    :pswitch_5
    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 1298
    :pswitch_6
    const/16 v5, 0xdac

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 1301
    :pswitch_7
    const/16 v5, 0xfa0

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 1310
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    add-int/lit16 v5, v5, 0x320

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 1361
    .restart local v0       #fit_orientation:Ljava/lang/String;
    .restart local v2       #strUri:Ljava/lang/String;
    .restart local v3       #transition:Ljava/lang/String;
    .restart local v4       #uriTemp:Landroid/net/Uri;
    :cond_5
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mUriMusic:Landroid/net/Uri;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v5

    if-eqz v5, :cond_7

    .line 1364
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->stopMusic()V

    .line 1365
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mUriMusic:Landroid/net/Uri;

    .line 1368
    :cond_7
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->playMusic()V

    goto :goto_1

    .line 1374
    .end local v2           #strUri:Ljava/lang/String;
    .end local v4           #uriTemp:Landroid/net/Uri;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->stopMusic()V

    goto :goto_1

    .line 1274
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

    .line 1292
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private setKeepScreenOn(Z)V
    .locals 2
    .parameter "IsScreenOn"

    .prologue
    const/16 v1, 0x80

    .line 1079
    if-eqz p1, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1083
    :goto_0
    return-void

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private showControlBar(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 1871
    if-eqz p1, :cond_0

    .line 1872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsControlShowing:Z

    .line 1876
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateControlBar()V

    .line 1877
    return-void

    .line 1874
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsControlShowing:Z

    goto :goto_0
.end method

.method private updatePrevNextButtons()V
    .locals 3

    .prologue
    .line 2129
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][updatePrevNextButtons] + "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2188
    :cond_0
    :goto_0
    return-void

    .line 2136
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-gtz v1, :cond_2

    .line 2160
    :cond_2
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_3

    .line 2187
    :cond_3
    :goto_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][updatePrevNextButtons] - "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2183
    :catch_0
    move-exception v0

    .line 2185
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateTitlebar(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderIndicator:Ljava/lang/String;

    .line 2105
    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 2108
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 2115
    :goto_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_2

    .line 2118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mNoUpdateControlBar:Z

    .line 2119
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->invalidateOptionsMenu()V

    .line 2125
    :goto_2
    return-void

    .line 2102
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][updateTitlebar]: mImageList is null !"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2112
    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][updateTitlebar]: mControlBarMgr is null !"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2123
    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][updateTitlebar] mActionBar is null !"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 2366
    const/4 v0, 0x0

    return v0
.end method

.method public buildShuffleList()V
    .locals 3

    .prologue
    .line 1261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mShuffleList:Ljava/util/ArrayList;

    .line 1262
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1264
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1265
    return-void
.end method

.method public checkInit()Z
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 599
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][checkInit]: mImageList NG !"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    .line 615
    :goto_0
    return v0

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_2

    .line 605
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    .line 611
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 1

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

    move-result v0

    .line 978
    .local v0, nAnimIndex:I
    packed-switch v0, :pswitch_data_0

    .line 987
    :pswitch_0
    const/4 v0, -0x3

    .end local v0           #nAnimIndex:I
    :pswitch_1
    return v0

    .line 978
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destoryMusic()V
    .locals 2

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1472
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->abandonAudioFocus()V

    .line 1474
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1475
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1483
    :goto_0
    return-void

    .line 1480
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][stopMusic]mMediaPlayer null"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 2373
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 2449
    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 874
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 876
    new-instance v1, Lcom/htc/album/addons/slideshow/SlideshowFusion$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;Lcom/htc/album/addons/slideshow/SlideshowFusion$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 879
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 880
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 882
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 884
    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 2353
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 2192
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getShuffleIndex(I)I

    move-result v0

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderIndicator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2300
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderIndicator:Ljava/lang/String;

    .line 2305
    :goto_0
    return-object v0

    .line 2304
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderIndicator NG !"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 2291
    :goto_0
    return-object v0

    .line 2290
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderName NG !"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    const-string v0, ""

    goto :goto_0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 2273
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShuffleIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 2197
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mShuffleList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2199
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][getShuffleIndex]: mShuffleList is null, set index = 0"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    .end local p1
    :goto_0
    return p1

    .line 2203
    .restart local p1
    :cond_0
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 2205
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusion][getShuffleIndex]: request index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", out of list size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2209
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "slide_show_shuffle_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2211
    .local v0, bShuffle:Z
    if-eqz v0, :cond_3

    .line 2212
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 2214
    :cond_3
    iget p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    goto :goto_0
.end method

.method public getTrasitionAnimationID()I
    .locals 5

    .prologue
    .line 968
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_transition_setting"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, strTransition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 971
    .local v0, nAnimIndex:I
    return v0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 3

    .prologue
    .line 2380
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 2381
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 2408
    :goto_0
    return-object v1

    .line 2383
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2384
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 2386
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 2387
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_1

    .line 2390
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    .line 2392
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    new-instance v2, Lcom/htc/album/addons/slideshow/SlideshowFusion$14;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$14;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2407
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    .line 2408
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method public initControlBarManager()V
    .locals 4

    .prologue
    .line 863
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 865
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 867
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v2, 0xde

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 868
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v1

    const v2, 0x3f666666

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setAlpha(F)V

    .line 869
    return-void
.end method

.method public isLaunchSlideshow2D()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 992
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

    move-result v0

    .line 993
    .local v0, nAnimIndex:I
    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLaunchSlideshow3D()Z
    .locals 2

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

    move-result v0

    .line 1000
    .local v0, nAnimIndex:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 1001
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLaunchSlideshowFusionFP()Z
    .locals 2

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

    move-result v0

    .line 959
    .local v0, nAnimIndex:I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 961
    const/4 v1, 0x1

    .line 963
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLaunchSlideshowFusionLS()Z
    .locals 2

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

    move-result v0

    .line 949
    .local v0, nAnimIndex:I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 951
    const/4 v1, 0x1

    .line 953
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchSlideshow2D()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1062
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    const-string v1, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    const-string v1, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemfullpath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v1, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "itemIndex"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1069
    const-string v1, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewSingleImage"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1070
    const-string v1, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "folder_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    const-string v1, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_folder_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const-string v1, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_bucket_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->startActivity(Landroid/content/Intent;)V

    .line 1075
    return-void
.end method

.method public launchSlideshow3D()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1043
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW3D"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const-string v1, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    const-string v1, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemfullpath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string v1, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "itemIndex"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    const-string v1, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewSingleImage"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1051
    const-string v1, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "folder_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    const-string v1, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_folder_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    const-string v1, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_bucket_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    const-string v1, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photoIds"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->startActivity(Landroid/content/Intent;)V

    .line 1057
    return-void
.end method

.method public launchSlideshowByType(IZ)V
    .locals 7
    .parameter "type"
    .parameter "isFromOnStart"

    .prologue
    const/4 v6, 0x0

    .line 1007
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1023
    :goto_0
    :pswitch_0
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    const-string v1, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    const-string v1, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemfullpath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    const-string v1, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "itemIndex"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1027
    const-string v1, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewSingleImage"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1028
    const-string v1, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "folder_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    const-string v1, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_folder_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const-string v1, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_bucket_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    const-string v1, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photoIds"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1032
    if-eqz p2, :cond_0

    .line 1034
    const-string v1, "isInsideSlideshow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1037
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->startActivity(Landroid/content/Intent;)V

    .line 1038
    return-void

    .line 1015
    :pswitch_1
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1018
    :pswitch_2
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW3D"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1009
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
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 2437
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 1230
    const v3, 0xea60

    if-ne p1, v3, :cond_2

    .line 1232
    const/4 v3, -0x1

    if-ne v3, p2, :cond_1

    .line 1234
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1235
    .local v1, selectSoundUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, csValue:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1238
    .local v2, strFileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1241
    if-eqz v2, :cond_0

    .line 1244
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_picker_setting"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1245
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_enable_setting"

    invoke-virtual {v3, v4, v6}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1248
    :cond_0
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_ask_music_setting"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1252
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_1
    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 1256
    :cond_2
    return-void
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 2235
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 2229
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1693
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onConfigurationChanged] + "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1696
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    .line 1710
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onConfigurationChanged] - "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
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
    .line 2240
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mWasControlShowing:Z

    .line 2241
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2268
    :goto_0
    return-void

    .line 2244
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->launchSetting()V

    goto :goto_0

    .line 2248
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 2250
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPause()V

    goto :goto_0

    .line 2254
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPlay()V

    goto :goto_0

    .line 2259
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPrevious()V

    goto :goto_0

    .line 2262
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarNext()V

    goto :goto_0

    .line 2265
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onGoBack()V

    goto :goto_0

    .line 2241
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    .line 275
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/htc/fusion/fx/FxSkinUtility;->loadSkinResource(Landroid/content/Context;I)V

    .line 277
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestHeaderBar()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestFooterBar()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 279
    :cond_0
    new-instance v7, Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 280
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 283
    :cond_1
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestWindowFeature(I)Z

    .line 284
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 286
    new-instance v7, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 287
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "slideshow_setting_mode"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    .line 288
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    invoke-virtual {v7, p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 290
    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][SlideshowFusion][onCreate]initSlideshowSetting NG"

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->checkLaunchOtherSlideshow()I

    move-result v2

    .line 295
    .local v2, launchType:I
    const/4 v7, -0x3

    if-eq v7, v2, :cond_3

    .line 297
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->launchSlideshowByType(IZ)V

    .line 298
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    .line 544
    :goto_0
    return-void

    .line 302
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "isInsideSlideshow"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 303
    .local v1, isInsideSlideshow:Z
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v8, "slide_show_ask_music_setting"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 305
    .local v0, askMusic:Z
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v8, "slide_show_music_enable_setting"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    .line 307
    if-nez v1, :cond_4

    .line 309
    iget-boolean v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    if-nez v7, :cond_b

    if-eqz v0, :cond_b

    .line 311
    const v7, 0x36870

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showDialog(I)V

    .line 312
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 337
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    .line 338
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setKeepScreenOn(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "key_bucket_id"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "folder_type"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 341
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 344
    const-string v7, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 346
    :cond_5
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 348
    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 350
    :cond_6
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v8, "album_mode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 352
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "key_folder_name"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 389
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v7, :cond_10

    .line 391
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 392
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 393
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 413
    :goto_3
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v7

    if-gtz v7, :cond_12

    .line 416
    :cond_8
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v8, "dock_mode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 421
    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 422
    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 423
    const v7, 0x7f0a004e

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 426
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "slide_show_folder_picker_setting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 428
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v7, v8}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 431
    :cond_9
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v7

    if-gtz v7, :cond_12

    .line 433
    :cond_a
    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][SlideshowSettingManager][onCreate]: empty list"

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showErrorDialog()V

    goto/16 :goto_0

    .line 316
    :cond_b
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v8, "slide_show_ask_music_setting"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 354
    :cond_c
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v8, "dock_mode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 356
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "slide_show_folder_picker_setting"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, strFolderType:Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 359
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 360
    .local v6, type:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 361
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 363
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 365
    :cond_d
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 367
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 369
    :cond_e
    :goto_4
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    goto :goto_4

    .line 377
    .end local v6           #type:Ljava/util/StringTokenizer;
    :cond_f
    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 378
    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 379
    const v7, 0x7f0a004e

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 382
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "slide_show_folder_picker_setting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 399
    .end local v4           #strFolderType:Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "photoIds"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 400
    .local v3, nPhotoIds:[I
    if-eqz v3, :cond_11

    .line 403
    invoke-static {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto/16 :goto_3

    .line 407
    :cond_11
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v7, v8}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto/16 :goto_3

    .line 440
    .end local v3           #nPhotoIds:[I
    :cond_12
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "itemIndex"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 441
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "slideshow_back_index"

    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    .line 443
    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-eqz v7, :cond_13

    .line 445
    const/4 v5, 0x0

    .line 446
    .local v5, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "itemfullpath"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 448
    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v7, v5, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 455
    .end local v5           #strFullPath:Ljava/lang/String;
    :cond_13
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    .line 457
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->retrieveSettings()V

    .line 461
    const v7, 0x7f03003b

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setContentView(I)V

    .line 462
    const v7, 0x7f09004f

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/FxView;

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 464
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v7}, Lcom/htc/fusion/fx/FxView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;

    invoke-direct {v8, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 502
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v7, :cond_14

    .line 504
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initControlBarManager()V

    .line 507
    :cond_14
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestFooterBar()Z

    move-result v7

    if-nez v7, :cond_15

    .line 509
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->attachMediaController()V

    .line 513
    :cond_15
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 514
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 515
    const/4 v7, 0x1

    iput v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    .line 522
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->enableBroadcastReceiver()V

    .line 540
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "args"

    .prologue
    const v7, 0x2040174

    .line 1096
    sparse-switch p1, :sswitch_data_0

    .line 1223
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    :goto_1
    return-object v5

    .line 1099
    :sswitch_0
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0021

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0022

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1103
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideshowFusion$5;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$5;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v0, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1111
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideshowFusion$6;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$6;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1120
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideshowFusion$7;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$7;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1128
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_1

    .line 1130
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :sswitch_1
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0023

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1132
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1133
    .local v2, inflater:Landroid/view/LayoutInflater;
    if-nez v2, :cond_0

    .line 1135
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][onCreateDialog] Can\'t get LayoutInflater"

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1139
    :cond_0
    const v5, 0x7f030038

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1140
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_1

    .line 1142
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][onCreateDialog] Can\'t get slide_show_ask_music layout"

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1146
    :cond_1
    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1147
    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1148
    .local v3, textView:Landroid/widget/TextView;
    if-nez v3, :cond_2

    .line 1150
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][onCreateDialog] Can\'t get ask_text TextView"

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1153
    :cond_2
    const v5, 0x7f0a0024

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1155
    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1156
    .restart local v3       #textView:Landroid/widget/TextView;
    if-nez v3, :cond_3

    .line 1158
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][onCreateDialog] Can\'t get remind_text TextView"

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1161
    :cond_3
    const v5, 0x7f0a015d

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1163
    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    .line 1164
    .local v1, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v1, :cond_4

    .line 1166
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][onCreateDialog] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1170
    :cond_4
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1172
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideshowFusion$8;

    invoke-direct {v5, p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion$8;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1198
    const v5, 0x20401ee

    new-instance v6, Lcom/htc/album/addons/slideshow/SlideshowFusion$9;

    invoke-direct {v6, p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion$9;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1209
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideshowFusion$10;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$10;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1218
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_1

    .line 1096
    :sswitch_data_0
    .sparse-switch
        0x1b669 -> :sswitch_0
        0x36870 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 12
    .parameter "id"

    .prologue
    const v4, 0x20800b6

    const/16 v3, 0x24

    const/4 v2, 0x0

    .line 2318
    const/4 v0, 0x0

    .line 2319
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2320
    .local v1, context:Landroid/content/Context;
    const/4 v5, 0x2

    invoke-static {v1, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 2322
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v5, v2

    .line 2324
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2333
    :goto_0
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v11

    .line 2334
    .local v11, footer:Landroid/view/ViewGroup;
    instance-of v2, v11, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_1

    .line 2336
    check-cast v11, Lcom/htc/widget/HtcFooter;

    .end local v11           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 2339
    :cond_1
    return-object v0

    .line 2328
    :cond_2
    const/16 v8, 0x27

    const v9, 0x20800c0

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move v5, v2

    .line 2329
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2330
    const/16 v3, 0xf

    const v4, 0x20800b4

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto :goto_0
.end method

.method public onDLNASupportRange()Z
    .locals 1

    .prologue
    .line 2461
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 831
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    .line 833
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->destoryMusic()V

    .line 835
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 837
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 840
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 843
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 844
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 849
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 852
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    if-eqz v0, :cond_2

    .line 854
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxView;->dispose()V

    .line 858
    :cond_2
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 2443
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 2429
    const/4 v0, 0x0

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2220
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->stopMusic()V

    .line 2222
    const/4 v0, 0x0

    return v0
.end method

.method public onGoBack()V
    .locals 0

    .prologue
    .line 1866
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    .line 1867
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 793
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 800
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 796
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->launchSetting()V

    goto :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x7f09008a
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1532
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPause] + "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1535
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestFooterBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPause()V

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 1543
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    if-eqz v0, :cond_3

    .line 1545
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_2

    .line 1547
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxView;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 1548
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 1550
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxView;->pause()V

    .line 1553
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v0, :cond_4

    .line 1555
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->release()V

    .line 1556
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 1559
    :cond_4
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    if-eqz v0, :cond_5

    .line 1561
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->deInit()V

    .line 1562
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->destroy()V

    .line 1563
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    .line 1566
    :cond_5
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 1567
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    .line 1568
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsSettingShown:Z

    if-eqz v0, :cond_6

    .line 1571
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 1572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsSettingShown:Z

    .line 1574
    :cond_6
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPause] - "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    return-void
.end method

.method public onPauseTarget()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1752
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onPauseTarget] + "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 1756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastCancelledTime:J

    .line 1757
    iget-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedInterval:J

    iget-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastCancelledTime:J

    iget-wide v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    .line 1758
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusion][onPauseTarget]timeLeftToNextPost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1763
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1764
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1765
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1766
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1770
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->pauseMusic()V

    .line 1772
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    if-eqz v2, :cond_1

    .line 1774
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->onGoPause()V

    .line 1777
    :cond_1
    invoke-direct {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setKeepScreenOn(Z)V

    .line 1778
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 1779
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onPauseTarget] - "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    return-void
.end method

.method public onPlayTarget()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1784
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget] + "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    .line 1786
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1790
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->init(I)V

    .line 1796
    :goto_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget]!mIsPlaying, could be back from paused state?"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v5, :cond_0

    .line 1799
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget]not photo lock screen and not falling photo"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    .line 1808
    :cond_0
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 1809
    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setKeepScreenOn(Z)V

    .line 1810
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    if-eqz v0, :cond_1

    .line 1812
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->onGoPlay()V

    .line 1814
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    if-eqz v0, :cond_3

    .line 1816
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    .line 1817
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    .line 1837
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->playMusic()V

    .line 1838
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getTransitionKeyValue4Profile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 1839
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget] - "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    return v4

    .line 1794
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    goto :goto_0

    .line 1819
    :cond_3
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    if-eqz v0, :cond_4

    .line 1821
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    .line 1822
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    goto :goto_1

    .line 1826
    :cond_4
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v5, :cond_5

    .line 1828
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    goto :goto_1

    .line 1832
    :cond_5
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusion][onPlayTarget]timeLeftToNextPost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iget-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 768
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 769
    const v1, 0x7f09008a

    const v2, 0x2040178

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 770
    .local v0, menuItem:Landroid/view/MenuItem;
    const v1, 0x20800c3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 771
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 773
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderIndicator:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    .line 776
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mNoUpdateControlBar:Z

    if-eqz v1, :cond_0

    .line 778
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mNoUpdateControlBar:Z

    .line 784
    :goto_0
    return v4

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateControlBar()V

    goto :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2
    .parameter "footer"

    .prologue
    .line 2345
    instance-of v1, p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    if-eqz v1, :cond_0

    .line 2347
    check-cast p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    .end local p1
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findRimButton(I)Lcom/htc/widget/HtcRimButton;

    move-result-object v0

    .line 2348
    .local v0, playBtn:Lcom/htc/widget/HtcRimButton;
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v1, :cond_1

    const v1, 0x20800b6

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 2350
    .end local v0           #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_0
    return-void

    .line 2348
    .restart local v0       #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_1
    const v1, 0x20800bb

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1579
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume] + "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1584
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1586
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume]isFinishing - "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    :goto_0
    return-void

    .line 1590
    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    if-nez v2, :cond_1

    .line 1592
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume]null mFxView - "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1596
    :cond_1
    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    .line 1598
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxView;->resume()V

    .line 1600
    new-instance v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-direct {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;-><init>()V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    .line 1601
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

    move-result v1

    .line 1602
    .local v1, newTrasitionAnimationID:I
    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    if-eq v1, v2, :cond_2

    .line 1604
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    .line 1605
    iput-boolean v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 1607
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->create(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;I)Z

    .line 1610
    new-instance v2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    const-string v3, "decoder"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 1611
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    new-instance v3, Lcom/htc/album/addons/slideshow/SlideshowFusion$11;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$11;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->setDecodeCompleteCallback(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;)V

    .line 1640
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->setImageList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 1641
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->start()V

    .line 1642
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->initHandler()V

    .line 1644
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setDecoder(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;II)V

    .line 1647
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_duration_setting"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, interval:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingsInterval:I

    .line 1651
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingsInterval:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setPlaybackSpeed(I)V

    .line 1652
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setIsPlaying(Z)V

    .line 1654
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 1655
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 1659
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v2, :cond_5

    .line 1661
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1663
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->init(I)V

    .line 1670
    :goto_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v2, :cond_3

    .line 1672
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v2, v6}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    .line 1674
    :cond_3
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->retrieveSettings()V

    .line 1675
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onPlayTarget()Z

    .line 1688
    :goto_2
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume] - "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1667
    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    goto :goto_1

    .line 1680
    :cond_5
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v2, :cond_6

    .line 1682
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v2, v6}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 1684
    :cond_6
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    .line 1685
    invoke-direct {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    goto :goto_2
.end method

.method public onSettings()V
    .locals 0

    .prologue
    .line 2456
    return-void
.end method

.method protected onStart()V
    .locals 11

    .prologue
    .line 622
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 623
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->checkInit()Z

    move-result v8

    if-nez v8, :cond_0

    .line 763
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->enableBroadcastReceiver()V

    .line 638
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->checkLaunchOtherSlideshow()I

    move-result v1

    .line 639
    .local v1, launchType:I
    const/4 v8, -0x3

    if-eq v8, v1, :cond_2

    .line 641
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-ltz v8, :cond_1

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 643
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-interface {v8, v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 644
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_back_index"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemIndex"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 651
    .local v6, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemfullpath"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Slideshow][onStart]: Set CurPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Set EntPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #strFullPath:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->launchSlideshowByType(IZ)V

    .line 658
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    goto :goto_0

    .line 709
    :cond_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 711
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "slide_show_folder_picker_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 713
    .local v5, strFolderTypeKeyValue:Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 715
    const/4 v4, 0x0

    .line 716
    .local v4, strFolderType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 717
    .local v2, strBucketId:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 718
    .local v3, strFolderName:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 720
    .local v7, type:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 721
    :cond_3
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 722
    :cond_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 723
    :cond_5
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 725
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

    .line 728
    :cond_6
    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 730
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 732
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 733
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 735
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    const-string v9, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 736
    const v8, 0x7f0a004d

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 740
    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 741
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 742
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_9

    .line 744
    :cond_7
    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart]: mImageList is Null or Zero !"

    invoke-static {v8, v9}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showErrorDialog()V

    goto/16 :goto_0

    .line 738
    :cond_8
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    goto :goto_2

    .line 749
    :cond_9
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    .line 751
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateTitlebar(I)V

    .line 761
    .end local v2           #strBucketId:Ljava/lang/String;
    .end local v3           #strFolderName:Ljava/lang/String;
    .end local v4           #strFolderType:Ljava/lang/String;
    .end local v5           #strFolderTypeKeyValue:Ljava/lang/String;
    .end local v7           #type:Ljava/util/StringTokenizer;
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateTitlebar(I)V

    goto/16 :goto_0

    .line 757
    .restart local v5       #strFolderTypeKeyValue:Ljava/lang/String;
    :cond_b
    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart]: Get Folder from preference NG !"

    invoke-static {v8, v9}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    .line 810
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 823
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 825
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderIndicator:Ljava/lang/String;

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public pauseMusic()V
    .locals 2

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1437
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1439
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->abandonAudioFocus()V

    .line 1440
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1441
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][pauseMusic]mMediaPlayer null"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playMusic()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1385
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v3, :cond_2

    .line 1387
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1389
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestAudioFocus()V

    .line 1391
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1392
    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    if-ne v3, v5, :cond_0

    .line 1398
    const/4 v1, 0x0

    .line 1399
    .local v1, fileA:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #fileA:Ljava/io/File;
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1403
    .restart local v1       #fileA:Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestAudioFocus()V

    .line 1405
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1406
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1407
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1408
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1409
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1411
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1415
    :catch_0
    move-exception v0

    .line 1417
    .local v0, ex:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1418
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1419
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1421
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusion][playMusic]: Play Music Start NG !"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1427
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #fileA:Ljava/io/File;
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusion][playMusic]mMediaPlayer == null || !mEnableMusic || !mIsPlaying"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2312
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
    .line 2279
    const/4 v0, 0x0

    return v0
.end method

.method public showErrorDialog()V
    .locals 1

    .prologue
    .line 1087
    const v0, 0x1b669

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showDialog(I)V

    .line 1088
    return-void
.end method

.method public stopMusic()V
    .locals 2

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1456
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->abandonAudioFocus()V

    .line 1457
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1458
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    .line 1465
    :goto_0
    return-void

    .line 1462
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][stopMusic]mMediaPlayer null"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateControlBar()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1881
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][updateControlBar] + "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsControlShowing:Z

    if-eqz v0, :cond_0

    .line 1885
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$12;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1960
    :goto_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][updateControlBar] - "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    return-void

    .line 1917
    :cond_0
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$13;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$13;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1957
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cmdBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1958
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cmdBarHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
