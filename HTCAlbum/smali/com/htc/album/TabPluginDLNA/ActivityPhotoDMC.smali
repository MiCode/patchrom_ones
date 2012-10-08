.class public Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;
.super Landroid/app/Activity;
.source "ActivityPhotoDMC.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;
.implements Lcom/htc/album/helper/WirelessDisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;,
        Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;,
        Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;,
        Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;,
        Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;,
        Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;,
        Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCConstants;
    }
.end annotation


# static fields
.field public static final DLNA_COOKIE_ALBUM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityPhotoDMC"


# instance fields
.field private final PRE_LOG:Ljava/lang/String;

.field private mActState:I

.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

.field mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

.field private mBtnMoreClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

.field mBtnNext:Lcom/htc/widget/HtcRimButton;

.field private mBtnNextClickListener:Landroid/view/View$OnClickListener;

.field mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

.field private mBtnPlayPauseClickListener:Landroid/view/View$OnClickListener;

.field mBtnPrevious:Lcom/htc/widget/HtcRimButton;

.field private mBtnPreviousClickListener:Landroid/view/View$OnClickListener;

.field mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

.field mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

.field mBubbleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCompareFirstItem:Z

.field private mCompareFirstItemID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mControllerListener:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;

.field private mCurDMR:Ljava/lang/String;

.field private mCurIndex:J

.field private mCurPlayerState:I

.field private mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private mDMRName:Ljava/lang/String;

.field private mDecodeTask:Landroid/os/AsyncTask;

.field private mFooterBar:Lcom/htc/widget/HtcFooter;

.field private mForceUpdateByPlayerState:Z

.field private mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

.field private mHtcTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field mImgAlbumArt:Landroid/widget/ImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIsEnableControlBar:Z

.field private mIsRepeat:Z

.field private mMode:I

.field private mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

.field private mReceiver:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;

.field private mRendererListener:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;

.field private mSkipSetdataSource:Z

.field private mStopSlideShow:Z

.field private mThumbnailPath:Ljava/lang/String;

.field private mTitlebarMain:Ljava/lang/String;

.field private mTitlebarSub:Ljava/lang/String;

.field private mTvDisplayListner:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;

.field private mWirelessDisplayHelper:Lcom/htc/album/helper/WirelessDisplayHelper;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    const-string v0, "KA>>> [PhotoDMC]"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->PRE_LOG:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 96
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mControllerListener:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;

    .line 97
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mRendererListener:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;

    .line 98
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mReceiver:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;

    .line 100
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    .line 101
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    .line 102
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    .line 104
    iput v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActState:I

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mTitlebarMain:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mTitlebarSub:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDMRName:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mThumbnailPath:Ljava/lang/String;

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    .line 116
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    .line 119
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z

    .line 122
    iput v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurPlayerState:I

    .line 123
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsEnableControlBar:Z

    .line 124
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mForceUpdateByPlayerState:Z

    .line 127
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    .line 130
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 133
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 134
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    .line 135
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNext:Lcom/htc/widget/HtcRimButton;

    .line 136
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPrevious:Lcom/htc/widget/HtcRimButton;

    .line 137
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 139
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    .line 140
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBubbleList:Ljava/util/ArrayList;

    .line 143
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    .line 146
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mWirelessDisplayHelper:Lcom/htc/album/helper/WirelessDisplayHelper;

    .line 149
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHtcTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 150
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mTvDisplayListner:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;

    .line 152
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mSkipSetdataSource:Z

    .line 155
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItem:Z

    .line 156
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItemID:Ljava/lang/String;

    .line 158
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mStopSlideShow:Z

    .line 2540
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$8;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$8;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    .line 2549
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$9;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$9;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2741
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$10;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$10;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPreviousClickListener:Landroid/view/View$OnClickListener;

    .line 2750
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$11;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$11;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPauseClickListener:Landroid/view/View$OnClickListener;

    .line 2759
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$12;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$12;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNextClickListener:Landroid/view/View$OnClickListener;

    .line 2768
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$13;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$13;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMoreClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 3056
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onStateChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->requestDecodeBitmap(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateDMCPhoto(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onErrorHandle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doClose()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doPrevious()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doPlayPause()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doNext()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doDetails()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->hideControlBars()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doRepeat()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doOutput()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->backToAlbumThumbView()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->showControlBars()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActState:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onServiceConnected()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onRenderConnected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onItemInforChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    return-void
.end method

.method private adjustControlBtnOffset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 324
    const v4, 0x7f09002f

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 325
    .local v2, ly:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_0

    .line 327
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 328
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 330
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 331
    .local v1, fSizeSize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 332
    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v4, 0x6

    .line 333
    .local v3, nOffset:I
    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 336
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #fSizeSize:Landroid/graphics/Point;
    .end local v3           #nOffset:I
    :cond_0
    return-void
.end method

.method private backToAlbumFullView()V
    .locals 9

    .prologue
    .line 1373
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1376
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "Extras"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1378
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1379
    .local v3, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "*/*"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const-string v5, "Render"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1381
    const-string v4, "Server"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "Server"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    const-string v4, "key_bucket_id"

    const-string v5, "key_bucket_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1383
    const-string v4, "key_folder_name"

    const-string v5, "key_folder_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    const-string v4, "folder_type"

    const-string v5, "folder_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1385
    const-string v4, "position"

    iget-wide v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1388
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->finish()V

    .line 1395
    const-string v4, "ActivityPhotoDMC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [PhotoDMC][backToAlbumFullView]: MODE_LOCAL, mCurIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :cond_0
    :goto_1
    return-void

    .line 1389
    :catch_0
    move-exception v2

    .line 1390
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "[backToAlbumFullView]: back to LOCAL NG !"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1397
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1400
    :try_start_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "Extras"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1402
    .restart local v0       #bundle:Landroid/os/Bundle;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.album.action.DLNA_VIEW_SERVER_PHOTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1403
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "*/*"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1405
    const-string v5, "Render"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1406
    const-string v4, "Server"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "Server"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1407
    const-string v4, "DLNA_SERVER"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "Server"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1408
    const-string v4, "DLNA_CONTAINER"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "container"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    const-string v4, "DLNA_ALBUM"

    const-string v5, "folder_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1410
    const-string v4, "DLNA_CONTENT"

    iget-wide v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    const-string v4, "DLNA_PHOTOBEGIN"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "startIdx"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1415
    const-string v4, "DLNA_PHOTOEND"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "endIdx"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1416
    const-string v4, "DLNA_PHOTODIRECTION"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "direction"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1418
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1419
    .local v1, bundleExtra:Landroid/os/Bundle;
    const-string v4, "server_id"

    const-string v5, "key_bucket_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v4, "server_name"

    const-string v5, "key_folder_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v4, "directory_info"

    const-string v5, "directory_info"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1422
    const-string v4, "browse_info"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1423
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1424
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1429
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #bundleExtra:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->finish()V

    .line 1431
    const-string v4, "ActivityPhotoDMC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [PhotoDMC][backToAlbumFullView]: MODE_DMS, mCurIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1425
    :catch_1
    move-exception v2

    .line 1426
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "[backToAlbumFullView]: back to DMS NG !"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1433
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1435
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "dmc_bundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1436
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "index_id"

    iget-wide v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1438
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1439
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "com.htc.album.action.DLNA_VIEW_ONLINE_PHOTO"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    const-string v4, "dmc_bundle"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1442
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->startActivity(Landroid/content/Intent;)V

    .line 1444
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->finish()V

    .line 1446
    const-string v4, "ActivityPhotoDMC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [PhotoDMC][backToAlbumFullView]: MODE_ONLINE, mCurIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private backToAlbumThumbView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1278
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->unregisterReceiver()V

    .line 1281
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][backToAlbumThumbView]: +"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1285
    .local v3, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-ne v4, v6, :cond_1

    .line 1288
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "Extras"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1290
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "*/*"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1292
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    const-string v4, "Render"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "Render"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string v4, "key_bucket_id"

    const-string v5, "key_bucket_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    const-string v4, "key_folder_name"

    const-string v5, "key_folder_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const-string v4, "folder_type"

    const-string v5, "folder_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    const-string v4, "browse_mode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1298
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1299
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->finish()V

    .line 1309
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][backToAlbumThumbView]: Local Mode"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :cond_0
    :goto_1
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][backToAlbumThumbView]: -"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    return-void

    .line 1303
    :catch_0
    move-exception v2

    .line 1304
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "[backToAlbumThumbView]: back to LOCAL NG !"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1311
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1314
    :try_start_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "Extras"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1316
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "*/*"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    const-string v4, "Render"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "Render"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    const-string v4, "Server"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v6, "Server"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    const-string v4, "tab_default"

    const-string v5, "tab_default"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1323
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1324
    .local v1, bundleExtra:Landroid/os/Bundle;
    const-string v4, "server_id"

    const-string v5, "key_bucket_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v4, "server_name"

    const-string v5, "key_folder_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v4, "directory_info"

    const-string v5, "directory_info"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1333
    const-string v4, "browse_info"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1334
    const-string v4, "browse_mode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1336
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1337
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->finish()V

    .line 1338
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1346
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #bundleExtra:Landroid/os/Bundle;
    :goto_2
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][backToAlbumThumbView]: DMS Mode"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1342
    :catch_1
    move-exception v2

    .line 1343
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "[backToAlbumThumbView]: back to DMS NG !"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1348
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1350
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "dmc_bundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1352
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "com.htc.album.action.DLNA_VIEW_ONLINE_BROWSE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const-string v4, "dmc_bundle"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1356
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->startActivity(Landroid/content/Intent;)V

    .line 1358
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->finish()V

    .line 1363
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][backToAlbumThumbView]: Online Mode"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private checkValidIndex(JJ)Z
    .locals 4
    .parameter "lCurIndex"
    .parameter "lMaxIndex"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1894
    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_1

    .line 1896
    :cond_0
    const-string v1, "ActivityPhotoDMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkValidIndex]: check NG ! lCurIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lMaxIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    :goto_0
    return v0

    .line 1900
    :cond_1
    cmp-long v1, p1, p3

    if-lez v1, :cond_2

    .line 1902
    const-string v1, "ActivityPhotoDMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkValidIndex]: check NG ! lCurIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lMaxIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1906
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copyBundDataToIntent(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 7
    .parameter "bundleData"
    .parameter "intent"

    .prologue
    .line 2346
    const-string v5, "ActivityPhotoDMC"

    const-string v6, "[ActivityPhotoDMC][copyBundDataToIntent]: Start copy Bundle data to Intent."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    const-string v5, "user_name"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2349
    .local v2, strEXT_USER_NAME:Ljava/lang/String;
    const-string v5, "user_buddyicon"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2350
    .local v1, strEXT_USER_BUDDYICON:Ljava/lang/String;
    const-string v5, "service_display"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2360
    .local v0, strEXT_SERVICEDISPLAY:Ljava/lang/String;
    const-string v5, "user_name"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2361
    const-string v5, "user_buddyicon"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2362
    const-string v5, "service_display"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2363
    const-string v5, "from_tabhost"

    const-string v6, "from_tabhost"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2364
    const-string v5, "live_album"

    const-string v6, "live_album"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2365
    const-string v5, "sort_list"

    const-string v6, "sort_list"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2366
    const-string v5, "my_live_album"

    const-string v6, "my_live_album"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2368
    const-string v5, "service_name"

    const-string v6, "service_name"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2371
    const/4 v4, 0x0

    .line 2372
    .local v4, szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "service_url"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2373
    .local v3, szServiceUrl:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2374
    if-eqz v4, :cond_0

    .line 2377
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2384
    :goto_0
    return-void

    .line 2381
    :cond_0
    const-string v5, "ActivityPhotoDMC"

    const-string v6, "[ActivityPhotoDMC][copyBundDataToIntent]: szUserID is NULL !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doClose()V
    .locals 2

    .prologue
    .line 1008
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][doClose]: +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    .line 1013
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][doClose]: Require PowerOff !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_0
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][doClose]: normal case, Back to ThumbnailView."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->backToAlbumThumbView()V

    .line 1021
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][doClose]: -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method private doDetails()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1063
    :cond_0
    return-void
.end method

.method private doNext()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 955
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 957
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][doNext]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playNext()V

    .line 962
    invoke-direct {p0, v2, v2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->enableControlBar(ZZ)V

    .line 964
    :cond_0
    return-void
.end method

.method private doOutput()V
    .locals 2

    .prologue
    .line 1026
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][doOutput]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->launchDMRSelectPlayer(Landroid/app/Activity;)V

    .line 1029
    return-void
.end method

.method private doPlayPause()V
    .locals 4

    .prologue
    .line 924
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v1, :cond_0

    .line 926
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->refreshPlayPauseBtnIcon()V

    .line 928
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isDMCPlaying()Z

    move-result v0

    .line 930
    .local v0, isPlaying:Z
    if-eqz v0, :cond_1

    .line 931
    const-string v1, "ActivityPhotoDMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> [PhotoDMC][doPlayPause] isPlaying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Do Pause !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :goto_0
    if-eqz v0, :cond_2

    .line 937
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    .line 938
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurPlayerState:I

    .line 946
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->enableControlBar(ZZ)V

    .line 951
    .end local v0           #isPlaying:Z
    :cond_0
    return-void

    .line 933
    .restart local v0       #isPlaying:Z
    :cond_1
    const-string v1, "ActivityPhotoDMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> [PhotoDMC][doPlayPause] isPlaying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Do Play !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 942
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    .line 943
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurPlayerState:I

    goto :goto_1
.end method

.method private doPrevious()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 968
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 970
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][doPrevious]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playPrevious()V

    .line 975
    invoke-direct {p0, v2, v2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->enableControlBar(ZZ)V

    .line 977
    :cond_0
    return-void
.end method

.method private doRepeat()V
    .locals 6

    .prologue
    .line 1033
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v3, :cond_0

    .line 1035
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoDMC][doRepeat] mIsRepeat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z

    if-eqz v3, :cond_1

    .line 1040
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V

    .line 1044
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1045
    .local v2, preference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1046
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "dmc_repeat"

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1047
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1049
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateFootBarMoreBtn()V

    .line 1055
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #preference:Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    return-void

    .line 1042
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoDMC][doRepeat]: NG ! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private doTurnOnOffTV(Z)V
    .locals 3
    .parameter "bValue"

    .prologue
    .line 981
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][doTurnOnOffTV]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    if-eqz p1, :cond_0

    .line 986
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][doTurnOnOffTV]: Press TurnONTV - Change Render."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOnTV(Landroid/content/Context;)Z

    .line 991
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getNotificationInfo()Lcom/htc/dlnainterface/DLNAStatusBarData;

    move-result-object v0

    .line 992
    .local v0, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 994
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mSkipSetdataSource:Z

    .line 1004
    .end local v0           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :goto_0
    return-void

    .line 999
    :cond_0
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][doTurnOnOffTV]: Press TurnOffTV - Back To  FullScreenview."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->unregisterReceiver()V

    .line 1001
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOffTV(Landroid/content/Context;)V

    .line 1002
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->backToAlbumThumbView()V

    goto :goto_0
.end method

.method private enableControlBar(ZZ)V
    .locals 0
    .parameter "isEnable"
    .parameter "bForce"

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->refreshFooterBar()V

    .line 920
    return-void
.end method

.method private getNotificationInfo()Lcom/htc/dlnainterface/DLNAStatusBarData;
    .locals 3

    .prologue
    .line 711
    new-instance v0, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 712
    .local v0, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 713
    const-string v1, "com.htc.album.action.LAUNCH_PHOTO_DMC"

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 714
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 715
    const-string v1, "HtcAlbum"

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 716
    return-object v0
.end method

.method private hideControlBars()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2838
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    const/16 v2, 0x4e3c

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->removeMessages(I)V

    .line 2840
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 2841
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 2843
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 2846
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    if-eqz v1, :cond_1

    .line 2848
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 2850
    :cond_1
    return-void
.end method

.method private initDlnaControler()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 350
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 351
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mControllerListener:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;

    .line 352
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mControllerListener:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$ControllerListener;

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 353
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mRendererListener:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;

    .line 354
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mRendererListener:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$RendererListener;

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;)V

    .line 355
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->runAsSlideShow()V

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method private initFootBar()V
    .locals 7

    .prologue
    const v6, 0x2080013

    const v5, 0x2080012

    const v3, 0x2080011

    const/4 v4, 0x0

    .line 2669
    const v1, 0x7f090038

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooter;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 2671
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    if-eqz v1, :cond_4

    .line 2673
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][initFootBar]: +"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 2677
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 2680
    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPrevious:Lcom/htc/widget/HtcRimButton;

    .line 2681
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPrevious:Lcom/htc/widget/HtcRimButton;

    if-eqz v1, :cond_0

    .line 2683
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPrevious:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 2684
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPrevious:Lcom/htc/widget/HtcRimButton;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPreviousClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2685
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPrevious:Lcom/htc/widget/HtcRimButton;

    const v2, 0x20800c0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 2686
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPrevious:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v3, v5, v6}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 2691
    :cond_0
    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    .line 2692
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    if-eqz v1, :cond_1

    .line 2694
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->refreshPlayPauseBtnIcon()V

    .line 2695
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 2696
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPauseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2697
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v3, v5, v6}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 2702
    :cond_1
    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNext:Lcom/htc/widget/HtcRimButton;

    .line 2703
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNext:Lcom/htc/widget/HtcRimButton;

    if-eqz v1, :cond_2

    .line 2705
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNext:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 2706
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNext:Lcom/htc/widget/HtcRimButton;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2707
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNext:Lcom/htc/widget/HtcRimButton;

    const v2, 0x20800b4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 2708
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNext:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v3, v5, v6}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 2714
    :cond_2
    const v1, 0x7f090035

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 2715
    .local v0, btn:Lcom/htc/widget/HtcFooterButton;
    new-instance v1, Lcom/htc/album/modules/ui/widget/FooterButton;

    const/16 v2, 0x11

    const/4 v3, 0x3

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;-><init>(Lcom/htc/widget/HtcFooterButton;III)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2717
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    if-eqz v1, :cond_3

    .line 2719
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    const v2, 0x7f0a0117

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextResource(I)V

    .line 2720
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMoreClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 2722
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateFootBarMoreBtn()V

    .line 2725
    :cond_3
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][initFootBar]: -"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    .end local v0           #btn:Lcom/htc/widget/HtcFooterButton;
    :goto_0
    return-void

    .line 2729
    :cond_4
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][initFootBar]: NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDMCPlaying()Z
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isPlaying()Z

    move-result v0

    .line 2133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFromDMC(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 2388
    if-nez p0, :cond_1

    .line 2407
    :cond_0
    :goto_0
    return v0

    .line 2391
    :cond_1
    const-string v1, "com.htc.album.action.DLNA_VIEW_ONLINE_PHOTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_VIEW_ONLINE_BROWSE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_VIEW_SERVER_PHOTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 2402
    .local v0, isFromDMC:Z
    :cond_3
    const-string v1, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static isSupportTvOut()Z
    .locals 1

    .prologue
    .line 2412
    const/4 v0, 0x0

    return v0
.end method

.method private loadBundle(Landroid/content/Intent;)Z
    .locals 23
    .parameter "intent"

    .prologue
    .line 1575
    const-string v19, "ActivityPhotoDMC"

    const-string v20, "KA>>> [PhotoDMC][loadBundle]: +"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1579
    .local v15, t1:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1583
    .local v11, pref:Landroid/content/SharedPreferences;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1585
    .local v5, bundle:Landroid/os/Bundle;
    const-string v19, "dmc_mode"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1586
    .local v9, nMode:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "dmc_mode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1590
    const-string v12, "null"

    .line 1591
    .local v12, strValue:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 1592
    .local v6, lValue:J
    const/4 v4, 0x0

    .line 1594
    .local v4, bValue:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1596
    const-string v19, "ActivityPhotoDMC"

    const-string v20, "KA>>> [PhotoDMC][loadBundle]: Load Local Mode Bundle !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const-string v19, "Render"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "Render"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    const-string v19, "key_bucket_id"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1603
    const-string v19, "key_bucket_id"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const-string v19, "key_folder_name"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1606
    const-string v19, "key_folder_name"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string v19, "folder_type"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1609
    const-string v19, "folder_type"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const-string v19, "Server"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "Server"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1615
    const-string v19, "Extras"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1735
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1737
    .local v17, t2:J
    const-string v19, "ActivityPhotoDMC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KA>>> [PhotoDMC][loadBundle]: -, time: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v17, v15

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const/16 v19, 0x1

    .end local v17           #t2:J
    :goto_1
    return v19

    .line 1617
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1619
    const-string v19, "ActivityPhotoDMC"

    const-string v20, "KA>>> [PhotoDMC][loadBundle]: Load DMS Mode Bundle !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    const-string v19, "Render"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "Render"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const-string v19, "Server"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "Server"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1628
    const-string v19, "tab_default"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1629
    const-string v19, "tab_default"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    const-string v19, "key_bucket_id"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1632
    const-string v19, "key_bucket_id"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const-string v19, "key_folder_name"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1635
    const-string v19, "key_folder_name"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    const-string v19, "FolderBundle"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1638
    .local v3, arrayFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const-string v19, "directory_info"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1643
    const-string v19, "container"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "container"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    const-string v19, "folder_type"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "folder_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1649
    const-string v19, "startIdx"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "startIdx"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    const-string v19, "endIdx"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "endIdx"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1655
    const-string v19, "direction"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "direction"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1658
    const-string v19, "Extras"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1660
    .end local v3           #arrayFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1662
    const-string v19, "ActivityPhotoDMC"

    const-string v20, "KA>>> [PhotoDMC][loadBundle]: Load Online Mode Bundle !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const-string v19, "user_name"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1666
    const-string v19, "user_name"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const-string v19, "user_buddyicon"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1669
    const-string v19, "user_buddyicon"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v19, "service_display"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1672
    const-string v19, "service_display"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v19, "service_url"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1675
    .local v13, szServiceUrl:Ljava/lang/String;
    const-string v19, "service_url"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v19, "album_photo"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1678
    const-string v19, "album_photo"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const-string v19, "service_name"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1681
    const-string v19, "service_name"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const-string v19, "tab_default"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1684
    const-string v19, "tab_default"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v19, "album_id"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1687
    const-string v19, "album_id"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const-string v19, "user_id"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1690
    const-string v19, "user_id"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    const-string v19, "album_name"

    const-string v20, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1693
    const-string v19, "album_name"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string v19, "from_tabhost"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1697
    const-string v19, "from_tabhost"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1699
    const-string v19, "my_live_album"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1700
    const-string v19, "my_live_album"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1701
    const-string v19, "from_albumhost"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1702
    const-string v19, "from_albumhost"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1703
    const-string v19, "from_outside"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1704
    const-string v19, "from_outside"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1706
    const-string v19, "opensense_pugin"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1707
    const-string v19, "opensense_pugin"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1708
    const-string v19, "refresh_by_delete_all"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1709
    const-string v19, "refresh_by_delete_all"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1710
    const-string v19, "from_tmoFaves"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1711
    const-string v19, "from_tmoFaves"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1713
    const-string v19, "refresh_by_delete"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1714
    const-string v19, "refresh_by_delete"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1717
    const-string v19, "index_id"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1718
    .local v10, nValue:I
    const-string v19, "index_id"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1721
    const-string v19, "ServiceURL"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1722
    .local v14, szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1724
    const-string v19, "PhotoList"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1725
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const-string v19, "dmc_online_photo_list"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1727
    const-string v19, "dmc_bundle"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1731
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    .end local v10           #nValue:I
    .end local v13           #szServiceUrl:Ljava/lang/String;
    .end local v14           #szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v19, "ActivityPhotoDMC"

    const-string v20, "KA>>> [PhotoDMC][loadBundle]: UNKKNOW Mode, NG !!"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method private onErrorHandle(ILjava/lang/String;)V
    .locals 5
    .parameter "nErrorCode"
    .parameter "strRenderID"

    .prologue
    const v4, 0x7f0a0152

    const/4 v3, 0x0

    .line 2004
    const-string v0, "ActivityPhotoDMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> [PhotoDMC][onErrorHandle]: Error Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->printError(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    sparse-switch p1, :sswitch_data_0

    .line 2032
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onErrorHandle] error Code not in Range !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    :goto_0
    :sswitch_0
    return-void

    .line 2009
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->showDialog(I)V

    goto :goto_0

    .line 2012
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->showDialog(I)V

    goto :goto_0

    .line 2016
    :sswitch_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2022
    :sswitch_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2025
    :sswitch_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2006
    :sswitch_data_0
    .sparse-switch
        -0x13e -> :sswitch_0
        -0x13a -> :sswitch_5
        -0x134 -> :sswitch_4
        -0x12d -> :sswitch_2
        -0x12c -> :sswitch_1
        0x2c0 -> :sswitch_3
        0x2ca -> :sswitch_3
        0x2cc -> :sswitch_4
    .end sparse-switch
.end method

.method private onItemInforChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 12
    .parameter "ctlInfo"

    .prologue
    const/4 v11, 0x1

    .line 1823
    const-string v7, "ActivityPhotoDMC"

    const-string v8, "KA>>> [PhotoDMC][onItemInforChanged]: +"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    iget-object v7, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDMRName:Ljava/lang/String;

    .line 1830
    iget-wide v2, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1831
    .local v2, nTitleIndex:J
    const-wide/16 v7, 0x1

    sub-long v7, v2, v7

    iput-wide v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    .line 1832
    const-string v7, "ActivityPhotoDMC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KA>>> [PhotoDMC][onItemInforChanged]: Get CurIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nTitleIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    iget-object v7, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1837
    iget-object v7, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateTitlebarMain(Ljava/lang/String;)V

    .line 1843
    :cond_0
    iget-wide v0, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1844
    .local v0, nMaxIndex:J
    iget v7, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_4

    .line 1846
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0144

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateTitlebarSub(Ljava/lang/String;)V

    .line 1863
    :cond_1
    :goto_0
    iget v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-eq v7, v11, :cond_2

    iget v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 1865
    :cond_2
    iget-object v7, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 1867
    iget-object v7, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1869
    iget-object v7, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mThumbnailPath:Ljava/lang/String;

    .line 1870
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1871
    .local v6, uri:Landroid/net/Uri;
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->requestDecodeBitmap(Landroid/net/Uri;)V

    .line 1887
    .end local v6           #uri:Landroid/net/Uri;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->invalidateOptionsMenu()V

    .line 1889
    const-string v7, "ActivityPhotoDMC"

    const-string v8, "KA>>> [PhotoDMC][onItemInforChanged]: -"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    return-void

    .line 1848
    :cond_4
    iget v7, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    const/16 v8, 0x6a

    if-ne v7, v8, :cond_5

    .line 1850
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0145

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateTitlebarSub(Ljava/lang/String;)V

    goto :goto_0

    .line 1852
    :cond_5
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDMRName:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->checkValidIndex(JJ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1854
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1855
    .local v5, strSubTitle:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0139

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDMRName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1856
    .local v4, strDMRName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1857
    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateTitlebarSub(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1874
    .end local v4           #strDMRName:Ljava/lang/String;
    .end local v5           #strSubTitle:Ljava/lang/String;
    :cond_6
    const-string v7, "ActivityPhotoDMC"

    const-string v8, "KA>>> [PhotoDMC][onItemInforChanged]: mThumbnailPath the same with previous skip update Photo."

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1877
    :cond_7
    const-string v7, "ActivityPhotoDMC"

    const-string v8, "KA>>> [PhotoDMC][onItemInforChanged]: mThumbnailPath is null skip update Photo."

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1880
    :cond_8
    iget v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 1882
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    if-eqz v7, :cond_3

    iget-wide v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    .line 1883
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    iget-wide v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->requestDownloadTasks(I)V

    goto/16 :goto_1
.end method

.method private onRenderConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "strRender"

    .prologue
    .line 1772
    const-string v0, "ActivityPhotoDMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> [PhotoDMC][onRenderConnected]: Render "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    if-nez p1, :cond_0

    .line 1776
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onRenderConnected]: Render is Null ! doClose !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doClose()V

    .line 1780
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1782
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    .line 1794
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mSkipSetdataSource:Z

    if-eqz v0, :cond_3

    .line 1796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mSkipSetdataSource:Z

    .line 1797
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onRenderConnected]: SetRender only because already initDataSource."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    .line 1804
    :goto_1
    return-void

    .line 1787
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1789
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onRenderConnected]: Server Render and Set Render is Diff !!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    goto :goto_0

    .line 1802
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initDataSource()Z

    goto :goto_1
.end method

.method private onServiceConnected()V
    .locals 2

    .prologue
    .line 1761
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onServiceConnected]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->setRender()V

    .line 1763
    return-void
.end method

.method private onServiceDisConnected()V
    .locals 2

    .prologue
    .line 1767
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onDisConnected]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    return-void
.end method

.method private onStateChanged(I)V
    .locals 5
    .parameter "nState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1941
    const-string v0, "ActivityPhotoDMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> [PhotoDMC][onStateChanged]: State("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->printState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    sparse-switch p1, :sswitch_data_0

    .line 1966
    :goto_0
    return-void

    .line 1949
    :sswitch_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mStopSlideShow:Z

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    .line 1951
    :cond_0
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mStopSlideShow:Z

    .line 1952
    invoke-direct {p0, v4, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->enableControlBar(ZZ)V

    goto :goto_0

    .line 1955
    :sswitch_1
    invoke-direct {p0, v3, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->enableControlBar(ZZ)V

    goto :goto_0

    .line 1958
    :sswitch_2
    invoke-direct {p0, v3, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->enableControlBar(ZZ)V

    goto :goto_0

    .line 1962
    :sswitch_3
    invoke-direct {p0, v4, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->enableControlBar(ZZ)V

    .line 1963
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0146

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateTitlebarSub(Ljava/lang/String;)V

    goto :goto_0

    .line 1943
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x64 -> :sswitch_1
        0x68 -> :sswitch_3
        0x6a -> :sswitch_2
    .end sparse-switch
.end method

.method private onThumbChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "strPath"

    .prologue
    .line 2000
    return-void
.end method

.method private printError(I)Ljava/lang/String;
    .locals 1
    .parameter "nErrorCode"

    .prologue
    .line 2039
    sparse-switch p1, :sswitch_data_0

    .line 2060
    const-string v0, "UNKNOW Error Code."

    :goto_0
    return-object v0

    .line 2043
    :sswitch_0
    const-string v0, "INVALID_RENDERER_ID"

    goto :goto_0

    .line 2045
    :sswitch_1
    const-string v0, "INVALID_SERVER_ID"

    goto :goto_0

    .line 2047
    :sswitch_2
    const-string v0, "UPnPDMRERROR_NOTSUPPORT_FORMAT"

    goto :goto_0

    .line 2049
    :sswitch_3
    const-string v0, "UPnPDMRERROR_ILLEGAL_MIME_TYPE"

    goto :goto_0

    .line 2051
    :sswitch_4
    const-string v0, "UPnPDMRERROR_RESOURCE_NOTFOUND"

    goto :goto_0

    .line 2053
    :sswitch_5
    const-string v0, "UNABLE_TO_PLAY"

    goto :goto_0

    .line 2055
    :sswitch_6
    const-string v0, "NOTIFY_PAUSE_NOTSUPPORT"

    goto :goto_0

    .line 2057
    :sswitch_7
    const-string v0, "RENDERER_STATUS_ERROR"

    goto :goto_0

    .line 2039
    :sswitch_data_0
    .sparse-switch
        -0x13e -> :sswitch_7
        -0x13a -> :sswitch_6
        -0x134 -> :sswitch_5
        -0x12d -> :sswitch_1
        -0x12c -> :sswitch_0
        0x2 -> :sswitch_0
        0x2c0 -> :sswitch_2
        0x2ca -> :sswitch_3
        0x2cc -> :sswitch_4
    .end sparse-switch
.end method

.method private printState(I)Ljava/lang/String;
    .locals 1
    .parameter "nState"

    .prologue
    .line 1970
    sparse-switch p1, :sswitch_data_0

    .line 1994
    const-string v0, "UNKNOW STATE"

    :goto_0
    return-object v0

    .line 1973
    :sswitch_0
    const-string v0, "STATE_BUFFERING"

    goto :goto_0

    .line 1975
    :sswitch_1
    const-string v0, "STATE_NO_MEDIA"

    goto :goto_0

    .line 1977
    :sswitch_2
    const-string v0, "STATE_PAUSED"

    goto :goto_0

    .line 1979
    :sswitch_3
    const-string v0, "STATE_PAUSING"

    goto :goto_0

    .line 1981
    :sswitch_4
    const-string v0, "STATE_PLAYING"

    goto :goto_0

    .line 1983
    :sswitch_5
    const-string v0, "STATE_SENDING_CONTENT"

    goto :goto_0

    .line 1985
    :sswitch_6
    const-string v0, "STATE_STOPPED"

    goto :goto_0

    .line 1987
    :sswitch_7
    const-string v0, "STATE_TIMEOUT"

    goto :goto_0

    .line 1989
    :sswitch_8
    const-string v0, "STATE_TRANSITIONING"

    goto :goto_0

    .line 1991
    :sswitch_9
    const-string v0, "STATE_AUTOPLAYWANTSHOWSTOP"

    goto :goto_0

    .line 1970
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_6
        0x2 -> :sswitch_2
        0x5 -> :sswitch_8
        0x6 -> :sswitch_1
        0x64 -> :sswitch_0
        0x68 -> :sswitch_7
        0x69 -> :sswitch_3
        0x6a -> :sswitch_5
        0x3e8 -> :sswitch_9
    .end sparse-switch
.end method

.method private refreshPlayPauseBtnIcon()V
    .locals 2

    .prologue
    .line 2735
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isDMCPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2736
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    const v1, 0x20800b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 2739
    :goto_0
    return-void

    .line 2738
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    const v1, 0x20800bb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    goto :goto_0
.end method

.method private requestDecodeBitmap(Landroid/net/Uri;)V
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1911
    if-nez p1, :cond_1

    .line 1913
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][requestDecodeBitmap]: uri is null."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1917
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    .line 1919
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 1921
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->getIndex()I

    move-result v6

    .line 1922
    .local v6, nCurDecodeIndex:I
    int-to-long v0, v6

    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v8}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    .line 1933
    .end local v6           #nCurDecodeIndex:I
    :cond_3
    const-string v0, "ActivityPhotoDMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> [PhotoDMC][requestDecodeBitmap]: request index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] start decode. uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    iget-wide v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    long-to-int v3, v3

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Landroid/os/Handler;ILandroid/net/Uri;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private saveBundle(Landroid/os/Bundle;)Z
    .locals 16
    .parameter "bundle"

    .prologue
    .line 1453
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1454
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1457
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "ActivityPhotoDMC"

    const-string v12, "KA>>> [PhotoDMC][saveBundle]: +"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1461
    .local v7, t1:J
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 1463
    const-string v11, "ActivityPhotoDMC"

    const-string v12, "KA>>> [PhotoDMC][saveBundle]: Save Local Mode Bundle !"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string v11, "dmc_mode"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1468
    const-string v11, "Render"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v13, "Render"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1469
    const-string v11, "key_bucket_id"

    const-string v12, "key_bucket_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1470
    const-string v11, "key_folder_name"

    const-string v12, "key_folder_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1471
    const-string v11, "folder_type"

    const-string v12, "folder_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1474
    const-string v11, "Server"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v13, "Server"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1479
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1566
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1568
    .local v9, t2:J
    const-string v11, "ActivityPhotoDMC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KA>>> [PhotoDMC][saveBundle]: -, time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v9, v7

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    const/4 v11, 0x1

    .end local v9           #t2:J
    :goto_1
    return v11

    .line 1482
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 1484
    const-string v11, "ActivityPhotoDMC"

    const-string v12, "KA>>> [PhotoDMC][saveBundle]: Save DMS Mode Bundle !"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    const-string v11, "dmc_mode"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1488
    const-string v11, "Render"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v13, "Render"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1489
    const-string v11, "Server"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v13, "Server"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1491
    const-string v11, "tab_default"

    const-string v12, "tab_default"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1492
    const-string v11, "key_bucket_id"

    const-string v12, "key_bucket_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1493
    const-string v11, "key_folder_name"

    const-string v12, "key_folder_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1495
    const-string v11, "directory_info"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1496
    .local v1, arrayFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const-string v11, "FolderBundle"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1499
    const-string v11, "container"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v13, "container"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1501
    const-string v11, "folder_type"

    const-string v12, "folder_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1503
    const-string v11, "startIdx"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v13, "startIdx"

    const-wide/16 v14, -0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-interface {v2, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1504
    const-string v11, "endIdx"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v13, "endIdx"

    const-wide/16 v14, -0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-interface {v2, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1505
    const-string v11, "direction"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v13, "direction"

    const-wide/16 v14, -0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-interface {v2, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1507
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1509
    .end local v1           #arrayFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 1511
    const-string v11, "ActivityPhotoDMC"

    const-string v12, "KA>>> [PhotoDMC][saveBundle]: Save Online Mode Bundle !"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v11, "dmc_mode"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1516
    const-string v11, "user_name"

    const-string v12, "user_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1517
    const-string v11, "user_buddyicon"

    const-string v12, "user_buddyicon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1518
    const-string v11, "service_display"

    const-string v12, "service_display"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1519
    const-string v11, "service_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1520
    .local v5, szServiceUrl:Ljava/lang/String;
    const-string v11, "service_url"

    invoke-interface {v2, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1521
    const-string v11, "album_photo"

    const-string v12, "album_photo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1522
    const-string v11, "service_name"

    const-string v12, "service_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1523
    const-string v11, "tab_default"

    const-string v12, "tab_default"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1524
    const-string v11, "album_id"

    const-string v12, "album_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1525
    const-string v11, "user_id"

    const-string v12, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1526
    const-string v11, "album_name"

    const-string v12, "album_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1529
    const-string v11, "from_tabhost"

    const-string v12, "from_tabhost"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1532
    const-string v11, "my_live_album"

    const-string v12, "my_live_album"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1533
    const-string v11, "from_albumhost"

    const-string v12, "from_albumhost"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1534
    const-string v11, "from_outside"

    const-string v12, "from_outside"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1535
    const-string v11, "opensense_pugin"

    const-string v12, "opensense_pugin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1536
    const-string v11, "refresh_by_delete_all"

    const-string v12, "refresh_by_delete_all"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1537
    const-string v11, "from_tmoFaves"

    const-string v12, "from_tmoFaves"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1538
    const-string v11, "refresh_by_delete"

    const-string v12, "refresh_by_delete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1541
    const-string v11, "index_id"

    const-string v12, "index_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1544
    const/4 v6, 0x0

    .line 1545
    .local v6, szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1546
    if-eqz v6, :cond_2

    .line 1548
    const-string v11, "ServiceURL"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1551
    :cond_2
    const/4 v3, 0x0

    .line 1552
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const-string v11, "dmc_online_photo_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1553
    if-eqz v3, :cond_3

    .line 1555
    const-string v11, "PhotoList"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1558
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1562
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v5           #szServiceUrl:Ljava/lang/String;
    .end local v6           #szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v11, "ActivityPhotoDMC"

    const-string v12, "KA>>> [PhotoDMC][saveBundle]: UNKKNOW Mode, NG !!"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method private serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 873
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-nez p2, :cond_0

    .line 886
    :goto_0
    return-void

    .line 877
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 878
    .local v2, outStream:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 879
    .local v1, objOutStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 880
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 881
    .end local v1           #objOutStream:Ljava/io/ObjectOutputStream;
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 883
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 884
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private setRender()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 361
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][setRender]: +"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 365
    :cond_0
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][setRender]: -, mDLNAManager or mIntent is not rdy ! Close DMC !"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doClose()V

    .line 430
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, strAction:Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v2, "com.htc.album.action.LAUNCH_PHOTO_DMC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 374
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->loadBundle(Landroid/content/Intent;)Z

    .line 376
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v3, "Render"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 378
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][setRender]: Render shouldn\'t be null when launch from Notification. DoClose !"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doClose()V

    goto :goto_0

    .line 383
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    .line 386
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItem:Z

    .line 388
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][setRender]: Mode: MODE_NOTIFICATION"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v3, "Render"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    .line 412
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getNotificationInfo()Lcom/htc/dlnainterface/DLNAStatusBarData;

    move-result-object v0

    .line 414
    .local v0, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 415
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    .line 417
    :cond_4
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 418
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    .line 420
    :cond_6
    const-string v2, "ActivityPhotoDMC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [PhotoDMC][setRender]: Set Render: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mSkipSetdataSource:Z

    .line 424
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 425
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 429
    :goto_2
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][setRender]: -"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    .end local v0           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_7
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v3, "dmc_mode"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    .line 393
    const-string v2, "ActivityPhotoDMC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [PhotoDMC][initDataSource]: Mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-ne v2, v6, :cond_8

    .line 396
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][setRender]: -, unknow mode ! DoClose !"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doClose()V

    goto/16 :goto_0

    .line 401
    :cond_8
    iget v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-eq v2, v7, :cond_9

    iget v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 404
    :cond_9
    iput-boolean v7, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItem:Z

    goto/16 :goto_1

    .line 407
    :cond_a
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItem:Z

    goto/16 :goto_1

    .line 427
    .restart local v0       #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_b
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    goto :goto_2
.end method

.method private showControlBars()V
    .locals 5

    .prologue
    const/16 v4, 0x4e3c

    const/4 v2, 0x0

    .line 2821
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 2822
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 2824
    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 2827
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    if-eqz v1, :cond_1

    .line 2829
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 2832
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->removeMessages(I)V

    .line 2833
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2834
    return-void
.end method

.method private unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 891
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 892
    .local v2, inStream:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 893
    .local v3, objInStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 894
    .local v0, alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 902
    .end local v0           #alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v2           #inStream:Ljava/io/FileInputStream;
    .end local v3           #objInStream:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v0

    .line 896
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/FileNotFoundException;
    move-object v0, v4

    .line 897
    goto :goto_0

    .line 898
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v0, v4

    .line 899
    goto :goto_0

    .line 900
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 901
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "ActivityPhotoDMC"

    const-string v6, "can not unserialize arraylist"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 902
    goto :goto_0
.end method

.method private updateDMCPhoto(Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter "bitmap"
    .parameter "nIndexPhoto"

    .prologue
    const/16 v3, 0x12c

    .line 1144
    if-nez p1, :cond_0

    .line 1146
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onThumbChanged]: bitmap is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :goto_0
    return-void

    .line 1150
    :cond_0
    const-string v0, "ActivityPhotoDMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> [PhotoDMC][updateDMCPhoto]: update index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ,  Bitmap W: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", H: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1162
    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1163
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1
.end method

.method private updateFootBar()V
    .locals 1

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    if-eqz v0, :cond_0

    .line 2794
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooter;->invalidate()V

    .line 2796
    :cond_0
    return-void
.end method

.method private updateFootBarMoreBtn()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 2800
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    if-eqz v0, :cond_1

    .line 2802
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/FooterButton;->clearBubble()V

    .line 2804
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    const/16 v1, 0xb

    const v2, 0x7f0a012b

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2807
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z

    if-eqz v0, :cond_2

    .line 2808
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v4, v3, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2812
    :goto_0
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v0, :cond_1

    .line 2814
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    const/16 v1, 0xf

    const v2, 0x7f0a00be

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2817
    :cond_1
    return-void

    .line 2810
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    const v1, 0x7f0a0013

    invoke-virtual {v0, v4, v3, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_0
.end method

.method private updateTitlebarMain(Ljava/lang/String;)V
    .locals 0
    .parameter "strTitle"

    .prologue
    .line 2139
    if-eqz p1, :cond_0

    .line 2141
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mTitlebarMain:Ljava/lang/String;

    .line 2142
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->invalidateOptionsMenu()V

    .line 2144
    :cond_0
    return-void
.end method

.method private updateTitlebarSub(Ljava/lang/String;)V
    .locals 0
    .parameter "strTitle"

    .prologue
    .line 2148
    if-eqz p1, :cond_0

    .line 2150
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mTitlebarSub:Ljava/lang/String;

    .line 2151
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->invalidateOptionsMenu()V

    .line 2153
    :cond_0
    return-void
.end method


# virtual methods
.method protected LaunchDetails(Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 22
    .parameter "details"

    .prologue
    .line 1068
    if-nez p1, :cond_1

    .line 1070
    const-string v3, "ActivityPhotoDMC"

    const-string v4, "Item detail null..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: duration:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: filename:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: nameDMS:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: trackname:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: artistname:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: albumname:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: genre:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: composer:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: location:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityPhotoDMC][LaunchDetails]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 1098
    .local v21, rtt:Landroid/content/Intent;
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DetailDlgParams;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DetailDlgParams;-><init>()V

    .line 1100
    .local v2, maker:Lcom/htc/album/TabPluginDLNA/DetailDlgParams;
    const/4 v5, 0x0

    .line 1101
    .local v5, szPath:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1103
    .local v20, mCurFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1104
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 1115
    :goto_1
    const-string v3, "HdcDMC"

    const-string v4, "remote"

    const-string v6, "image"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    if-eqz v7, :cond_6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    :goto_3
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    if-eqz v9, :cond_8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    if-eqz v10, :cond_9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    if-eqz v11, :cond_a

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    :goto_6
    const-string v12, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v13, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_b

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    :goto_7
    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_c

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    :goto_8
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_d

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_b
    const-string v19, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual/range {v2 .. v19}, Lcom/htc/album/TabPluginDLNA/DetailDlgParams;->CreateExtraParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 1135
    if-eqz v21, :cond_0

    .line 1136
    const/high16 v3, 0x400

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1137
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1104
    :cond_2
    const-string v5, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_1

    .line 1105
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1106
    if-eqz v20, :cond_4

    move-object/from16 v5, v20

    :goto_c
    goto/16 :goto_1

    :cond_4
    const-string v5, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_c

    .line 1108
    :cond_5
    const-string v3, "ActivityPhotoDMC"

    const-string v4, "KA>>> [PhotoDMC][onThumbChanged]: bitmap is null !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1115
    :cond_6
    const-string v7, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_2

    :cond_7
    const-string v8, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_3

    :cond_8
    const-string v9, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_4

    :cond_9
    const-string v10, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_5

    :cond_a
    const-string v11, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_6

    :cond_b
    const-string v14, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_7

    :cond_c
    const-string v15, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_8

    :cond_d
    const-string v16, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_9

    :cond_e
    const-string v17, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_a

    :cond_f
    const-string v18, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_b
.end method

.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 2426
    const/4 v0, 0x0

    return v0
.end method

.method public computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 1250
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1251
    .local v4, w:I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1253
    .local v3, h:I
    div-int v2, v4, p2

    .line 1254
    .local v2, candidateW:I
    div-int v1, v3, p2

    .line 1255
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1257
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 1272
    :goto_0
    return v5

    .line 1260
    :cond_0
    if-le v0, v5, :cond_1

    .line 1262
    if-le v4, p2, :cond_1

    div-int v6, v4, v0

    if-ge v6, p2, :cond_1

    .line 1263
    add-int/lit8 v0, v0, -0x1

    .line 1266
    :cond_1
    if-le v0, v5, :cond_2

    .line 1268
    if-le v3, p2, :cond_2

    div-int v5, v3, v0

    if-ge v5, p2, :cond_2

    .line 1269
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 1272
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1746
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1748
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][dispatchKeyEvent]: KEYCODE_BACK"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->backToAlbumThumbView()V

    .line 1753
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 2432
    const/4 v0, 0x1

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 2469
    const/4 v0, 0x1

    return v0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    .prologue
    .line 2474
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 2475
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 2489
    :goto_0
    return-object v1

    .line 2477
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2479
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 2481
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 2489
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method initDataForDMS()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 549
    new-instance v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v2}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 552
    .local v2, plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "Server"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 553
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 554
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "container"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 555
    const/4 v4, 0x2

    iput v4, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 556
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "interval"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 557
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "startIdx"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 558
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "endIdx"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 559
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "direction"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 561
    const-string v4, "ActivityPhotoDMC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [PhotoDMC][initDataForDMS]: ContentID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V

    .line 576
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItem:Z

    if-eqz v3, :cond_0

    .line 578
    iget-object v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItemID:Ljava/lang/String;

    .line 579
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoDMC][setRender]: Set CompareFirstItem ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItemID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v4, "Extras"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 588
    .local v0, bundleSave:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bundleSave:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 591
    .restart local v0       #bundleSave:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->saveBundle(Landroid/os/Bundle;)Z

    .line 595
    :cond_1
    const/4 v3, 0x1

    .end local v0           #bundleSave:Landroid/os/Bundle;
    :goto_0
    return v3

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][initDataForDMS]: set data NG !"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method initDataForLocal()Z
    .locals 6

    .prologue
    .line 519
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v4, "pushlist"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 521
    .local v1, mCurPushList:[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-gtz v3, :cond_1

    .line 523
    :cond_0
    const-string v3, "ActivityPhotoDMC"

    const-string v4, "KA>>> [PhotoDMC][initDataForLocal]: mCurPushList NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v3, 0x0

    .line 544
    :goto_0
    return v3

    .line 527
    :cond_1
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 529
    .local v2, pos:I
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoDMC][initDataForLocal]: Start Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource([II)V

    .line 534
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItem:Z

    if-eqz v3, :cond_2

    .line 536
    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItemID:Ljava/lang/String;

    .line 537
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoDMC][setRender]: Set CompareFirstItem ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCompareFirstItemID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v4, "Extras"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 542
    .local v0, bundleSave:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->saveBundle(Landroid/os/Bundle;)Z

    .line 544
    const/4 v3, 0x1

    goto :goto_0
.end method

.method initDataForNotification()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 660
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][initDataForNotification]: +"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "dmc_mode"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    .line 664
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-ne v4, v7, :cond_1

    .line 665
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][initDataForNotification]: nMode : MODE_LOCAL"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :goto_0
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-ne v4, v8, :cond_0

    .line 675
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v5, "dmc_bundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 676
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 677
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const-string v4, "dmc_online_photo_list"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 679
    if-eqz v3, :cond_4

    .line 681
    new-instance v4, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    invoke-direct {v4, v5, v6}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    .line 682
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    invoke-virtual {v4, v3}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->init(Ljava/util/ArrayList;)V

    .line 691
    :goto_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingIndex()J

    move-result-wide v1

    .line 693
    .local v1, lIndex:J
    const-string v4, "ActivityPhotoDMC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [PhotoDMC][initDataForNotification]: Online Mode, Get CurIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-gez v4, :cond_5

    .line 697
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->requestDownloadTasks(I)V

    .line 705
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #lIndex:J
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    :cond_0
    :goto_2
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][initDataForNotification]: -"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    return v7

    .line 666
    :cond_1
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 667
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][initDataForNotification]: nMode : MODE_DMS"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_2
    iget v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-ne v4, v8, :cond_3

    .line 669
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][initDataForNotification]: nMode : MODE_ONLINE"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_3
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][initDataForNotification]: nMode : MODE_UNKNOWN"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 686
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    :cond_4
    const-string v4, "ActivityPhotoDMC"

    const-string v5, "KA>>> [PhotoDMC][initDataForNotification]: Get List from Bundle NG !"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->backToAlbumThumbView()V

    goto :goto_1

    .line 701
    .restart local v1       #lIndex:J
    :cond_5
    const-string v4, "ActivityPhotoDMC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [PhotoDMC][initDataForNotification]: Get index is out of range, index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method initDataForOnline()Z
    .locals 14

    .prologue
    .line 601
    iget-object v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v11, "dmc_bundle"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 603
    .local v3, bundle:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 604
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const-string v10, "dmc_online_photo_list"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 606
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 608
    :cond_0
    const-string v10, "ActivityPhotoDMC"

    const-string v11, "[initDataForOnline]: list NG !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const/4 v10, 0x0

    .line 655
    :goto_0
    return v10

    .line 614
    :cond_1
    iget-object v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v11, "index_id"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    .line 616
    iget-object v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v11, "dmc_online_folder"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 617
    .local v9, strFolderName:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 618
    invoke-direct {p0, v9}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateTitlebarMain(Ljava/lang/String;)V

    .line 620
    :cond_2
    const-string v10, "ActivityPhotoDMC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KA>>> [PhotoDMC][initDataForDMS]: Start Index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", FolderName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v2, v10, [Ljava/lang/String;

    .line 623
    .local v2, arrayUrl:[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v1, v10

    .line 624
    .local v1, arrayTitle:[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v0, v10, [Ljava/lang/String;

    .line 626
    .local v0, arrayThumb:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 628
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 630
    .local v8, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v8, :cond_3

    .line 626
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 632
    :cond_3
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    .line 633
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v5

    goto :goto_2

    .line 636
    .end local v8           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_4
    new-instance v7, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-direct {v7}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;-><init>()V

    .line 637
    .local v7, object:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    iput-object v2, v7, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    .line 638
    iput-object v1, v7, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    .line 639
    iput-object v0, v7, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    .line 640
    iget-wide v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    long-to-int v10, v10

    iput v10, v7, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mIndex:I

    .line 641
    iget-object v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v10, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setIPListSource(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V

    .line 645
    new-instance v10, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    invoke-direct {v10, v11, v12}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    .line 646
    iget-object v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    invoke-virtual {v10, v6}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->init(Ljava/util/ArrayList;)V

    .line 649
    iget-object v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    iget-wide v11, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurIndex:J

    long-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->requestDownloadTasks(I)V

    .line 652
    iget-object v10, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    const-string v11, "dmc_bundle"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 653
    .local v4, bundleSave:Landroid/os/Bundle;
    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->saveBundle(Landroid/os/Bundle;)Z

    .line 655
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method initDataSource()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 434
    const-string v3, "ActivityPhotoDMC"

    const-string v4, "KA>>> [PhotoDMC][initDataSource]: +"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 438
    :cond_0
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][initDataSource]: -, mDLNAManager is not rdy !"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_0
    return v1

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v0

    .line 464
    .local v0, nState:I
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoDMC][initDataSource]: Get Current Render State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->printState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-ne v3, v2, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initDataForLocal()Z

    .line 494
    :goto_1
    const-string v1, "ActivityPhotoDMC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [PhotoDMC][initDataSource]: Render: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    .line 508
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mStopSlideShow:Z

    .line 510
    iput v6, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurPlayerState:I

    .line 512
    const-string v1, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][initDataSource]: -"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 514
    goto :goto_0

    .line 477
    :cond_2
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-ne v3, v6, :cond_3

    .line 479
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initDataForDMS()Z

    goto :goto_1

    .line 481
    :cond_3
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 483
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initDataForOnline()Z

    goto :goto_1

    .line 485
    :cond_4
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 487
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initDataForNotification()Z

    goto :goto_1

    .line 491
    :cond_5
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][initDataSource]: Shouldn\'t Run to here !!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method initUI()Z
    .locals 2

    .prologue
    .line 280
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][initUI]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 283
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initFootBar()V

    .line 287
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    .line 289
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->adjustControlBtnOffset()V

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method launchDMRSelectPlayer(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 848
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][launchDMRSelectPlayer]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    if-nez p1, :cond_0

    .line 869
    :goto_0
    return-void

    .line 852
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 853
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.dmc"

    const-string v3, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string v2, "cookie"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    const-string v2, "filter"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 862
    const/16 v2, 0x14

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    :catch_0
    move-exception v0

    .line 866
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ActivityPhotoDMC"

    const-string v3, "KA>>> [PhotoDMC][launchDMRSelectPlayer]: start DMR list activity fail"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 2

    .prologue
    .line 2462
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onActionBarBackPressed]: backToAlbumThumbView(). "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->backToAlbumThumbView()V

    .line 2464
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 813
    const-string v1, "ActivityPhotoDMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> [PhotoDMC][onActivityResult]: resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 817
    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v1, :cond_0

    .line 822
    const-string v1, "DMR"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, selectDMR:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 826
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][onActivityResult]: Selecr DMR is Null !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doClose()V

    .line 843
    .end local v0           #selectDMR:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 844
    return-void

    .line 829
    .restart local v0       #selectDMR:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mCurDMR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][onActivityResult]: Select DMR is the same."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 835
    :cond_2
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][onActivityResult]: Selecr DMR is different with previous."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 2650
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2651
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onBackPressed]: backToAlbumThumbView(). "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->backToAlbumThumbView()V

    .line 2653
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 345
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->adjustControlBtnOffset()V

    .line 346
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x400

    .line 237
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][onCreate]: +"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    .line 242
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIntent:Landroid/content/Intent;

    .line 243
    new-instance v1, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    invoke-direct {v1, p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    .line 246
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    .local v0, preference:Landroid/content/SharedPreferences;
    const-string v1, "dmc_repeat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mIsRepeat:Z

    .line 248
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doRepeat()V

    .line 250
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->requestWindowFeature(I)Z

    .line 251
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 254
    const v1, 0x7f030014

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->setContentView(I)V

    .line 255
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initDlnaControler()Z

    .line 256
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->initUI()Z

    .line 259
    new-instance v1, Lcom/htc/album/helper/WirelessDisplayHelper;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/htc/album/helper/WirelessDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/album/helper/WirelessDisplayListener;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mWirelessDisplayHelper:Lcom/htc/album/helper/WirelessDisplayHelper;

    .line 262
    new-instance v1, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;

    invoke-direct {v1, p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mTvDisplayListner:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;

    .line 263
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mTvDisplayListner:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$HtcTVDisplayListener;

    invoke-direct {v1, v2, v3}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHtcTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 265
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->registerReceivever()V

    .line 267
    const-string v1, "ActivityPhotoDMC"

    const-string v2, "KA>>> [PhotoDMC][onCreate]: -"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "args"

    .prologue
    const v5, 0x2040174

    const/4 v4, 0x0

    .line 2261
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0140

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2264
    .local v0, strAppTitle:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2338
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_1
    return-object v1

    .line 2266
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0150

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$2;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$2;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_1

    .line 2278
    :pswitch_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateTitlebarSub(Ljava/lang/String;)V

    goto :goto_0

    .line 2281
    :pswitch_2
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v3, 0x7f0a014f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$3;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$3;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_1

    .line 2293
    :pswitch_3
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0152

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$4;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$4;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_1

    .line 2305
    :pswitch_4
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a013c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0104

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$7;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$7;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a013b

    new-instance v3, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$6;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$6;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a013a

    new-instance v3, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$5;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$5;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_1

    .line 2264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 722
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onDestroy]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->unregisterReceiver()V

    .line 726
    iput v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActState:I

    .line 728
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mWirelessDisplayHelper:Lcom/htc/album/helper/WirelessDisplayHelper;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mWirelessDisplayHelper:Lcom/htc/album/helper/WirelessDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/album/helper/WirelessDisplayHelper;->release()V

    .line 731
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mWirelessDisplayHelper:Lcom/htc/album/helper/WirelessDisplayHelper;

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 736
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 738
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 739
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDecodeTask:Landroid/os/AsyncTask;

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHtcTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_2

    .line 745
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHtcTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 746
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHtcTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 749
    :cond_2
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    if-ne v0, v3, :cond_3

    .line 751
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->onDestroy()V

    .line 755
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 756
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 2438
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 2456
    const/4 v0, 0x1

    return v0
.end method

.method public onMirrorStatusChange(ZJ)V
    .locals 3
    .parameter "inMirror"
    .parameter "dongleIP"

    .prologue
    .line 2658
    if-eqz p1, :cond_0

    .line 2660
    const-string v0, "ActivityPhotoDMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> [PhotoDMC][onMirrorStatusChange]: inMirror: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 273
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onNewIntent]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 2522
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2537
    :goto_0
    return v1

    .line 2525
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doClose()V

    goto :goto_0

    .line 2528
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doOutput()V

    goto :goto_0

    .line 2531
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doTurnOnOffTV(Z)V

    goto :goto_0

    .line 2534
    :sswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->doTurnOnOffTV(Z)V

    goto :goto_0

    .line 2522
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2b -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 761
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onPause]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->onPause()V

    .line 769
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 770
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 2497
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->enableActionBarUpdate()Z

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onEnableActionBarBackButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onEnableActionBarAppButton()Z

    move-result v5

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onUpdateActionBarTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->onUpdateActionBarSecondaryTitle()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 2507
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2509
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 2511
    .local v9, context:Landroid/content/Context;
    const/16 v0, 0x2a

    const v1, 0x7f0a0138

    invoke-interface {p1, v11, v0, v11, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    .line 2512
    .local v10, itemCancel:Landroid/view/MenuItem;
    invoke-static {v9}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2513
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2515
    invoke-static {v9, p1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 2517
    return v6
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 775
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onResume]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mOnlineImageProvider:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->onResume()V

    .line 783
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 784
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 789
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onStart]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 792
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    .line 795
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->showControlBars()V

    .line 796
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 801
    const-string v0, "ActivityPhotoDMC"

    const-string v1, "KA>>> [PhotoDMC][onStop]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mHandler:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;

    const/16 v1, 0x4e3c

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$PhotoDMCHandler;->removeMessages(I)V

    .line 807
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 808
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mTitlebarSub:Ljava/lang/String;

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mTitlebarMain:Ljava/lang/String;

    return-object v0
.end method

.method public refreshFooterBar()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2232
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v3, :cond_1

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2234
    :cond_1
    const-string v3, "ActivityPhotoDMC"

    const-string v4, "KA>>> [PhotoDMC][refreshFooterBar]: +"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->updateFootBarMoreBtn()V

    .line 2239
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v2

    .line 2240
    .local v2, nState:I
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_3

    .line 2245
    .local v0, isControlBarEnable:Z
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPrevious:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 2246
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 2247
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnNext:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 2249
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isDMCPlaying()Z

    move-result v1

    .line 2250
    .local v1, isPlaying:Z
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mBtnPlayPause:Lcom/htc/widget/HtcRimButton;

    if-eqz v1, :cond_4

    const v3, 0x20800b6

    :goto_2
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 2252
    const-string v3, "ActivityPhotoDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoDMC][refreshFooterBar]: -, State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->printState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ConBar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPlaying: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2240
    .end local v0           #isControlBarEnable:Z
    .end local v1           #isPlaying:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2250
    .restart local v0       #isControlBarEnable:Z
    .restart local v1       #isPlaying:Z
    :cond_4
    const v3, 0x20800bb

    goto :goto_2
.end method

.method final registerReceivever()V
    .locals 3

    .prologue
    .line 2854
    new-instance v1, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$1;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mReceiver:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;

    .line 2855
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2856
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2857
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mReceiver:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2858
    return-void
.end method

.method final unregisterReceiver()V
    .locals 1

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mReceiver:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;

    if-nez v0, :cond_0

    .line 2867
    :goto_0
    return-void

    .line 2865
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mReceiver:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mReceiver:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DLNABroadcastReceiver;

    goto :goto_0
.end method
