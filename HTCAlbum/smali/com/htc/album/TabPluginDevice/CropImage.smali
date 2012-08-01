.class public Lcom/htc/album/TabPluginDevice/CropImage;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
    }
.end annotation


# static fields
.field public static final CROP_CONTACT_ICON:I = 0x7f02

.field public static final CROP_FOOTPRINTS:I = 0x7f03

.field public static final CROP_LOCKSCREEN:I = 0x7f05

.field public static final CROP_NONE:I = 0x7f00

.field public static final CROP_PHOTOWIDGET:I = 0x7f06

.field public static final CROP_USERDEFINE:I = 0x7f01

.field public static final CROP_WALLPAPER:I = 0x7f04

.field private static final FOOTER_BAR_CROP_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final _ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final _ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final _CIRCLE_CROP:Ljava/lang/String; = "circleCrop"

.field public static final _CROP_TYPE:Ljava/lang/String; = "cropType"

.field public static final _NO_FACE_DETECTION:Ljava/lang/String; = "noFaceDetection"

.field public static final _OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final _OUTPUT_URI:Ljava/lang/String; = "output"

.field public static final _OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final _OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final _RAW_DATA:Ljava/lang/String; = "data"

.field public static final _RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final _SCALE:Ljava/lang/String; = "scale"

.field public static final _SCALE_UP:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final _TOAST_CROP_RESULT:Ljava/lang/String; = "toast_crop_result"

.field private static final sDecodeResolution:I


# instance fields
.field private cropToast:Landroid/widget/Toast;

.field private mActivityState:S

.field private mAddHVRunnable:Ljava/lang/Runnable;

.field private mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mAspectX:I

.field private mAspectY:I

.field mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

.field private mCropType:I

.field mCroppedImage:Landroid/graphics/Bitmap;

.field private final mCroppedImageLock:Ljava/lang/Object;

.field private mDiskModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDoFaceDetection:Z

.field private mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

.field mHandler:Landroid/os/Handler;

.field private mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private mImageSaved:Z

.field mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

.field private mInitDFRunnable:Ljava/lang/Runnable;

.field private mIsImageChanged:Z

.field private mIsOnClickDone:Z

.field private mLoadBitmapRunnable:Ljava/lang/Runnable;

.field private mOldDegree:I

.field private mOldPath:Ljava/lang/String;

.field private mOldSize:J

.field private mOutputUri:Landroid/net/Uri;

.field private mOutputX:I

.field private mOutputY:I

.field private mRawBitmapAsSource:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReturnData:Z

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mSaving:Z

.field private mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mScale:Z

.field private mScaleUp:Z

.field private mTargetUri:Landroid/net/Uri;

.field private mToastCropResult:Z

.field private mWaitingToPick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    .line 124
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->CROP_IMAGE_SAMPE_SIZE:I

    sput v0, Lcom/htc/album/TabPluginDevice/CropImage;->sDecodeResolution:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 90
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    .line 91
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 93
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 94
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    .line 97
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 98
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    .line 102
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 104
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z

    .line 107
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImageLock:Ljava/lang/Object;

    .line 119
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    .line 149
    const/16 v0, 0x7f01

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    .line 150
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mToastCropResult:Z

    .line 151
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 152
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    .line 156
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    .line 157
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldPath:Ljava/lang/String;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldSize:J

    .line 159
    iput v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldDegree:I

    .line 660
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    .line 1586
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    .line 1588
    new-instance v0, Lcom/htc/album/TabPluginDevice/CropImage$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    .line 1893
    new-instance v0, Lcom/htc/album/TabPluginDevice/CropImage$3;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/CropImage$3;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1918
    new-instance v0, Lcom/htc/album/TabPluginDevice/CropImage$4;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/CropImage$4;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDiskModeReceiver:Landroid/content/BroadcastReceiver;

    .line 2000
    new-instance v0, Lcom/htc/album/TabPluginDevice/CropImage$5;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/CropImage$5;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    .line 2104
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    .line 2105
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    .line 165
    return-void
.end method

.method private CropContactIcon(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 709
    return-void
.end method

.method private CropDefault(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 696
    const-string v0, "output"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    .line 697
    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 698
    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 699
    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 700
    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 701
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 702
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 703
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 704
    return-void
.end method

.method private CropFootprints(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    const/16 v2, 0x190

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 713
    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 714
    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 715
    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 716
    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 717
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 718
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 719
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 720
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 721
    return-void
.end method

.method private CropLockScreen(Landroid/os/Bundle;)V
    .locals 10
    .parameter "extras"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 735
    const/4 v1, 0x0

    .line 736
    .local v1, f:Ljava/io/File;
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/CropImage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 737
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 738
    .local v5, screenW:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 739
    .local v4, screenH:I
    const/4 v6, 0x0

    .local v6, width:I
    const/4 v2, 0x0

    .line 740
    .local v2, height:I
    const/4 v3, 0x1

    .line 741
    .local v3, isPortrait:Z
    if-eqz v3, :cond_2

    .line 742
    const-string v7, "lock_screen_port"

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/CropImage;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 744
    if-le v4, v5, :cond_1

    .line 745
    move v6, v5

    .line 746
    move v2, v4

    .line 765
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 766
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 768
    :cond_0
    sget v7, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->HEIGHT_NOTIFICATION_BAR:I

    sub-int/2addr v2, v7

    .line 769
    iput v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    iput v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 770
    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 771
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 772
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 773
    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 774
    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 775
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    .line 776
    return-void

    .line 749
    :cond_1
    move v6, v4

    .line 750
    move v2, v5

    goto :goto_0

    .line 754
    :cond_2
    const-string v7, "lock_screen_land"

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/CropImage;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 756
    if-le v4, v5, :cond_3

    .line 757
    move v6, v4

    .line 758
    move v2, v5

    goto :goto_0

    .line 761
    :cond_3
    move v6, v5

    .line 762
    move v2, v4

    goto :goto_0
.end method

.method private CropPhotoWidget(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 781
    return-void
.end method

.method private CropUserDefine(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 664
    const-string v2, "circleCrop"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 666
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    .line 667
    iput v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 668
    iput v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 670
    :cond_0
    const-string v2, "output"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    .line 671
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 673
    const-string v2, "outputFormat"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, compressFormatString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 675
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 677
    .end local v0           #compressFormatString:Ljava/lang/String;
    :cond_1
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 678
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    .line 679
    const-string v2, "aspectX"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 680
    const-string v2, "aspectY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 681
    const-string v2, "outputX"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 682
    const-string v2, "outputY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 683
    const-string v2, "scale"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 684
    const-string v2, "scaleUpIfNeeded"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 685
    const-string v2, "noFaceDetection"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 687
    const-string v2, "return-data"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 689
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "com.android.htccontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 691
    const/16 v2, 0x7f02

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    .line 692
    :cond_2
    return-void

    .end local v1           #packageName:Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 678
    goto :goto_0

    :cond_4
    move v3, v4

    .line 685
    goto :goto_1
.end method

.method private CropWallpaper(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 726
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 727
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 728
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 729
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 730
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 731
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaving:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaving:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage;->cropCircle(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->scaledCropBitmap()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->cropCenterCropBitmap()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->sendBackCropResult()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mToastCropResult:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/album/TabPluginDevice/CropImage;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-short v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDiskModeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/album/TabPluginDevice/CropImage;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->createListAndThumb()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    return p1
.end method

.method static synthetic access$3600()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/htc/album/TabPluginDevice/CropImage;->sDecodeResolution:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/CropImage;->cropFromSource(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage;->cropFromRawData(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    return v0
.end method

.method private declared-synchronized closeProgressDialog()V
    .locals 1

    .prologue
    .line 1882
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1887
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    :cond_1
    monitor-exit p0

    return-void

    .line 1882
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createListAndThumb()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1951
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1953
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_3

    .line 1957
    :cond_1
    sget-object v4, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][CropImage]: create list for uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1962
    :cond_2
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][CropImage]: getAuthority() is NULL ! "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    :cond_3
    :goto_0
    return-void

    .line 1966
    :cond_4
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    invoke-static {v4, p0, v3, v3, v2}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1968
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1969
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldPath:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldDegree:I

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget-wide v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldSize:J

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    .line 1974
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    if-eqz v2, :cond_3

    .line 1977
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldPath:Ljava/lang/String;

    .line 1978
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldSize:J

    .line 1979
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldDegree:I

    .line 1981
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_3

    .line 1983
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    instance-of v2, v2, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v2, :cond_7

    .line 1985
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    .line 1986
    .local v1, uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setMimeType(Ljava/lang/String;)V

    .line 1988
    .end local v1           #uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    :cond_7
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private cropCenterCropBitmap()V
    .locals 9

    .prologue
    .line 1485
    iget v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    iget v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1486
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1489
    .local v1, c1:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1490
    .local v3, r:Landroid/graphics/Rect;
    iget v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    .line 1491
    .local v2, left:I
    iget v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1492
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v8, v4

    invoke-direct {v6, v2, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1496
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1497
    return-void
.end method

.method private cropCircle(Landroid/graphics/Rect;)V
    .locals 8
    .parameter "r"

    .prologue
    const/high16 v7, 0x4000

    .line 1447
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1448
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1453
    .local v1, height:I
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1454
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1455
    .local v2, p:Landroid/graphics/Path;
    int-to-float v4, v3

    div-float/2addr v4, v7

    int-to-float v5, v1

    div-float/2addr v5, v7

    int-to-float v6, v3

    div-float/2addr v6, v7

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1456
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1458
    invoke-direct {p0, v3, v1, v0}, Lcom/htc/album/TabPluginDevice/CropImage;->fillCanvas(IILandroid/graphics/Canvas;)V

    .line 1459
    return-void
.end method

.method private cropFromRawData(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 1424
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1425
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1440
    .local v0, height:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, p1, v1, v0, v2}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1444
    return-void

    .line 1440
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private cropFromSource(Landroid/graphics/Rect;I)V
    .locals 17
    .parameter "r"
    .parameter "degree"

    .prologue
    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v5, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->mappedRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/graphics/Rect;

    move-result-object v16

    .line 1364
    .local v16, sourceSizeRect:Landroid/graphics/Rect;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gtz v4, :cond_2

    .line 1365
    :cond_0
    sget-object v4, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v5, "rectangle to source bitmap is invalid"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    .line 1420
    :cond_1
    :goto_0
    return-void

    .line 1368
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1369
    .local v11, cr:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 1370
    .local v15, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v11, :cond_3

    .line 1372
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1377
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 1378
    .local v3, b:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_8

    .line 1379
    sget-object v4, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rectangle size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 1382
    .local v13, outputX:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 1384
    .local v14, outputY:I
    const/16 v4, 0x5a

    move/from16 v0, p2

    if-eq v0, v4, :cond_4

    const/16 v4, 0x10e

    move/from16 v0, p2

    if-ne v0, v4, :cond_5

    .line 1386
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 1387
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 1390
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/webp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1392
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    if-nez v4, :cond_7

    .line 1394
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 1395
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 1398
    :cond_7
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1399
    .local v10, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    invoke-static {v10, v0, v13, v14, v4}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1407
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #outputX:I
    .end local v14           #outputY:I
    :cond_8
    :goto_2
    if-eqz p2, :cond_a

    if-eqz v3, :cond_a

    .line 1408
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1409
    .local v8, mat:Landroid/graphics/Matrix;
    move/from16 v0, p2

    int-to-float v4, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v8, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1410
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lcom/htc/opensense2/album/util/BitmapUtil2;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eq v4, v3, :cond_1

    .line 1412
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1413
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1373
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v8           #mat:Landroid/graphics/Matrix;
    :catch_0
    move-exception v12

    .line 1374
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 1403
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #b:Landroid/graphics/Bitmap;
    .restart local v13       #outputX:I
    .restart local v14       #outputY:I
    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0, v13, v14}, Lcom/htc/opensense/album/util/ScaladoLib2;->DoCrop(Ljava/io/FileDescriptor;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .line 1416
    .end local v13           #outputX:I
    .end local v14           #outputY:I
    :cond_a
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private fillCanvas(IILandroid/graphics/Canvas;)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 521
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 522
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 524
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 525
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 526
    int-to-float v3, p1

    int-to-float v4, p2

    move-object v0, p3

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 527
    return-void
.end method

.method private getLockScreenOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 1539
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[getLockScreenOutputStream] shouldn\'t be called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const/4 v0, 0x0

    return-object v0
.end method

.method private mapCropRectToOri(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 12
    .parameter "b"
    .parameter "r"
    .parameter "degree"

    .prologue
    .line 536
    if-gez p3, :cond_0

    .line 537
    add-int/lit16 p3, p3, 0x168

    .line 539
    :cond_0
    sget-object v8, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " degree "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 541
    .local v2, imageAnchor:[I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 542
    .local v0, bitmapAnchor:[I
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 543
    .local v1, finalAnchor:[I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 544
    .local v4, rectWidth:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 546
    .local v3, rectHeight:I
    const/16 v8, 0x5a

    if-ne p3, v8, :cond_2

    .line 547
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    aput v9, v2, v8

    .line 548
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 549
    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->right:I

    aput v9, v0, v8

    .line 550
    const/4 v8, 0x1

    iget v9, p2, Landroid/graphics/Rect;->top:I

    aput v9, v0, v8

    .line 567
    :goto_0
    const/4 v7, -0x1

    .line 568
    .local v7, retRectWidth:I
    const/4 v6, -0x1

    .line 569
    .local v6, retRectHeight:I
    const/16 v8, 0x5a

    if-eq p3, v8, :cond_1

    const/16 v8, 0x10e

    if-ne p3, v8, :cond_5

    .line 570
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v1, v8

    .line 571
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v1, v8

    .line 572
    move v7, v3

    .line 573
    move v6, v4

    .line 583
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    const/4 v10, 0x0

    aget v10, v1, v10

    add-int/2addr v10, v7

    const/4 v11, 0x1

    aget v11, v1, v11

    add-int/2addr v11, v6

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 585
    .local v5, retRect:Landroid/graphics/Rect;
    sget-object v8, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-object v5

    .line 551
    .end local v5           #retRect:Landroid/graphics/Rect;
    .end local v6           #retRectHeight:I
    .end local v7           #retRectWidth:I
    :cond_2
    const/16 v8, 0xb4

    if-ne p3, v8, :cond_3

    .line 552
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    aput v9, v2, v8

    .line 553
    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    aput v9, v2, v8

    .line 554
    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->right:I

    aput v9, v0, v8

    .line 555
    const/4 v8, 0x1

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    aput v9, v0, v8

    goto :goto_0

    .line 556
    :cond_3
    const/16 v8, 0x10e

    if-ne p3, v8, :cond_4

    .line 557
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 558
    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    aput v9, v2, v8

    .line 559
    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->left:I

    aput v9, v0, v8

    .line 560
    const/4 v8, 0x1

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    aput v9, v0, v8

    goto/16 :goto_0

    .line 562
    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 563
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 564
    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->left:I

    aput v9, v0, v8

    .line 565
    const/4 v8, 0x1

    iget v9, p2, Landroid/graphics/Rect;->top:I

    aput v9, v0, v8

    goto/16 :goto_0

    .line 576
    .restart local v6       #retRectHeight:I
    .restart local v7       #retRectWidth:I
    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v1, v8

    .line 577
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v1, v8

    .line 578
    move v7, v4

    .line 579
    move v6, v3

    goto/16 :goto_1
.end method

.method private mappedRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/graphics/Rect;
    .locals 24
    .parameter "b"
    .parameter "r"
    .parameter "image"
    .parameter "degree"

    .prologue
    .line 592
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 593
    :cond_0
    const/4 v13, 0x0

    .line 654
    :goto_0
    return-object v13

    .line 595
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/CropImage;->mapCropRectToOri(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v7

    .line 597
    .local v7, newRect:Landroid/graphics/Rect;
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v18

    .line 598
    .local v18, uri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 601
    .local v13, retRect:Landroid/graphics/Rect;
    const/16 v17, -0x1

    .local v17, sourceWidth:I
    const/16 v16, -0x1

    .line 602
    .local v16, sourceHeight:I
    :try_start_0
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 604
    .local v12, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    .line 607
    .local v6, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "r"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 608
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 609
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 610
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 611
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .line 613
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 615
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    move-object/from16 v19, v0

    .line 616
    .local v19, uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->is3DJPS()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 618
    div-int/lit8 v17, v17, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 628
    .end local v19           #uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    :cond_2
    if-eqz v6, :cond_3

    .line 630
    :try_start_2
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 631
    const/4 v6, 0x0

    .line 637
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 638
    .local v10, onScreenBmpW:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 639
    .local v9, onScreenBmpH:I
    if-ge v10, v9, :cond_5

    move v8, v9

    .line 640
    .local v8, onScreenBmpBase:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    move/from16 v15, v16

    .line 643
    .local v15, sourceBmpBase:I
    :goto_3
    int-to-float v0, v15

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v11, v20, v21

    .line 645
    .local v11, onScreenToOriRatio:F
    new-instance v14, Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v11

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v11

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v13           #retRect:Landroid/graphics/Rect;
    .local v14, retRect:Landroid/graphics/Rect;
    move-object v13, v14

    .line 653
    .end local v14           #retRect:Landroid/graphics/Rect;
    .restart local v13       #retRect:Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 622
    .end local v8           #onScreenBmpBase:I
    .end local v9           #onScreenBmpH:I
    .end local v10           #onScreenBmpW:I
    .end local v11           #onScreenToOriRatio:F
    .end local v15           #sourceBmpBase:I
    :catch_0
    move-exception v4

    .line 624
    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v20, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mappedRect error"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 628
    if-eqz v6, :cond_3

    .line 630
    :try_start_4
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 631
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 628
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    if-eqz v6, :cond_4

    .line 630
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 631
    const/4 v6, 0x0

    :cond_4
    throw v20
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 650
    .end local v6           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v12           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v5

    .line 652
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v6       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v9       #onScreenBmpH:I
    .restart local v10       #onScreenBmpW:I
    .restart local v12       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    move v8, v10

    .line 639
    goto/16 :goto_2

    .restart local v8       #onScreenBmpBase:I
    :cond_6
    move/from16 v15, v17

    .line 640
    goto/16 :goto_3
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1847
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1849
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1850
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1852
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1854
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    if-eqz v0, :cond_2

    .line 1858
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->forceRecycleBitmaps()V

    .line 1859
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    .line 1862
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1863
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1864
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1865
    :cond_3
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1869
    :cond_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_5

    .line 1870
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 1871
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1874
    :cond_5
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    .line 1875
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    .line 1877
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    .line 1878
    return-void

    .line 1854
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private scaledCropBitmap()V
    .locals 7

    .prologue
    .line 1465
    const/4 v6, 0x0

    .line 1467
    .local v6, tmpBmp:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    iget v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    if-eqz v5, :cond_1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/htc/album/AlbumUtility/Camera_Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1470
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eq v6, v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1474
    :cond_0
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1475
    return-void

    .line 1467
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private sendBackCropResult()V
    .locals 5

    .prologue
    .line 1509
    :try_start_0
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendBackCropResult] bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "data"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1516
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_0

    .line 1517
    const-string v2, "mime_type"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    const-string v2, "filepath"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    const-string v2, "filename"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    const-string v2, "displayname"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    const-string v2, "fileuri"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 1528
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1530
    :catch_0
    move-exception v0

    .line 1531
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendBackCropResult] unable to save crop result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupReceiver()V
    .locals 3

    .prologue
    .line 1940
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1941
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1942
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1944
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "INTENT_DISK"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1945
    .local v0, intentDiskFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDiskModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/album/TabPluginDevice/CropImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1946
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 903
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 904
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 905
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2111
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][CropImage][onControlButtonClick]: start"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    if-nez p1, :cond_0

    .line 2128
    :goto_0
    return-void

    .line 2116
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2127
    :goto_1
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][CropImage][onControlButtonClick]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2118
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->onOk()V

    goto :goto_1

    .line 2121
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_1

    .line 2116
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 786
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 787
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 789
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 791
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    .line 793
    .local v3, htcActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v3, :cond_0

    .line 801
    invoke-interface {v3, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    .line 802
    const v6, 0x2040215

    invoke-interface {v3, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    .line 816
    .end local v3           #htcActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    :cond_0
    :goto_0
    const v6, 0x7f030008

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->setContentView(I)V

    .line 818
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-nez v6, :cond_1

    .line 820
    iget-object v7, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const v6, 0x7f09001b

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 821
    iget-object v6, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBars(II)V

    .line 824
    :cond_1
    const v6, 0x7f09001c

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    .line 826
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z

    .line 829
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->setupReceiver()V

    .line 833
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 834
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    .line 836
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 839
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_4

    .line 841
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 812
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 813
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 814
    const/16 v6, 0x8

    invoke-interface {v0, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    goto :goto_0

    .line 846
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_3
    :try_start_1
    const-string v6, "cropType"

    const/16 v7, 0x7f01

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    .line 847
    const-string v6, "toast_crop_result"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mToastCropResult:Z

    .line 848
    iget v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    packed-switch v6, :pswitch_data_0

    .line 887
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 899
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 901
    return-void

    .line 852
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #intent:Landroid/content/Intent;
    :pswitch_0
    :try_start_2
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropUserDefine(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 893
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 895
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Failed to load bitmap"

    invoke-static {v6, v7, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 896
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_2

    .line 857
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #intent:Landroid/content/Intent;
    :pswitch_1
    :try_start_3
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropContactIcon(Landroid/os/Bundle;)V

    goto :goto_2

    .line 862
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropFootprints(Landroid/os/Bundle;)V

    goto :goto_2

    .line 867
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropWallpaper(Landroid/os/Bundle;)V

    goto :goto_2

    .line 872
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropLockScreen(Landroid/os/Bundle;)V

    goto :goto_2

    .line 877
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropPhotoWidget(Landroid/os/Bundle;)V

    goto :goto_2

    .line 882
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropDefault(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 848
    :pswitch_data_0
    .packed-switch 0x7f00
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 2138
    sget-object v3, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][CropImage][onCreateFooterBar]: start"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2141
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 2142
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 2143
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2144
    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0001

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2146
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 2147
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 2148
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 2151
    :cond_0
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][CropImage][onCreateFooterBar]: end"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 1810
    sget-object v1, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const/4 v1, 0x4

    iput-short v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    .line 1813
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1814
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1815
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1820
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDiskModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1833
    :goto_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->release()V

    .line 1834
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onDestroy()V

    .line 1836
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    const/16 v2, 0x7f02

    if-ne v1, v2, :cond_0

    .line 1838
    const v1, 0x7f0a006e

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1840
    :cond_0
    return-void

    .line 1821
    :catch_0
    move-exception v0

    .line 1823
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onDestroy] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1829
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1830
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onOk()V
    .locals 14

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 910
    .local v11, myExtras:Landroid/os/Bundle;
    if-eqz v11, :cond_0

    const-string v0, "data"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    if-nez v0, :cond_a

    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    const/16 v2, 0x7f04

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    const/16 v2, 0x7f05

    if-eq v0, v2, :cond_a

    .line 913
    const/4 v8, 0x0

    .line 915
    .local v8, imagePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 917
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 967
    :goto_0
    const-wide/16 v9, 0x0

    .line 968
    .local v9, mSize:J
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v0, :cond_8

    .line 970
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v9

    .line 977
    :cond_1
    :goto_1
    invoke-static {v8, v9, v10}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithPathAndSize(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 979
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    if-nez v0, :cond_9

    .line 981
    const v0, 0x7f0a00fd

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    .line 988
    :goto_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1356
    .end local v8           #imagePath:Ljava/lang/String;
    .end local v9           #mSize:J
    :goto_3
    return-void

    .line 919
    .restart local v8       #imagePath:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v0, :cond_7

    .line 921
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 923
    .local v1, tmpUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 925
    const/4 v6, 0x0

    .line 928
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 931
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 943
    :cond_3
    if-eqz v6, :cond_4

    .line 945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 949
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    :goto_4
    if-eqz v8, :cond_6

    .line 951
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " map to file path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 936
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 938
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 939
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    if-eqz v6, :cond_4

    .line 945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 943
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 955
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find abs file path for uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_3

    .line 962
    .end local v1           #tmpUri:Landroid/net/Uri;
    :cond_7
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "can\'t get file path"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_3

    .line 972
    .restart local v9       #mSize:J
    :cond_8
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    int-to-long v9, v0

    goto/16 :goto_1

    .line 985
    :cond_9
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 986
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    const v2, 0x7f0a00fd

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto/16 :goto_2

    .line 994
    .end local v8           #imagePath:Ljava/lang/String;
    .end local v9           #mSize:J
    :cond_a
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 996
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {p0, v0, v2, v3, v4}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1001
    :cond_b
    new-instance v12, Lcom/htc/album/TabPluginDevice/CropImage$1;

    invoke-direct {v12, p0}, Lcom/htc/album/TabPluginDevice/CropImage$1;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    .line 1353
    .local v12, r:Ljava/lang/Runnable;
    new-instance v13, Ljava/lang/Thread;

    invoke-direct {v13, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1354
    .local v13, t:Ljava/lang/Thread;
    const-string v0, "Crop_Thread"

    invoke-virtual {v13, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 193
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 203
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Never enter here!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 197
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->onOk()V

    goto :goto_0

    .line 200
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x20401ee -> :sswitch_1
        0x7f0a0001 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1580
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    .line 1582
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 1583
    const-string v0, "CropImage::onPause"

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 1584
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f0a0001

    const v7, 0x20401ee

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 171
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-interface {p1, v4, v7, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 175
    .local v1, itemCropCancel:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 177
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 180
    :cond_0
    invoke-interface {p1, v4, v8, v5, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 181
    .local v2, itemCropSave:Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 183
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 186
    .end local v1           #itemCropCancel:Landroid/view/MenuItem;
    .end local v2           #itemCropSave:Landroid/view/MenuItem;
    :cond_1
    return v5
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1547
    const/4 v2, 0x5

    iput-short v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    .line 1549
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 1550
    const-string v2, "CropImage::onResume"

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 1552
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1556
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    const/16 v3, 0x7f04

    if-eq v2, v3, :cond_1

    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, bImageDataError:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_0

    .line 1561
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1562
    .local v1, fileCrop:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1564
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "File doesn\'t exist!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const/4 v0, 0x1

    .line 1569
    .end local v1           #fileCrop:Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    .line 1571
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z

    .line 1572
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    .line 1575
    .end local v0           #bImageDataError:Z
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1797
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->closeProgressDialog()V

    .line 1798
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStop()V

    .line 1799
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2133
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
