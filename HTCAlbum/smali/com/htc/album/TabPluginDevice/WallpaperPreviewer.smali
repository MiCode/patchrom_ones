.class public Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "WallpaperPreviewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;,
        Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;,
        Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;,
        Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;
    }
.end annotation


# static fields
.field private static final DLG_LOADING:I = 0x3e8

.field private static final DLG_SAVING:I = 0x7d0

.field private static final FOOTER_BAR_CROP_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sDecodeResolution:I


# instance fields
.field private mActivityState:S

.field private mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHQLoader:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

.field private mLoadBitmapRunnable:Ljava/lang/Runnable;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    .line 52
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->CROP_IMAGE_SAMPE_SIZE:I

    sput v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->sDecodeResolution:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 56
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;-><init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    .line 423
    new-instance v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;-><init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 454
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    return v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mTargetUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHQLoader:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHQLoader:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;

    return-object p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->sDecodeResolution:I

    return v0
.end method

.method private onOk()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->showDialog(I)V

    .line 231
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;-><init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V

    .line 232
    .local v0, saver:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    return-void
.end method

.method private release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    .line 184
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    .line 187
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->forceRecycleBitmaps()V

    .line 189
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_2
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_4

    .line 209
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 210
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 213
    :cond_4
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->removeDialog(I)V

    .line 214
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->removeDialog(I)V

    .line 215
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[release] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupReceiver()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    return-void
.end method


# virtual methods
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
    .line 266
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    sget-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][CropImage][onControlButtonClick]: start"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-nez p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_1
    sget-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][CropImage][onControlButtonClick]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->onOk()V

    goto :goto_1

    .line 276
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->finish()V

    goto :goto_1

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->setContentView(I)V

    .line 82
    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 83
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBars(II)V

    .line 85
    const v3, 0x7f09001c

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    .line 86
    .local v1, image:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
    if-eqz v1, :cond_0

    .line 87
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->setVisibility(I)V

    .line 89
    :cond_0
    const v3, 0x7f09001d

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    .line 90
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 93
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mTargetUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->setupReceiver()V

    .line 97
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    .line 153
    sparse-switch p1, :sswitch_data_0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 158
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 253
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 254
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 255
    const/4 v3, 0x5

    const v5, 0x20401ee

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 256
    const/4 v3, 0x4

    const v5, 0x7f0a0001

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 258
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x4

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    .line 139
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->release()V

    .line 141
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onDestroy()V

    .line 142
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    .line 110
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 123
    const/4 v0, 0x5

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    .line 124
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method
