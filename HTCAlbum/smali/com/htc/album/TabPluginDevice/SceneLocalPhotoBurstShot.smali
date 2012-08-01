.class public Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.super Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.source "SceneLocalPhotoBurstShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$RotateListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ViewScrollStateChangedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/SceneLocalBase",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        "Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTINUOUS_SHOT_ASK_BESTSHOT_KEY:Ljava/lang/String; = "continuous_shot_ask_bestshot_setting"

.field public static final CONTINUOUS_SHOT_ASK_EXPAND_KEY:Ljava/lang/String; = "continuous_shot_ask_expand_setting"

#the value of this static final field might be set in the static constructor
.field public static final CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I = 0x0

.field private static final CONTINUOUS_SHOT_HORIZONTAL_MARGIN_ARRAY:[I = null

.field public static final CONTINUOUS_SHOT_ITEM_VISIBLE_RANGE:I = 0x64

#the value of this static final field might be set in the static constructor
.field public static final CONTINUOUS_SHOT_ITEM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final CONTINUOUS_SHOT_PADDING:I = 0x0

.field private static final CONTINUOUS_SHOT_PADDING_ARRAY:[I = null

#the value of this static final field might be set in the static constructor
.field public static final CONTINUOUS_SHOT_VERTICAL_MARGIN:I = 0x0

.field private static final CONTINUOUS_SHOT_VERTICAL_MARGIN_ARRAY:[I = null

.field private static final DIMENSION_GRID:[I = null

.field private static final DIMENSION_INDICATOR_FONT:[F = null

.field private static final DRM_FILENAME_BAR_FULLFILM_VIEW:I = 0x3

.field private static final FOOTER_BAR_LOCAL_FULLFILM_VIEW:I = 0x1

.field private static final HEADER_BAR_LOCAL_FULLFILM_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalPhotoBurstShot"

.field protected static final SW_BUTTON_OFF:I = 0x1

.field protected static final SW_BUTTON_ON:I = 0x0

.field private static final TIMER_PROGRESS_LOADING:I = 0x258

.field public static mOldBestShot:J


# instance fields
.field private final DEBUG:Z

.field private mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

.field private mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

.field private mContinuousIndicator:Landroid/view/ViewGroup;

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mDoItemClickWhenBindAdapter:Z

.field private mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

.field private mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

.field private mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter",
            "<",
            "Lcom/htc/sunny2/IMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalListView:Lcom/htc/widget/HBouncingListView;

.field private mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

.field private mIsBindAdapter:Z

.field private mIsComeFromCamera:Z

.field private mIsDirectClose:Z

.field private mIsShowThumbListView:Z

.field private final mListListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

.field protected mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

.field private mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

.field private mOrientation:I

.field private mOrientationHasChanged:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field protected mSWButtonState:I

.field private mSelectedItem:I

.field private mSelectedItemColor:Landroid/graphics/drawable/Drawable;

.field protected mShareIntent:Landroid/content/Intent;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 140
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN_ARRAY:[I

    .line 141
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN_ARRAY:[I

    .line 142
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING_ARRAY:[I

    .line 143
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    .line 144
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_INDICATOR_FONT:[F

    .line 146
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN_ARRAY:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    .line 147
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN_ARRAY:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    .line 148
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING_ARRAY:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    .line 149
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sget v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_ITEM_WIDTH:I

    .line 154
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    return-void

    .line 140
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 141
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    .line 142
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 143
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
    .end array-data

    .line 144
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0xd0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xd0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x42t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;-><init>()V

    .line 108
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    .line 110
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 112
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    .line 113
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    .line 114
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    .line 115
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    .line 116
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    .line 120
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    .line 121
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 122
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 123
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 124
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    .line 125
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

    .line 126
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 127
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSWButtonState:I

    .line 128
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    .line 130
    new-instance v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    .line 131
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    .line 155
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 157
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    .line 159
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mShareIntent:Landroid/content/Intent;

    .line 161
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    .line 165
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 2722
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mListListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

    .line 103
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->putAskBestShot(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doBestShot(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doSimulateScreenTouched(IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isDRMPressed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->putAskExpand(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doExpand()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->setPosition(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->setSelectedItemToVisible()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5000()[I
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private doAutoShowBurst()V
    .locals 3

    .prologue
    const/16 v2, 0x4e48

    .line 2450
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][doAutoShowBurst] +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 2452
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2454
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][doAutoShowBurst] do"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    const/4 v0, 0x0

    const/16 v1, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 2457
    :cond_0
    return-void
.end method

.method private doBestShot(Z)V
    .locals 8
    .parameter "bDeleteRest"

    .prologue
    const/4 v7, 0x1

    .line 1186
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1187
    .local v6, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v6, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v1

    if-ne v7, v1, :cond_2

    if-eqz p1, :cond_0

    .line 1196
    :cond_2
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;-><init>(Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;I)V

    .line 1197
    .local v0, setBest:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;
    new-array v1, v7, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private doExpand()V
    .locals 3

    .prologue
    .line 2150
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][doExpand]+"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 2153
    :cond_0
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalPhotoBurstShot][doExpand] mSceneControl or mAdapter is null "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    :goto_0
    return-void

    .line 2156
    :cond_1
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-direct {v1, v0, v2, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;-><init>(Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    .line 2157
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private doSimulateScreenTouched(IZ)V
    .locals 17
    .parameter "position"
    .parameter "isFromOnPrepareOptionsMenu"

    .prologue
    .line 1656
    const/4 v2, 0x0

    .line 1657
    .local v2, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v2           #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .restart local v2       #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-nez v2, :cond_1

    .line 1659
    const-string v14, "SceneLocalPhotoBurstShot"

    const-string v15, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]adapter is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    const/4 v10, 0x0

    .line 1664
    .local v10, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v10

    .end local v10           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v10       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v10, :cond_2

    .line 1666
    const-string v14, "SceneLocalPhotoBurstShot"

    const-string v15, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]image is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1670
    :cond_2
    const/4 v1, 0x0

    .line 1671
    .local v1, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1673
    const-string v14, "SceneLocalPhotoBurstShot"

    const-string v15, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]activity is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1677
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v14

    instance-of v5, v14, Lcom/htc/album/addons/SingleCollection;

    .line 1679
    .local v5, bIsShowSingle:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isControlBarShowing()Z

    move-result v3

    .line 1681
    .local v3, bControlBarShowing:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v14

    shr-int/lit8 v12, v14, 0x1

    .line 1682
    .local v12, posX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v14

    shr-int/lit8 v13, v14, 0x1

    .line 1684
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v14

    iget-object v11, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 1685
    .local v11, me:Landroid/view/MotionEvent;
    if-eqz v11, :cond_4

    .line 1687
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 1688
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 1691
    :cond_4
    const/4 v4, 0x0

    .line 1692
    .local v4, bIndicatorClicked:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    if-eqz v14, :cond_6

    .line 1694
    const/4 v4, 0x1

    .line 1705
    :goto_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1706
    .local v6, bundle:Landroid/os/Bundle;
    const-string v14, "folder_type"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    const-string v14, "key_folder_name"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const-string v14, "key_bucket_id"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v14, "position"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const/4 v8, 0x0

    .line 1712
    .local v8, goPlay:Z
    if-eqz v4, :cond_5

    if-eqz v10, :cond_5

    .line 1714
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1716
    invoke-static {v1, v10, v6}, Lcom/htc/album/helper/MenuManager;->launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 1717
    const/4 v8, 0x1

    .line 1739
    :cond_5
    :goto_2
    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    if-nez v14, :cond_0

    .line 1741
    const/16 v14, 0x4e3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 1743
    if-nez p2, :cond_0

    .line 1745
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 1746
    .local v9, h:Landroid/os/Handler;
    const/16 v14, 0x4e49

    invoke-virtual {v9, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1747
    const/16 v15, 0x4e49

    if-nez v3, :cond_a

    const/4 v14, 0x1

    :goto_3
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v14, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1749
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->toggleControlBarsVisibility()V

    .line 1750
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    goto/16 :goto_0

    .line 1696
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #goPlay:Z
    .end local v9           #h:Landroid/os/Handler;
    :cond_6
    if-eqz p2, :cond_7

    .line 1698
    const/4 v4, 0x0

    goto :goto_1

    .line 1702
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isHitIndicator(II)Z

    move-result v4

    goto :goto_1

    .line 1719
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v8       #goPlay:Z
    :cond_8
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1721
    const/4 v7, -0x1

    .line 1722
    .local v7, count:I
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v10

    .line 1724
    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getFrameCount()I

    move-result v7

    .line 1731
    :goto_4
    const/4 v14, 0x1

    if-le v7, v14, :cond_5

    .line 1733
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v14

    invoke-static {v1, v10, v14, v6}, Lcom/htc/album/helper/MenuManager;->launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V

    .line 1734
    const/4 v8, 0x1

    goto :goto_2

    .line 1728
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v7

    goto :goto_4

    .line 1747
    .end local v7           #count:I
    .restart local v9       #h:Landroid/os/Handler;
    :cond_a
    const/4 v14, 0x0

    goto :goto_3
.end method

.method private getAskBestShot(Z)Z
    .locals 4
    .parameter "bDefault"

    .prologue
    .line 1090
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskBestShot]+"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "continuous_shot_ask_bestshot_setting"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1092
    .local v0, bAsk:Z
    const-string v1, "SceneLocalPhotoBurstShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskBestShot] default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    return v0
.end method

.method private getAskExpand(Z)Z
    .locals 4
    .parameter "bDefault"

    .prologue
    .line 2162
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskExpand]+"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "continuous_shot_ask_expand_setting"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2164
    .local v0, bAsk:Z
    const-string v1, "SceneLocalPhotoBurstShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskExpand] default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    return v0
.end method

.method private isCurrentItemCanShow3D()Z
    .locals 6

    .prologue
    .line 1890
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1891
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 1892
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-eqz v0, :cond_3

    .line 1894
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/IMediaList;

    .line 1895
    .local v2, mediaList:Lcom/htc/sunny2/IMediaList;
    if-eqz v2, :cond_2

    .line 1897
    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1898
    .local v1, data:Lcom/htc/sunny2/IMediaData;
    if-eqz v1, :cond_0

    .line 1900
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1902
    const/4 v4, 0x1

    .line 1919
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :goto_0
    return v4

    .line 1907
    .restart local v1       #data:Lcom/htc/sunny2/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemCanShow3D]data is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1912
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemCanShow3D]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1917
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemCanShow3D]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isCurrentItemVideo()Z
    .locals 6

    .prologue
    .line 1924
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1925
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 1926
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-eqz v0, :cond_3

    .line 1928
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/IMediaList;

    .line 1929
    .local v2, mediaList:Lcom/htc/sunny2/IMediaList;
    if-eqz v2, :cond_2

    .line 1931
    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1932
    .local v1, data:Lcom/htc/sunny2/IMediaData;
    if-eqz v1, :cond_0

    .line 1934
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1936
    const/4 v4, 0x1

    .line 1953
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :goto_0
    return v4

    .line 1941
    .restart local v1       #data:Lcom/htc/sunny2/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemVideo]data is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1946
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemVideo]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1951
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemVideo]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isDRMPressed(I)Z
    .locals 8
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 1800
    const/4 v0, 0x0

    .line 1801
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .restart local v0       #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-nez v0, :cond_1

    .line 1803
    const-string v6, "SceneLocalPhotoBurstShot"

    const-string v7, "[HTCAlbum][SceneLocalPhotoBurstShot][doSimulateScreenPressed]adapter is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    :cond_0
    :goto_0
    return v1

    .line 1807
    :cond_1
    const/4 v2, 0x0

    .line 1808
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v6, p1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 1810
    const-string v6, "SceneLocalPhotoBurstShot"

    const-string v7, "[HTCAlbum][SceneLocalPhotoBurstShot][doSimulateScreenPressed]image is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1814
    :cond_2
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1817
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    shr-int/lit8 v4, v6, 0x1

    .line 1818
    .local v4, posX:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    .line 1820
    .local v5, posY:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v6

    iget-object v3, v6, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 1821
    .local v3, me:Landroid/view/MotionEvent;
    if-eqz v3, :cond_3

    .line 1823
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 1824
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 1827
    :cond_3
    const/4 v1, 0x0

    .line 1828
    .local v1, bIndicatorPressed:Z
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    if-eqz v6, :cond_4

    .line 1830
    const/4 v1, 0x1

    goto :goto_0

    .line 1834
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isHitIndicator(II)Z

    move-result v1

    goto :goto_0
.end method

.method private isHitIndicator(II)Z
    .locals 22
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v19

    div-int/lit8 v18, v19, 0x5

    .line 1850
    .local v18, wSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v19

    div-int/lit8 v8, v19, 0x5

    .line 1851
    .local v8, hSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1852
    .local v17, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v14, v0

    .line 1854
    .local v14, left:I
    sub-int v19, p1, v14

    mul-int/lit8 v20, v18, 0x2

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    const/4 v11, 0x1

    .line 1855
    .local v11, hitX:Z
    :goto_0
    sub-int v19, p2, v17

    mul-int/lit8 v20, v8, 0x2

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    if-ge v0, v8, :cond_4

    const/4 v12, 0x1

    .line 1857
    .local v12, hitY:Z
    :goto_1
    const/4 v13, 0x0

    .line 1858
    .local v13, isDrm:Z
    const/4 v9, 0x0

    .line 1859
    .local v9, hitDrmX:Z
    const/4 v10, 0x0

    .line 1862
    .local v10, hitDrmY:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v19

    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface/range {v19 .. v19}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v13

    .line 1864
    if-eqz v13, :cond_0

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1867
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v16

    .line 1868
    .local v16, screenw:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v15

    .line 1870
    .local v15, screenh:I
    div-int/lit8 v19, v16, 0x2

    sget v20, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    div-int/lit8 v20, v20, 0x2

    sub-int v4, v19, v20

    .line 1871
    .local v4, drmLeft:I
    div-int/lit8 v19, v15, 0x2

    sget v20, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    sget v20, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_Y_OFFSET:I

    add-int v5, v19, v20

    .line 1872
    .local v5, drmTop:I
    sget v6, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    .line 1873
    .local v6, drmWidth:I
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1875
    .local v3, drmHeight:I
    sub-int v19, p1, v4

    if-lez v19, :cond_5

    sub-int v19, p1, v4

    move/from16 v0, v19

    if-ge v0, v6, :cond_5

    const/4 v9, 0x1

    .line 1876
    :goto_2
    sub-int v19, p2, v5

    if-lez v19, :cond_6

    sub-int v19, p2, v5

    move/from16 v0, v19

    if-ge v0, v3, :cond_6

    const/4 v10, 0x1

    .line 1884
    .end local v2           #display:Landroid/view/Display;
    .end local v3           #drmHeight:I
    .end local v4           #drmLeft:I
    .end local v5           #drmTop:I
    .end local v6           #drmWidth:I
    .end local v15           #screenh:I
    .end local v16           #screenw:I
    :cond_0
    :goto_3
    if-eqz v11, :cond_1

    if-nez v12, :cond_2

    :cond_1
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    :cond_2
    const/16 v19, 0x1

    :goto_4
    return v19

    .line 1854
    .end local v9           #hitDrmX:Z
    .end local v10           #hitDrmY:Z
    .end local v11           #hitX:Z
    .end local v12           #hitY:Z
    .end local v13           #isDrm:Z
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1855
    .restart local v11       #hitX:Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 1875
    .restart local v2       #display:Landroid/view/Display;
    .restart local v3       #drmHeight:I
    .restart local v4       #drmLeft:I
    .restart local v5       #drmTop:I
    .restart local v6       #drmWidth:I
    .restart local v9       #hitDrmX:Z
    .restart local v10       #hitDrmY:Z
    .restart local v12       #hitY:Z
    .restart local v13       #isDrm:Z
    .restart local v15       #screenh:I
    .restart local v16       #screenw:I
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 1876
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 1879
    .end local v2           #display:Landroid/view/Display;
    .end local v3           #drmHeight:I
    .end local v4           #drmLeft:I
    .end local v5           #drmTop:I
    .end local v6           #drmWidth:I
    .end local v15           #screenh:I
    .end local v16           #screenw:I
    :catch_0
    move-exception v7

    .line 1881
    .local v7, e:Ljava/lang/Exception;
    const-string v19, "SceneLocalPhotoBurstShot"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HtcAlbum][SceneLocalPhotoBurstShot][isHitIndicator] error:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1884
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    const/16 v19, 0x0

    goto :goto_4
.end method

.method private onBestShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1071
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getAskBestShot(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showDialogBestShot()Landroid/app/Dialog;

    move-result-object v0

    .line 1074
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1081
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doBestShot(Z)V

    goto :goto_0
.end method

.method private onCover()V
    .locals 1

    .prologue
    .line 1085
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doBestShot(Z)V

    .line 1086
    return-void
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 9
    .parameter "selectDMR"

    .prologue
    .line 2682
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 2716
    :cond_0
    :goto_0
    return-void

    .line 2684
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 2689
    .local v4, selectedPos:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 2691
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2692
    .local v8, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v8, :cond_0

    .line 2694
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    .line 2696
    .local v7, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2698
    .local v5, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 2700
    const-string v0, "folder_type"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    const-string v0, "key_folder_name"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    const-string v0, "key_bucket_id"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    :cond_2
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2707
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2712
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    invoke-static {v0, p1, v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalPhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onExpandBurstShot()V
    .locals 3

    .prologue
    .line 2133
    const/4 v0, 0x0

    .line 2134
    .local v0, dlg:Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getAskExpand(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2136
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onExpandBurstShot] Ask Expand"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showDialogAskExpand()Landroid/app/Dialog;

    move-result-object v0

    .line 2138
    if-eqz v0, :cond_0

    .line 2139
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2146
    :cond_0
    :goto_0
    return-void

    .line 2143
    :cond_1
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onExpandBurstShot] no Ask Expand"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doExpand()V

    goto :goto_0
.end method

.method private onScrollStateChange(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 2669
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2670
    .local v0, scrollState:I
    if-nez v0, :cond_1

    .line 2672
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onScrollStateIDLE()V

    .line 2678
    :cond_0
    :goto_0
    return-void

    .line 2674
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2676
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onScrollStateScroll()V

    goto :goto_0
.end method

.method private putAskBestShot(Z)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 1098
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][putAskBestShot]+"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1100
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "continuous_shot_ask_bestshot_setting"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1103
    const/4 v1, 0x1

    return v1
.end method

.method private putAskExpand(Z)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 2170
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][putAskExpand]+"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2172
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "continuous_shot_ask_expand_setting"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2175
    const/4 v1, 0x1

    return v1
.end method

.method private setPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 1025
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[setPosition]mAdapter is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v0, :cond_2

    .line 1030
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[setPosition]mMainView is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_2
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 1035
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 1036
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    .line 1037
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1044
    :cond_3
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[setPosition]out of bound"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSelectedItemToVisible()V
    .locals 5

    .prologue
    .line 2762
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][setSelectedItemToVisible] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v2, :cond_1

    .line 2764
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][setSelectedItemToVisible] mHorizontalListView is null "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    :cond_0
    :goto_0
    return-void

    .line 2768
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v4}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2769
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_2

    .line 2770
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][setSelectedItemToVisible] mSelectedItem is null "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2774
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getListViewWidth()I

    move-result v0

    .line 2775
    .local v0, screen_width:I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 2777
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_ITEM_WIDTH:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HBouncingListView;->setSelectionFromLeft(II)V

    .line 2779
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    mul-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 2781
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HBouncingListView;->setSelectionFromLeft(II)V

    goto :goto_0
.end method

.method private showDialogAskExpand()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 2180
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2182
    :cond_0
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HtcAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] mSceneControl or activityReference is null "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :goto_0
    return-object v6

    .line 2185
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2186
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2187
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v7, 0x7f0a015e

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2190
    const-string v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2191
    .local v3, inflater:Landroid/view/LayoutInflater;
    if-nez v3, :cond_2

    .line 2193
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get LayoutInflater"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2197
    :cond_2
    const v7, 0x7f030007

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2198
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_3

    .line 2200
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get continuous_shot_ask layout"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2204
    :cond_3
    const v7, 0x7f020002

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2205
    const v7, 0x7f090018

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2206
    .local v4, textView:Landroid/widget/TextView;
    if-nez v4, :cond_4

    .line 2208
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get ask_text TextView"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2211
    :cond_4
    const v7, 0x7f0a015f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2213
    const v7, 0x7f09001a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 2214
    .restart local v4       #textView:Landroid/widget/TextView;
    if-nez v4, :cond_5

    .line 2216
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get remind_text TextView"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2219
    :cond_5
    const v7, 0x7f0a0160

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2221
    const v7, 0x7f090019

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    .line 2222
    .local v2, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v2, :cond_6

    .line 2224
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2228
    :cond_6
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2230
    const v6, 0x20401ee

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$5;

    invoke-direct {v7, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$5;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2239
    const v6, 0x2040174

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;

    invoke-direct {v7, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2250
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private showDialogBestShot()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1108
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1110
    :cond_0
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HtcAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] mSceneControl or activityReference is null "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :goto_0
    return-object v6

    .line 1114
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1116
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1117
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v7, 0x7f0a015b

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1120
    const-string v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1121
    .local v3, inflater:Landroid/view/LayoutInflater;
    if-nez v3, :cond_2

    .line 1123
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get LayoutInflater"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1127
    :cond_2
    const v7, 0x7f030007

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1128
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_3

    .line 1130
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get continuous_shot_ask layout"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1134
    :cond_3
    const v7, 0x7f020002

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1135
    const v7, 0x7f090018

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1136
    .local v4, textView:Landroid/widget/TextView;
    if-nez v4, :cond_4

    .line 1138
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get ask_text TextView"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    :cond_4
    const v7, 0x7f0a015c

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1143
    const v7, 0x7f09001a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 1144
    .restart local v4       #textView:Landroid/widget/TextView;
    if-nez v4, :cond_5

    .line 1146
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get remind_text TextView"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1149
    :cond_5
    const v7, 0x7f0a0160

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1151
    const v7, 0x7f090019

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    .line 1152
    .local v2, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v2, :cond_6

    .line 1154
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1158
    :cond_6
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1159
    const v6, 0x20401f3

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$3;

    invoke-direct {v7, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1169
    const v6, 0x20401f2

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;

    invoke-direct {v7, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1181
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private showThumbnailList(Z)V
    .locals 14
    .parameter "isShow"

    .prologue
    .line 2254
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v9, :cond_1

    .line 2255
    const-string v9, "SceneLocalPhotoBurstShot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[showThumbnailList] no mHorizontalListView isShow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    :cond_0
    :goto_0
    return-void

    .line 2258
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_3

    .line 2260
    :cond_2
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HtcAlbum][SceneLocalPhotoBurstShot][showThumbnailList] mSceneControl or  activityReference is null "

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2264
    :cond_3
    const-string v9, "SceneLocalPhotoBurstShot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[showThumbnailList] isShow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2267
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2269
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v6, v9, Landroid/content/res/Configuration;->orientation:I

    .line 2271
    .local v6, ori:I
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2272
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, -0x1

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2273
    sget-object v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    sget v10, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v9, v9, v10

    sget v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sget v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2276
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v9

    if-nez v9, :cond_6

    .line 2277
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 2278
    .local v2, footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    const/4 v9, 0x1

    if-ne v6, v9, :cond_5

    .line 2279
    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2281
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2282
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2290
    :goto_1
    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2297
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :goto_2
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_a

    .line 2298
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v9

    if-nez v9, :cond_7

    .line 2300
    :cond_4
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HtcAlbum][SceneLocalPhotoBurstShot][showThumbnailList] mSceneControl or  sunnyHost is null "

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2285
    .restart local v2       #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2286
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2288
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 2294
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :cond_6
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 2303
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2305
    .local v7, root:Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const v10, 0x7f02000d

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setBackgroundResource(I)V

    .line 2306
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0xe6

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2307
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/4 v10, 0x0

    sget v11, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    const/4 v12, 0x0

    sget v13, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/widget/HBouncingListView;->setPadding(IIII)V

    .line 2314
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7, v9, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2316
    if-nez p1, :cond_8

    .line 2317
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setVisibility(I)V

    .line 2324
    .end local v7           #root:Landroid/widget/RelativeLayout;
    :cond_8
    :goto_3
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 2326
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v9

    if-nez v9, :cond_b

    .line 2328
    :cond_9
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HtcAlbum][SceneLocalPhotoBurstShot][showThumbnailList] mSceneControl or  sunnyHost is null "

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2321
    :cond_a
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->requestLayout()V

    goto :goto_3

    .line 2331
    :cond_b
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2332
    .restart local v7       #root:Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v9, :cond_c

    .line 2334
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030001

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 2338
    :cond_c
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2340
    .local v5, lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v9

    if-nez v9, :cond_13

    .line 2341
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 2342
    .restart local v2       #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    const/4 v9, 0x1

    if-ne v6, v9, :cond_12

    .line 2345
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2346
    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2355
    :goto_4
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2360
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :goto_5
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_14

    .line 2361
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2362
    if-nez p1, :cond_d

    .line 2363
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2371
    :cond_d
    :goto_6
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const v10, 0x7f09000d

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2372
    .local v8, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2373
    const/4 v9, 0x0

    sget-object v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_INDICATOR_FONT:[F

    sget v11, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2376
    .end local v5           #lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #root:Landroid/widget/RelativeLayout;
    .end local v8           #textView:Landroid/widget/TextView;
    :cond_e
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    if-eq p1, v9, :cond_0

    .line 2418
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2419
    .local v1, firstVisible:I
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v3

    .line 2421
    .local v3, lastVisible:I
    const/4 v9, 0x1

    if-ne v9, p1, :cond_10

    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    if-gt v1, v9, :cond_f

    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    if-le v9, v3, :cond_10

    .line 2422
    :cond_f
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->resetListViewVisibleRange()V

    .line 2426
    :cond_10
    const/4 v9, 0x1

    if-ne v9, p1, :cond_15

    .line 2427
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setVisibility(I)V

    .line 2432
    :goto_7
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v9, :cond_11

    .line 2434
    if-eqz p1, :cond_16

    .line 2435
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2441
    :cond_11
    :goto_8
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    .line 2443
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v9, :cond_0

    .line 2444
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->notifyDataSetInvalidated()V

    goto/16 :goto_0

    .line 2349
    .end local v1           #firstVisible:I
    .end local v3           #lastVisible:I
    .restart local v2       #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .restart local v5       #lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7       #root:Landroid/widget/RelativeLayout;
    :cond_12
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2350
    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    .line 2358
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :cond_13
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    .line 2368
    :cond_14
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_6

    .line 2429
    .end local v5           #lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #root:Landroid/widget/RelativeLayout;
    .restart local v1       #firstVisible:I
    .restart local v3       #lastVisible:I
    :cond_15
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setVisibility(I)V

    goto :goto_7

    .line 2437
    :cond_16
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    const-string v0, "AdapterBurstPhoto"

    return-object v0
.end method

.method public checkIsShowActionBar()V
    .locals 2

    .prologue
    .line 2874
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][checkIsShowActionBar] +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 2877
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][checkIsShowActionBar] hide action bar"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideHeaderControlBar(Landroid/view/animation/Animation;)V

    .line 2880
    :cond_0
    return-void
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x1

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public exclusionEditTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 1958
    const/high16 v0, 0x1

    or-int/2addr v0, p1

    return v0
.end method

.method public exclusionShowHideTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 1963
    const/high16 v0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 2623
    const/4 v0, 0x5

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2094
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 2095
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-nez v0, :cond_1

    .line 2097
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][getHeaderTitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    :cond_0
    :goto_0
    return-object v2

    .line 2101
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2102
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 2106
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    if-eqz v3, :cond_2

    .line 2107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, subTitle:Ljava/lang/String;
    goto :goto_0

    .line 2109
    .end local v2           #subTitle:Ljava/lang/String;
    :cond_2
    const-string v2, " "

    .restart local v2       #subTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2076
    const/4 v0, 0x0

    .line 2077
    .local v0, activity:Landroid/app/Activity;
    const-string v2, ""

    .line 2080
    .local v2, strHeader:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2081
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0113

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2088
    :goto_0
    return-object v2

    .line 2083
    :catch_0
    move-exception v1

    .line 2085
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[getHeaderTitle] Can not get activity!!"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListViewWidth()I
    .locals 4

    .prologue
    .line 2788
    const/4 v1, 0x0

    .line 2789
    .local v1, nWidth:I
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2791
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->WINDOW_DISP_WIDTH:I

    .line 2798
    :goto_0
    return v1

    .line 2795
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    .line 2796
    .local v0, footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    sget v2, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->WINDOW_DISP_HEIGHT:I

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getWidth()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method public getSelectedPosSubtitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 2117
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-nez v0, :cond_1

    .line 2119
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][getSelectedPosSubtitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    :cond_0
    :goto_0
    return-object v2

    .line 2123
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2124
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 2127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2129
    .local v2, subTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public gotoFullscreen()V
    .locals 5

    .prologue
    .line 2858
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 2870
    :goto_0
    return-void

    .line 2861
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isBestShotChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2863
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    .line 2864
    .local v0, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v0, :cond_1

    .line 2865
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 2869
    .end local v0           #renderThread:Lcom/htc/sunny2/RenderThread;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v2, 0x0

    const-string v3, "SceneLocalPhotoFullscreen"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public gotoPrevious()V
    .locals 5

    .prologue
    .line 2824
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 2855
    :cond_0
    :goto_0
    return-void

    .line 2827
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isBestShotChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2829
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v2

    .line 2830
    .local v2, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v2, :cond_2

    .line 2831
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 2834
    .end local v2           #renderThread:Lcom/htc/sunny2/RenderThread;
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 2836
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_0

    .line 2839
    const/4 v1, 0x0

    .line 2840
    .local v1, bFromCamera:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2843
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "preview_mode"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 2849
    :goto_1
    if-eqz v1, :cond_0

    .line 2851
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][gotoPrevious]overrideRotateAnimation, TYPE_NO_ROTATE_ANIMATION"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    const/16 v3, 0x68

    invoke-static {v0, v3}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2843
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2845
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public isBestShotChanged()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2802
    const/4 v0, 0x1

    .line 2803
    .local v0, bBestShotChanged:Z
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v4, :cond_1

    .line 2820
    :cond_0
    :goto_0
    return v3

    .line 2805
    :cond_1
    sget-wide v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v3, v0

    .line 2806
    goto :goto_0

    .line 2807
    :cond_2
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 2810
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2811
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v3, v1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2812
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2814
    sget-wide v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 2815
    const/4 v0, 0x0

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    move v3, v0

    .line 2820
    goto :goto_0

    .line 2810
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isFileCachable()Z
    .locals 1

    .prologue
    .line 2719
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 691
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataSetChanged()V

    .line 693
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    .line 694
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 699
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->workaround_BurstAdapterDataSetChanged()V

    .line 701
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 703
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    .line 704
    const/16 v2, 0x139e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 707
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 708
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doExpand()V

    .line 710
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 711
    .local v1, view:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 712
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 724
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBack()V

    .line 784
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x139e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2514
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][onActivityResult] + "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    .line 2571
    :cond_0
    :goto_0
    return-void

    .line 2519
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2522
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2523
    .local v0, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    .line 2570
    :cond_2
    :goto_1
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onActivityResult] - "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2526
    :sswitch_0
    const/4 v1, 0x0

    .line 2528
    .local v1, extra:Landroid/os/Bundle;
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2530
    const-string v4, "return_delete_result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2532
    .local v2, nCount:I
    if-ne v2, v6, :cond_3

    .line 2533
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doExpand()V

    .line 2535
    :cond_3
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-ne v4, v6, :cond_4

    .line 2539
    invoke-virtual {p0, v8, v9, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 2542
    :cond_4
    if-nez v2, :cond_5

    .line 2544
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    .line 2545
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    .line 2546
    invoke-virtual {p0, v8, v9, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    .line 2550
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->notifyDataSetChanged()V

    .line 2551
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    goto :goto_1

    .line 2557
    .end local v1           #extra:Landroid/os/Bundle;
    .end local v2           #nCount:I
    :sswitch_1
    const-string v4, "DMR"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2558
    .local v3, selectDMR:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 2559
    if-eqz v3, :cond_2

    .line 2561
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 2566
    .end local v3           #selectDMR:Ljava/lang/String;
    :sswitch_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mShareIntent:Landroid/content/Intent;

    invoke-static {v0, v4, p3}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_1

    .line 2523
    nop

    :sswitch_data_0
    .sparse-switch
        0x1391 -> :sswitch_0
        0x1398 -> :sswitch_1
        0x220000 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onActivityResult_CROP_NONE(ILandroid/content/Intent;)V
    .locals 10
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    .line 2578
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v9, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onActivityResult_CROP_NONE] + "

    invoke-static {v7, v9}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2619
    :cond_0
    :goto_0
    return-void

    .line 2583
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2584
    .local v2, extras:Landroid/os/Bundle;
    const-string v7, "filePath"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2585
    .local v1, dstFilePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2587
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    const-string v9, "image/jpeg"

    invoke-static {v7, v1, v9}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 2590
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 2591
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->notifyDataSetChanged()V

    .line 2598
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v3

    .line 2599
    .local v3, itemCount:I
    add-int/lit8 v4, v3, -0x1

    .line 2610
    .local v4, pos:I
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    .line 2611
    .local v6, type:Ljava/lang/String;
    const-string v7, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    move v5, v8

    .line 2612
    .local v5, shouldStayOnOriginalImage:Z
    :goto_1
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    if-nez v5, :cond_4

    .line 2615
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsAfterEdit(Z)V

    .line 2618
    :cond_4
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onActivityResult_CROP_NONE] - "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2611
    .end local v5           #shouldStayOnOriginalImage:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onBack()V
    .locals 3

    .prologue
    .line 757
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "onBack"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    if-nez v0, :cond_0

    .line 759
    const/16 v0, 0x139e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 764
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 728
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "onBackPressed 0"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 737
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostBackPressed()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 574
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onBindAdapter()V

    .line 575
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v8

    if-nez v8, :cond_1

    .line 577
    :cond_0
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HtcAlbum][SceneLocalPhotoBurstShot][onBindAdapter] mSceneControl or activity or sunnyHost is null"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    return-void

    .line 581
    :cond_1
    iput v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 582
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 584
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v8, v3}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 585
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 587
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 588
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v8

    sput-wide v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    .line 593
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iget v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 594
    iput-boolean v13, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    .line 595
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 597
    .local v7, root:Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 598
    .local v0, activity:Landroid/app/Activity;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    .line 599
    .local v2, fragment:Landroid/app/Fragment;
    new-instance v9, Lcom/htc/album/helper/DeleteManager;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v8

    new-instance v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;

    invoke-direct {v10, p0, v11}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-direct {v9, v2, v8, v10}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 602
    if-nez v2, :cond_6

    .line 604
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][onBindAdapter]fragment is null"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 614
    invoke-static {v0, v11, v13}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 621
    :cond_3
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-direct {v9, p0, v0, v8, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    .line 622
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 623
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView2$OnScrollListener;)V

    .line 624
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setSelection(I)V

    .line 626
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->resetListViewVisibleRange()V

    .line 628
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 629
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    .line 630
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v5

    .line 631
    .local v5, nSelectedItemColor:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x208009b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    .line 632
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 635
    const/16 v8, 0x2724

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 636
    const/16 v8, 0x2728

    invoke-virtual {p0, v8, v11, v12}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 638
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v6

    .line 639
    .local v6, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v6, :cond_4

    .line 640
    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v8, v9}, Lcom/htc/sunny2/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 641
    const/16 v8, 0x139d

    const/16 v9, 0x1f4

    invoke-virtual {p0, v8, v11, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 644
    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    goto/16 :goto_0

    .line 582
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #fragment:Landroid/app/Fragment;
    .end local v5           #nSelectedItemColor:I
    .end local v6           #renderThread:Lcom/htc/sunny2/RenderThread;
    .end local v7           #root:Landroid/widget/RelativeLayout;
    .restart local v4       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 608
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v2       #fragment:Landroid/app/Fragment;
    .restart local v7       #root:Landroid/widget/RelativeLayout;
    :cond_6
    new-instance v9, Lcom/htc/album/helper/ImageProcessManager;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    new-instance v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

    invoke-direct {v10, p0, v11}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-direct {v9, v2, v8, v10}, Lcom/htc/album/helper/ImageProcessManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/TabPluginDevice/ObserverAdapter;Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 609
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v8, v9}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    goto/16 :goto_2
.end method

.method public onBubbleDismissed()V
    .locals 4

    .prologue
    .line 1066
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1067
    return-void
.end method

.method public onBubblePopped()V
    .locals 2

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1057
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1203
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1204
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    .line 1205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    .line 1206
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->resetCurrentIndex()V

    .line 1209
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScreenRotateBegin()V

    .line 1210
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 1213
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    .line 1214
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onConfigurationChanged]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 972
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onControlButtonClick] mSceneControl is null "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 981
    :sswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 983
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onControlButtonClick] mSceneControl.activityReference() is null "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :cond_1
    const-string v3, "SceneLocalPhotoBurstShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onControlButtonClick:case ControlButtonID.DELETE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.album.ACTION_PICK_DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 988
    .local v0, delete:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 989
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "collection_info"

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 990
    const-string v2, "selected_item_for_delete"

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 991
    const-string v3, "is_show_best_indicator"

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 993
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1391

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 995
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x10a

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 991
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1001
    .end local v0           #delete:Landroid/content/Intent;
    .end local v1           #extras:Landroid/os/Bundle;
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBack()V

    goto/16 :goto_0

    .line 1006
    :sswitch_2
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onControlButtonClick:case ControlButtonID.EXPAND"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onExpandBurstShot()V

    goto/16 :goto_0

    .line 1011
    :sswitch_3
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onControlButtonClick:case ControlButtonID.BEST_SHOT"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBestShot()V

    goto/16 :goto_0

    .line 1015
    :sswitch_4
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onControlButtonClick:case ControlButtonID.COVER"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onCover()V

    goto/16 :goto_0

    .line 976
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x13 -> :sswitch_1
        0x15 -> :sswitch_1
        0x2e -> :sswitch_2
        0x35 -> :sswitch_3
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1987
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar] + "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_1

    .line 1990
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar]: mSceneControl is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    :cond_0
    :goto_0
    return-object v3

    .line 1994
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1995
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 1997
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar]: activity is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2001
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2002
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_3

    .line 2004
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar]: context is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2008
    :cond_3
    const/4 v3, 0x0

    .line 2009
    .local v3, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->enableRightFooter()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v3

    .line 2011
    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 2012
    .local v2, footer:Landroid/view/ViewGroup;
    instance-of v4, v2, Lcom/htc/widget/HtcFooter;

    if-eqz v4, :cond_0

    .line 2013
    check-cast v2, Lcom/htc/widget/HtcFooter;

    .end local v2           #footer:Landroid/view/ViewGroup;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 278
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/ImageProcessManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 282
    if-nez v0, :cond_0

    .line 284
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 365
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v9, :cond_1

    move-object v4, v8

    .line 446
    :cond_0
    :goto_0
    return-object v4

    .line 368
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 369
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_2

    .line 370
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateScene] -: Activity is null"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 371
    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 375
    .local v2, context:Landroid/content/Context;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v9

    invoke-direct {v3, v2, v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 376
    .local v3, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v9

    invoke-direct {v5, v2, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 377
    .local v5, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v9

    invoke-direct {v4, v2, v9, v3, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 378
    .local v4, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v9, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v9, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 379
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v6, inValue:Landroid/os/Bundle;
    const-string v9, "TEXTURE_MAX_COUNT"

    const/16 v10, 0x24

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    const-string v9, "CACHE_SET"

    const/16 v10, 0xc

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    const-string v9, "FULL_MEM_CAHCE_SIZE"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isFileCachable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 384
    const-string v9, "FULL_FILE_CAHCE_SIZE"

    const/16 v10, 0xa

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    :cond_3
    const-string v9, "FULL_FILM_FLAG"

    invoke-virtual {v6, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 390
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_4

    const-string v9, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 392
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->raisePriorityOnce()V

    .line 395
    :cond_4
    if-eqz v7, :cond_5

    const-string v9, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 397
    iput-boolean v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    .line 398
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 401
    :cond_5
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v2, v6}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 402
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 403
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v11}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->enableDecodeLQFromExif(Z)V

    .line 404
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 405
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-direct {v9, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    .line 406
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 407
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ViewScrollStateChangedListener;

    invoke-direct {v9, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 408
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;

    invoke-direct {v9, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 409
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 410
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemTouchedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;)V

    .line 413
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 414
    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 425
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 426
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez v0, :cond_6

    .line 428
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateScene] -: ActionBar is null"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_6
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 435
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_7
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v8, :cond_0

    .line 436
    new-instance v8, Lcom/htc/widget/HBouncingListView;

    invoke-direct {v8, v1}, Lcom/htc/widget/HBouncingListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    .line 437
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HBouncingListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 438
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    sget-object v9, Lcom/htc/widget/HtcAdapterView2$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setListStyle(Lcom/htc/widget/HtcAdapterView2$ListStyle;)V

    .line 439
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mListListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;)V

    .line 441
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HBouncingListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyAdapter()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->release()V

    .line 357
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDestroyAdapter()V

    .line 358
    return-void
.end method

.method public onDestroyScene()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 496
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 497
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 498
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 500
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 504
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 506
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 510
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-eqz v2, :cond_2

    .line 511
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v2}, Lcom/htc/widget/HBouncingListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 512
    .local v1, parentView:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 513
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 515
    :cond_1
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    .line 518
    .end local v1           #parentView:Landroid/view/ViewGroup;
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDestroyScene()V

    .line 519
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 290
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 291
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/ImageProcessManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 295
    if-nez v0, :cond_0

    .line 297
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterImageIHT(II)I
    .locals 5
    .parameter "nIndexPrev"
    .parameter "nIndexNext"

    .prologue
    .line 1222
    move v0, p1

    .line 1224
    .local v0, nIndex:I
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    move v1, v0

    .line 1303
    .end local v0           #nIndex:I
    .local v1, nIndex:I
    :goto_0
    return v1

    .line 1230
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_0
    if-ne v0, p2, :cond_1

    .line 1232
    const-string v2, "SceneLocalPhotoBurstShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneLocalPhotoBurstShot][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v1, v0

    .line 1303
    .end local v0           #nIndex:I
    .restart local v1       #nIndex:I
    goto :goto_0

    .line 1236
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_1
    move v0, p2

    .line 1237
    const-string v2, "SceneLocalPhotoBurstShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneLocalPhotoBurstShot][onEnterImageIHT]: mIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 529
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 530
    return-void
.end method

.method public onLeaveScene()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 671
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 672
    .local v0, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    .line 673
    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setAlpha(F)V

    .line 675
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 677
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 678
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 679
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 681
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 684
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onLeaveScene()V

    .line 687
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2629
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2663
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onMessage(Landroid/os/Message;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 2632
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->hideControlBars()V

    .line 2633
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    goto :goto_0

    .line 2638
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    .line 2639
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    goto :goto_0

    .line 2643
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onScrollStateChange(Landroid/os/Message;)V

    goto :goto_0

    .line 2647
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    goto :goto_0

    .line 2650
    :sswitch_4
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    .line 2651
    .local v0, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2652
    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    .line 2653
    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    goto :goto_0

    .line 2657
    .end local v0           #renderThread:Lcom/htc/sunny2/RenderThread;
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->gotoPrevious()V

    goto :goto_0

    .line 2660
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->gotoFullscreen()V

    goto :goto_0

    .line 2629
    :sswitch_data_0
    .sparse-switch
        0x139d -> :sswitch_4
        0x139e -> :sswitch_5
        0x139f -> :sswitch_6
        0x4e3c -> :sswitch_0
        0x4e48 -> :sswitch_1
        0x4e49 -> :sswitch_3
        0x4f4f -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    .line 309
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 313
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 317
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 319
    const-string v3, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 333
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 334
    const-string v3, "SceneLocalPhotoBurstShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onNewAdapter] bucketid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v6, "key_bucket_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v1, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    const-string v3, "com.htc.HTCAlbum.BURST_SHOTS"

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "key_bucket_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v6, "key_folder_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->showLatest()Z

    .line 342
    new-instance v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 343
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v3, p0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 344
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->setDataBundle(Landroid/os/Bundle;)V

    .line 345
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->onLoadData()V

    .line 347
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 349
    const/16 v3, 0x2724

    const/16 v4, 0x258

    invoke-virtual {p0, v3, v7, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 350
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenuUponDataBind()V

    goto/16 :goto_0

    .line 325
    .end local v1           #collection:Lcom/htc/album/modules/collection/Collection;
    :cond_2
    if-eqz p1, :cond_3

    const-string v3, "key_bucket_id"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 328
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t create burst photo adapter because data bundle is corrupt."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :cond_4
    const-string v3, "folder_type"

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 834
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 835
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalPhotoBurstShot][onOptionsItemSelected]+"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 847
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 842
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBack()V

    goto :goto_0

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPause()V

    .line 471
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    .line 472
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->enableThumbnailDecode(Z)V

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->resetCurrentIndex()V

    .line 491
    return-void
.end method

.method protected onPostBackPressed()V
    .locals 4

    .prologue
    .line 741
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "onPostBackPressed"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v0

    .line 744
    .local v0, bIsFullScreen:Z
    if-nez v0, :cond_0

    .line 745
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onDisableTransitionAnimation(Z)V

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    if-nez v1, :cond_1

    .line 748
    const/16 v1, 0x139e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 753
    :cond_1
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 879
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareAnimation(I)Z

    move-result v0

    .line 880
    .local v0, bResult:Z
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 795
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 797
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 800
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/addons/SingleCollection;

    if-nez v1, :cond_0

    .line 802
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPrepareTabletOptionsMenu(Landroid/view/Menu;)V

    .line 808
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 809
    .local v0, position:I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doSimulateScreenTouched(IZ)V

    .line 810
    const/4 v1, 0x0

    return v1
.end method

.method protected onPrepareTabletOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 829
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 9
    .parameter "footer"

    .prologue
    const/4 v2, 0x0

    .line 2022
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar] + "

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 2025
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar]: mSceneControl is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    :cond_0
    :goto_0
    return-void

    .line 2029
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 2030
    .local v6, activity:Landroid/app/Activity;
    if-nez v6, :cond_2

    .line 2032
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar]: activity is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2036
    :cond_2
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2037
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_3

    .line 2039
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar]: context is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2043
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 2047
    const/16 v3, 0x35

    const v4, 0x7f020012

    const v5, 0x7f0a0130

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v7

    check-cast v7, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2048
    .local v7, bestShotBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v0, :cond_4

    .line 2050
    const/16 v3, 0x36

    const v4, 0x7f020016

    const v5, 0x7f0a0131

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2052
    :cond_4
    const/4 v3, 0x2

    const v4, 0x20800a6

    const v5, 0x7f0a0115

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v8

    check-cast v8, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2053
    .local v8, deleteBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v0, :cond_0

    .line 2055
    const/16 v3, 0x2e

    const v4, 0x7f020013

    const v5, 0x7f0a012f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_0
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 4
    .parameter "header"

    .prologue
    .line 1968
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1970
    :cond_0
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onRefreshHeaderBar] mSceneControl or activity null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :goto_0
    return-void

    .line 1973
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1974
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_2

    .line 1976
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onRefreshHeaderBar] context null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1979
    :cond_2
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 1980
    .local v1, output:Lcom/htc/album/modules/ui/widget/HeaderButton;
    invoke-static {v0}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setEnabled(Z)V

    .line 1981
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onRefreshHeaderBar"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1980
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 451
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onResume()V

    .line 457
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->enableThumbnailDecode(Z)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 464
    :cond_1
    return-void
.end method

.method public onScrollStateIDLE()V
    .locals 2

    .prologue
    .line 1586
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 1588
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1590
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 1591
    .local v0, position:I
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 1592
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->updateContinuousIndicator()V

    .line 1595
    return-void
.end method

.method public onScrollStateScroll()V
    .locals 3

    .prologue
    .line 1600
    const/16 v0, 0x4e48

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 1601
    const/16 v0, 0x4e3c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 1603
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 568
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 569
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 536
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 547
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 549
    .local v1, selectedItemIndex:I
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    .line 550
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 551
    .local v0, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][onSendToForeground]Do item click for DRM."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V

    .line 556
    :cond_0
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    .line 558
    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    .line 559
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->resetListViewVisibleRange()V

    .line 560
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->defaultControlBarOn()Z

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->createFooterBar(IZ)V

    .line 561
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->setEnableControlBarAnimation(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 563
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HBouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    .line 655
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager;->release()V

    .line 661
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onUnbindAdapter()V

    .line 664
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2070
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
    .line 2063
    const/4 v0, 0x0

    return v0
.end method

.method public resetListViewVisibleRange()V
    .locals 5

    .prologue
    .line 2747
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v3, :cond_1

    .line 2758
    :cond_0
    :goto_0
    return-void

    .line 2749
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v3}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v4}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 2750
    .local v2, visibleItem:I
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    sub-int/2addr v3, v2

    add-int/lit8 v0, v3, -0x32

    .line 2752
    .local v0, firstVisibleItem:I
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 2753
    :cond_2
    add-int/lit8 v1, v0, 0x64

    .line 2754
    .local v1, lastVisibleItem:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_3

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 2755
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->setVisibleRange(II)V

    .line 2756
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HBouncingListView;->setSelection(I)V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string v0, "SceneLocalPhotoBurstShot"

    return-object v0
.end method

.method public updateContinuousIndicator()V
    .locals 6

    .prologue
    .line 2884
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2886
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2888
    :cond_0
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HtcAlbum][SceneLocalPhotoBurstShot][updateContinuousIndicator] mSceneControl or  sunnyhost is null "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    :cond_1
    :goto_0
    return-void

    .line 2893
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2895
    .local v1, root:Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    .line 2897
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 2898
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2900
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2901
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 2902
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getSelectedPosSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2904
    .end local v1           #root:Landroid/widget/RelativeLayout;
    .end local v2           #textView:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 2906
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SceneLocalPhotoBurstShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][updateContinuousIndicator] error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
