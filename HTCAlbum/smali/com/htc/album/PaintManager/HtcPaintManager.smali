.class public Lcom/htc/album/PaintManager/HtcPaintManager;
.super Ljava/lang/Object;
.source "HtcPaintManager.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/PaintManager/HtcPaintManager$1;,
        Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;,
        Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;
    }
.end annotation


# static fields
.field public static final EXTENSION_PAINTCACHE:Ljava/lang/String; = ".png"

.field public static final EXTENSION_PAINTDATA:Ljava/lang/String; = ".data"

.field public static final FOLDER_PATH_PAINTCACHE:Ljava/lang/String; = "/mnt/sdcard/.gallery_paint/paint/"

.field public static final FOLDER_PATH_PAINTDATACACHE:Ljava/lang/String; = "/mnt/sdcard/.gallery_paint/data/"

.field public static final FOLDER_PATH_STROKE:Ljava/lang/String; = "/mnt/sdcard/.gallery_paint/stroke/"

.field private static final INVALID_STROKEID:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final PAINTING_VIEW_TRANSLUCENT_ALPHA:I = 0x33

.field public static final PAINTING_VIEW_VISIBLE:I = 0xff


# instance fields
.field private mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

.field private mContext:Landroid/content/Context;

.field private mCurrentPaintGroup:I

.field private mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

.field private mIsEnablePenMenu:Z

.field private mIsPenEnable:Z

.field private mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

.field private mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

.field private mMainViewLayout:Landroid/widget/RelativeLayout;

.field private mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

.field private mPaintAlpha:F

.field private mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

.field private mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

.field private mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

.field private mStrokeProps:Lcom/htc/painting/engine/StrokeProperties;

.field private mUIState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    .line 54
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    .line 55
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    .line 56
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mStrokeProps:Lcom/htc/painting/engine/StrokeProperties;

    .line 57
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    .line 58
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    .line 59
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    .line 61
    new-instance v0, Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/FileSerializeDAO;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    .line 63
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 64
    const/high16 v0, 0x437f

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintAlpha:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsEnablePenMenu:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsPenEnable:Z

    .line 69
    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    .line 70
    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mUIState:I

    .line 216
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030035

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    .line 219
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][HtcPaintManager]:... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPaintings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/painting/engine/HtcPaintingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    return-object v0
.end method

.method public static disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V
    .locals 8
    .parameter "activity"
    .parameter "window"
    .parameter "bIsDisable"

    .prologue
    const/4 v7, 0x1

    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, win:Landroid/view/Window;
    if-eqz p0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_2

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-eqz p1, :cond_2

    .line 86
    move-object v2, p1

    .line 90
    :cond_2
    if-eqz v2, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    sget-object v3, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[HTCAlbum][HtcPaintManager][disableSketcher]: "

    aput-object v6, v4, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    if-ne v7, p2, :cond_3

    .line 101
    invoke-static {v1}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->getExtraFlags(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 102
    .local v0, extraFlags:I
    or-int/lit8 v0, v0, 0x2

    .line 103
    invoke-static {v1, v0}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->setExtraFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 113
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 107
    .end local v0           #extraFlags:I
    :cond_3
    invoke-static {v1}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->getExtraFlags(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 108
    .restart local v0       #extraFlags:I
    and-int/lit8 v0, v0, -0x3

    .line 109
    invoke-static {v1, v0}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->setExtraFlags(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_1
.end method


# virtual methods
.method public bindList(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V
    .locals 7
    .parameter "adapterSrc"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 380
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 381
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4}, Lcom/htc/album/PaintManager/Interface/IPaintings;->unInitPaintings()V

    .line 382
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4}, Lcom/htc/album/PaintManager/Interface/IPaintings;->initPaintings()V

    .line 384
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 386
    .local v0, nCount:I
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4, v0}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 388
    .local v3, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    new-array v1, v6, [I

    .line 389
    .local v1, nCurrentGroups:[I
    new-array v2, v6, [Lcom/htc/album/PaintManager/PaintViewPort3D;

    .line 390
    .local v2, nCurrentViewPort:[Lcom/htc/album/PaintManager/PaintViewPort3D;
    aput v0, v1, v5

    .line 391
    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v4

    aput-object v4, v2, v5

    .line 393
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v4, v5}, Lcom/htc/painting/engine/HtcPaintingView;->init(Lcom/htc/painting/engine/AbsSerializeDAO;)V

    .line 396
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v1, v2}, Lcom/htc/painting/engine/HtcPaintingView;->requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z

    .line 397
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/htc/painting/engine/HtcPaintingView;->setViewPortForStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Z

    .line 398
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    invoke-virtual {v4, v5}, Lcom/htc/painting/engine/HtcPaintingView;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    .line 400
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v5}, Lcom/htc/painting/penmenu15/PenMenu;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    .line 401
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu15/PenMenu;->restoreSetting()V

    .line 402
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v5}, Lcom/htc/album/PaintManager/PenEventDispatcher;->onCreate(Lcom/htc/painting/engine/HtcPaintingView;)V

    .line 404
    :cond_0
    return-void
.end method

.method public doPrepareNextViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 7
    .parameter "nIndex"
    .parameter "itemInfo"
    .parameter "iimage"

    .prologue
    .line 598
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-interface {v2, v3}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 602
    .local v0, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v1

    .line 606
    .local v1, viewPort:Lcom/htc/album/PaintManager/PaintViewPort3D;
    if-eqz v1, :cond_0

    .line 609
    sget-object v2, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][doPrepareNextViewPort]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3D;->reset()V

    .line 614
    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3D;->matrixbegin()V

    .line 615
    iget v2, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v3, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    iget v4, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v5, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    add-int/2addr v4, v5

    iget v5, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    iget v6, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/album/PaintManager/PaintViewPort3D;->initRectangle(IIII)V

    .line 620
    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->initRotation(F)V

    .line 621
    iget v2, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setScale(F)V

    .line 622
    iget v2, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v3, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setTranslation(II)V

    .line 623
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->matrixEnd(Z)V

    goto :goto_0
.end method

.method public doRequestForceSave(Z)Z
    .locals 5
    .parameter "bCheckDirty"

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, bResult:Z
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    if-eq v2, v3, :cond_1

    .line 453
    if-eqz p1, :cond_2

    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-interface {v2, v3}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    check-cast v1, Lcom/htc/album/PaintManager/PaintViewItem;

    .restart local v1       #paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v1, :cond_0

    .line 458
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->isDirtyPaint()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 460
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroup(I)V

    .line 461
    const/4 v0, 0x1

    .line 471
    .end local v1           #paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][doRequestForceSave]: save: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    return v0

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroup(I)V

    .line 468
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doRotate(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "nIndex"
    .parameter "itemInfo"
    .parameter "iimage"

    .prologue
    .line 630
    return-void
.end method

.method public enablePaintView(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "bEnable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 262
    :cond_0
    if-ne v2, p2, :cond_1

    .line 264
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/wrap/android/view/HtcWrapWindow;->enablePenLinstener(Landroid/view/Window;Z)Z

    .line 265
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v2}, Lcom/htc/painting/engine/HtcPaintingView;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPaintingView;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/htc/wrap/android/view/HtcWrapWindow;->enablePenLinstener(Landroid/view/Window;Z)Z

    .line 271
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPaintingView;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPaintingView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enablePenMenu(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "bEnable"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 277
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsEnablePenMenu:Z

    if-eq v0, p2, :cond_0

    .line 283
    iput-boolean p2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsEnablePenMenu:Z

    .line 285
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[HtcPaintManager][enablePenMenu]: "

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    if-ne v4, p2, :cond_2

    .line 288
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/PenMenu;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    .line 289
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/PenMenu;->setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v5}, Lcom/htc/painting/penmenu15/PenMenu;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    .line 294
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v5}, Lcom/htc/painting/penmenu15/PenMenu;->setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintAlpha:F

    return v0
.end method

.method public getCurrentPaint()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    return v0
.end method

.method public getPaintLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPaintView()Landroid/view/View;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    return-object v0
.end method

.method public handlePenEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    if-nez v2, :cond_0

    move v1, v0

    .line 307
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 303
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    invoke-virtual {v2, p1}, Lcom/htc/album/PaintManager/PenEventDispatcher;->dispatchPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    move v1, v0

    .line 307
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public handlePenKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsEnablePenMenu:Z

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 318
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 315
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/painting/penmenu15/PenMenu;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    move v1, v0

    .line 318
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public markPaintDirty()V
    .locals 3

    .prologue
    .line 570
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iget v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-interface {v1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/PaintManager/Interface/IPaintable;

    .line 574
    .local v0, iPaintable:Lcom/htc/album/PaintManager/Interface/IPaintable;
    if-eqz v0, :cond_0

    .line 577
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/album/PaintManager/Interface/IPaintable;->setDirtyPaint(Z)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 338
    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onCreate]: begin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/HtcPaintingView;

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/PenMenu;

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v0, :cond_3

    .line 347
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onCreate]: no paint view..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {v2}, Lcom/htc/album/Customizable/CustFeatureItem;->enablePaintView(Z)V

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v0, p0}, Lcom/htc/album/PaintManager/FileSerializeDAO;->setReroute(Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;)V

    .line 357
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/FileSerializeDAO;->initialize()Z

    .line 363
    :cond_4
    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintManager;Lcom/htc/album/PaintManager/HtcPaintManager$1;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    .line 364
    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintManager;Lcom/htc/album/PaintManager/HtcPaintManager$1;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    .line 365
    new-instance v0, Lcom/htc/album/PaintManager/PenEventDispatcher;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/PenEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    .line 371
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/painting/penmenu15/PenMenu;->hide(ZZ)V

    .line 372
    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mUIState:I

    .line 373
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onCreate]: end "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 477
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onDestroy]: Begin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mUIState:I

    .line 479
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    .line 480
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    .line 485
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v0, :cond_0

    .line 487
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onDestroy]: destroy pen menu "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu15/PenMenu;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    .line 489
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/PenMenu;->hide(ZZ)V

    .line 490
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu15/PenMenu;->setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/PenMenu;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    .line 503
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    .line 506
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPaintingView;->destroyDrawingCache()V

    .line 507
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPaintingView;->destroy()V

    .line 509
    :cond_1
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    .line 511
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PenEventDispatcher;->onDestroy()V

    .line 514
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IPaintings;->unInitPaintings()V

    .line 522
    :cond_3
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 524
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mContext:Landroid/content/Context;

    .line 525
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    .line 526
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onDestroy]: End "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void

    .line 495
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMenuClosed()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/PenMenu;->onMenuClosed()V

    .line 247
    :cond_0
    return-void
.end method

.method public onMenuOpened()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/PenMenu;->onMenuOpened()V

    .line 242
    :cond_0
    return-void
.end method

.method public onPaintPartialStroke(II)V
    .locals 7
    .parameter "nIndex"
    .parameter "nStrokeId"

    .prologue
    const/4 v5, 0x1

    .line 690
    const/4 v1, 0x0

    .line 691
    .local v1, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    check-cast v1, Lcom/htc/album/PaintManager/PaintViewItem;

    .restart local v1       #paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-nez v1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v2

    .line 695
    .local v2, viewPort:Lcom/htc/album/PaintManager/PaintViewPort3D;
    if-eqz v2, :cond_0

    .line 698
    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->getIdentity()Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    move-result-object v3

    .line 699
    .local v3, viewPortIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;
    if-eqz v3, :cond_0

    .line 705
    invoke-virtual {v1, v5}, Lcom/htc/album/PaintManager/PaintViewItem;->setDirtyPaint(Z)V

    .line 710
    const/4 v0, 0x0

    .line 712
    .local v0, bmPaintCache:Landroid/graphics/Bitmap;
    if-nez p2, :cond_3

    .line 714
    invoke-virtual {p0, v1, v3, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 724
    :goto_1
    if-nez v0, :cond_2

    .line 726
    invoke-virtual {p0, v1, v3, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 728
    :cond_2
    if-nez p2, :cond_4

    .line 730
    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][HtcPaintManager][onPaintPartialStroke]: redraw: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\tstrokeId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v0, p1, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawOnBitmap(Landroid/graphics/Bitmap;ILcom/htc/painting/engine/ViewPort;)V

    .line 749
    :goto_2
    invoke-virtual {v1, v0}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 718
    :cond_3
    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 736
    :cond_4
    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][HtcPaintManager][onPaintPartialStroke]: patial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\tstrokeId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v0, p1, p2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawOnBitmap(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onPause]:... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/PenMenu;->saveSetting()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onResume]:... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected paintViewLoad(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 683
    return-void
.end method

.method protected paintViewSave(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 679
    return-void
.end method

.method public reRoutePaintSave(IZ)Z
    .locals 10
    .parameter "nIndex"
    .parameter "bIsRedraw"

    .prologue
    const/4 v9, 0x1

    .line 776
    const/4 v0, 0x0

    .line 781
    .local v0, bResult:Z
    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v6, :cond_0

    move v1, v0

    .line 832
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 784
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v6, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 785
    .local v3, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->isDirtyPaint()Z

    move-result v6

    if-nez v6, :cond_2

    .line 787
    :cond_1
    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: skip1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 788
    .restart local v1       #bResult:I
    goto :goto_0

    .line 790
    .end local v1           #bResult:I
    :cond_2
    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v4

    .line 791
    .local v4, viewPort:Lcom/htc/album/PaintManager/PaintViewPort3D;
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v6, :cond_4

    .line 793
    :cond_3
    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: skip2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 794
    .restart local v1       #bResult:I
    goto :goto_0

    .line 796
    .end local v1           #bResult:I
    :cond_4
    invoke-virtual {v4}, Lcom/htc/album/PaintManager/PaintViewPort3D;->getIdentity()Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    move-result-object v5

    .line 797
    .local v5, viewPortIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;
    if-nez v5, :cond_5

    .line 799
    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: skip3: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 800
    .restart local v1       #bResult:I
    goto :goto_0

    .line 802
    .end local v1           #bResult:I
    :cond_5
    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: Begin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v2, 0x0

    .line 809
    .local v2, bmPaintCache:Landroid/graphics/Bitmap;
    if-ne v9, p2, :cond_8

    .line 811
    invoke-virtual {p0, v3, v5, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 821
    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-ne v9, v6, :cond_7

    .line 823
    :cond_6
    invoke-virtual {p0, v3, v5, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 825
    :cond_7
    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v6, v2, p1, v5}, Lcom/htc/painting/engine/HtcPaintingView;->drawOnBitmap(Landroid/graphics/Bitmap;ILcom/htc/painting/engine/ViewPort;)V

    .line 826
    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v6, p1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintings;->paintCacheSave(ILandroid/graphics/Bitmap;)V

    .line 828
    const/4 v0, 0x1

    .line 829
    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: End "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 832
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 815
    .end local v1           #bResult:I
    :cond_8
    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method public reRouteStrokeDelete(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v0, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->strokeCacheDelete(I)V

    goto :goto_0
.end method

.method public reRouteStrokeLoad(I)[B
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 666
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v0, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->strokeCacheLoad(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public reRouteStrokeSave(I[B)V
    .locals 5
    .parameter "nIndex"
    .parameter "byteArray"

    .prologue
    .line 634
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v2, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    sget-object v2, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][reRouteStrokeSave]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v2, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/PaintManager/Interface/IPaintable;

    .line 641
    .local v1, iPaintable:Lcom/htc/album/PaintManager/Interface/IPaintable;
    if-eqz v1, :cond_2

    .line 642
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintable;->setDirtyPaint(Z)V

    .line 646
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v2, p1, p2}, Lcom/htc/album/PaintManager/Interface/IPaintings;->strokeCacheSave(I[B)V

    .line 647
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->reRoutePaintSave(IZ)Z

    .line 648
    if-eqz v1, :cond_0

    .line 649
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintable;->setDirtyPaint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][reRouteStrokeSave]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestViewStrokeGroup(I)V
    .locals 9
    .parameter "nIndex"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 530
    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][HtcPaintManager][requestViewStrokeGroup]: Begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, bIsExist:Z
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 535
    .local v3, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-nez v3, :cond_0

    .line 561
    :goto_0
    return-void

    .line 543
    :cond_0
    iput p1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    .line 548
    new-array v1, v8, [I

    .line 549
    .local v1, nCurrentGroups:[I
    new-array v2, v8, [Lcom/htc/album/PaintManager/PaintViewPort3D;

    .line 550
    .local v2, nCurrentViewPort:[Lcom/htc/album/PaintManager/PaintViewPort3D;
    iget v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    aput v4, v1, v7

    .line 551
    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v4

    aput-object v4, v2, v7

    .line 552
    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v1, v2}, Lcom/htc/painting/engine/HtcPaintingView;->requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z

    .line 554
    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "[HTCAlbum][HtcPaintManager][requestViewStrokeGroup]: "

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, " : "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "\n[HTCAlbum][HtcPaintManager][requestViewStrokeGroup]: End"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPaintDrawListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    goto :goto_0
.end method

.method public setPaintUpdateListener(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->setListenerPaintUpdate(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V

    goto :goto_0
.end method

.method public setPenAlpha(ILcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 1
    .parameter "nIndex"
    .parameter "view"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayAlpha()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPaintLayerTransparencyIHT(II)V

    goto :goto_0
.end method

.method public setPenMenuActionNotify(Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;)V
    .locals 1
    .parameter "notifier"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    goto :goto_0
.end method

.method public show(Z)V
    .locals 2
    .parameter "bIsShow"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 432
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showPaintingView(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->enablePainting(Z)V

    .line 256
    :cond_0
    return-void
.end method

.method public showPenMenu(Z)V
    .locals 3
    .parameter "bShow"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 323
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    if-ne v1, p1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/PenMenu;->show(ZZ)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/PenMenu;->hide(ZZ)V

    goto :goto_0
.end method

.method public supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "paintItem"
    .parameter "viewPortIdentity"
    .parameter "bIsNew"

    .prologue
    .line 757
    invoke-virtual {p1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 758
    .local v0, bitmapInk:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p3, :cond_1

    .line 760
    :cond_0
    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][HtcPaintManager][supplyPaintCacheBitmap]: new..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p2}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getHeight()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/htc/opensense2/album/util/BitmapUtil2;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 768
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 772
    :cond_1
    return-object v0
.end method

.method public updatePenableViewPortChange()V
    .locals 4

    .prologue
    .line 581
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v1, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iget v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-interface {v1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 588
    .local v0, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_0

    .line 591
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;->setPrepared(Z)V

    .line 592
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->setViewPortForStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Z

    .line 593
    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][HtcPaintManager][updatePenableViewPortChange]: set change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
