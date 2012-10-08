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

.field private mCoverImageFilePath:Ljava/lang/String;

.field private mDataSetChange:Z

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

    .line 141
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN_ARRAY:[I

    .line 142
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN_ARRAY:[I

    .line 143
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING_ARRAY:[I

    .line 144
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    .line 145
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_INDICATOR_FONT:[F

    .line 147
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN_ARRAY:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    .line 148
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN_ARRAY:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    .line 149
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING_ARRAY:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    .line 150
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sget v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_ITEM_WIDTH:I

    .line 155
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    return-void

    .line 141
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

    .line 142
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

    .line 143
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

    .line 144
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

    .line 145
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

    .line 117
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mCoverImageFilePath:Ljava/lang/String;

    .line 119
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    .line 121
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    .line 122
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 123
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 124
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 125
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    .line 126
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

    .line 127
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 128
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSWButtonState:I

    .line 129
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    .line 131
    new-instance v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    .line 132
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    .line 156
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 158
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    .line 160
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mShareIntent:Landroid/content/Intent;

    .line 162
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    .line 166
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 175
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDataSetChange:Z

    .line 2741
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

.method static synthetic access$5902(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDataSetChange:Z

    return p1
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

    .line 2470
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][doAutoShowBurst] +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 2472
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2474
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][doAutoShowBurst] do"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    const/4 v0, 0x0

    const/16 v1, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 2477
    :cond_0
    return-void
.end method

.method private doBestShot(Z)V
    .locals 8
    .parameter "bDeleteRest"

    .prologue
    const/4 v7, 0x1

    .line 1206
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1207
    .local v6, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v6, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v1

    if-ne v7, v1, :cond_2

    if-eqz p1, :cond_0

    .line 1216
    :cond_2
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;-><init>(Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;I)V

    .line 1217
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
    .line 2170
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][doExpand]+"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 2173
    :cond_0
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalPhotoBurstShot][doExpand] mSceneControl or mAdapter is null "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :goto_0
    return-void

    .line 2176
    :cond_1
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-direct {v1, v0, v2, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;-><init>(Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    .line 2177
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
    .line 1676
    const/4 v2, 0x0

    .line 1677
    .local v2, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v2           #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .restart local v2       #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-nez v2, :cond_1

    .line 1679
    const-string v14, "SceneLocalPhotoBurstShot"

    const-string v15, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]adapter is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    :cond_0
    :goto_0
    return-void

    .line 1683
    :cond_1
    const/4 v10, 0x0

    .line 1684
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

    .line 1686
    const-string v14, "SceneLocalPhotoBurstShot"

    const-string v15, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]image is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1690
    :cond_2
    const/4 v1, 0x0

    .line 1691
    .local v1, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1693
    const-string v14, "SceneLocalPhotoBurstShot"

    const-string v15, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]activity is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1697
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v14

    instance-of v5, v14, Lcom/htc/album/addons/SingleCollection;

    .line 1699
    .local v5, bIsShowSingle:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isControlBarShowing()Z

    move-result v3

    .line 1701
    .local v3, bControlBarShowing:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v14

    shr-int/lit8 v12, v14, 0x1

    .line 1702
    .local v12, posX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v14

    shr-int/lit8 v13, v14, 0x1

    .line 1704
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v14

    iget-object v11, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 1705
    .local v11, me:Landroid/view/MotionEvent;
    if-eqz v11, :cond_4

    .line 1707
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 1708
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 1711
    :cond_4
    const/4 v4, 0x0

    .line 1712
    .local v4, bIndicatorClicked:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    if-eqz v14, :cond_6

    .line 1714
    const/4 v4, 0x1

    .line 1725
    :goto_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1726
    .local v6, bundle:Landroid/os/Bundle;
    const-string v14, "folder_type"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string v14, "key_folder_name"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const-string v14, "key_bucket_id"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string v14, "position"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const/4 v8, 0x0

    .line 1732
    .local v8, goPlay:Z
    if-eqz v4, :cond_5

    if-eqz v10, :cond_5

    .line 1734
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1736
    invoke-static {v1, v10, v6}, Lcom/htc/album/helper/MenuManager;->launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 1737
    const/4 v8, 0x1

    .line 1759
    :cond_5
    :goto_2
    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    if-nez v14, :cond_0

    .line 1761
    const/16 v14, 0x4e3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 1763
    if-nez p2, :cond_0

    .line 1765
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->toggleControlBarsVisibility()V

    .line 1766
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 1768
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 1769
    .local v9, h:Landroid/os/Handler;
    const/16 v14, 0x4e49

    invoke-virtual {v9, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1770
    const/16 v15, 0x4e49

    if-nez v3, :cond_a

    const/4 v14, 0x1

    :goto_3
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v14, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1716
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #goPlay:Z
    .end local v9           #h:Landroid/os/Handler;
    :cond_6
    if-eqz p2, :cond_7

    .line 1718
    const/4 v4, 0x0

    goto :goto_1

    .line 1722
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isHitIndicator(II)Z

    move-result v4

    goto :goto_1

    .line 1739
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v8       #goPlay:Z
    :cond_8
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1741
    const/4 v7, -0x1

    .line 1742
    .local v7, count:I
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v10

    .line 1744
    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getFrameCount()I

    move-result v7

    .line 1751
    :goto_4
    const/4 v14, 0x1

    if-le v7, v14, :cond_5

    .line 1753
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v14

    invoke-static {v1, v10, v14, v6}, Lcom/htc/album/helper/MenuManager;->launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V

    .line 1754
    const/4 v8, 0x1

    goto :goto_2

    .line 1748
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v7

    goto :goto_4

    .line 1770
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
    .line 1110
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskBestShot]+"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "continuous_shot_ask_bestshot_setting"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1112
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

    .line 1113
    return v0
.end method

.method private getAskExpand(Z)Z
    .locals 4
    .parameter "bDefault"

    .prologue
    .line 2182
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskExpand]+"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "continuous_shot_ask_expand_setting"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2184
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

    .line 2185
    return v0
.end method

.method private isCurrentItemCanShow3D()Z
    .locals 6

    .prologue
    .line 1910
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1911
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 1912
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-eqz v0, :cond_3

    .line 1914
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/IMediaList;

    .line 1915
    .local v2, mediaList:Lcom/htc/sunny2/IMediaList;
    if-eqz v2, :cond_2

    .line 1917
    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1918
    .local v1, data:Lcom/htc/sunny2/IMediaData;
    if-eqz v1, :cond_0

    .line 1920
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1922
    const/4 v4, 0x1

    .line 1939
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :goto_0
    return v4

    .line 1927
    .restart local v1       #data:Lcom/htc/sunny2/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemCanShow3D]data is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1932
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemCanShow3D]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1937
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
    .line 1944
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1945
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 1946
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-eqz v0, :cond_3

    .line 1948
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/IMediaList;

    .line 1949
    .local v2, mediaList:Lcom/htc/sunny2/IMediaList;
    if-eqz v2, :cond_2

    .line 1951
    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1952
    .local v1, data:Lcom/htc/sunny2/IMediaData;
    if-eqz v1, :cond_0

    .line 1954
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1956
    const/4 v4, 0x1

    .line 1973
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :goto_0
    return v4

    .line 1961
    .restart local v1       #data:Lcom/htc/sunny2/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemVideo]data is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1966
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemVideo]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1971
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

    .line 1820
    const/4 v0, 0x0

    .line 1821
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .restart local v0       #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-nez v0, :cond_1

    .line 1823
    const-string v6, "SceneLocalPhotoBurstShot"

    const-string v7, "[HTCAlbum][SceneLocalPhotoBurstShot][doSimulateScreenPressed]adapter is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    :cond_0
    :goto_0
    return v1

    .line 1827
    :cond_1
    const/4 v2, 0x0

    .line 1828
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v6, p1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 1830
    const-string v6, "SceneLocalPhotoBurstShot"

    const-string v7, "[HTCAlbum][SceneLocalPhotoBurstShot][doSimulateScreenPressed]image is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1834
    :cond_2
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1837
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    shr-int/lit8 v4, v6, 0x1

    .line 1838
    .local v4, posX:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    .line 1840
    .local v5, posY:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v6

    iget-object v3, v6, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 1841
    .local v3, me:Landroid/view/MotionEvent;
    if-eqz v3, :cond_3

    .line 1843
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 1844
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 1847
    :cond_3
    const/4 v1, 0x0

    .line 1848
    .local v1, bIndicatorPressed:Z
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    if-eqz v6, :cond_4

    .line 1850
    const/4 v1, 0x1

    goto :goto_0

    .line 1854
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
    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v19

    div-int/lit8 v18, v19, 0x5

    .line 1870
    .local v18, wSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v19

    div-int/lit8 v8, v19, 0x5

    .line 1871
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

    .line 1872
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

    .line 1874
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

    .line 1875
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

    .line 1877
    .local v12, hitY:Z
    :goto_1
    const/4 v13, 0x0

    .line 1878
    .local v13, isDrm:Z
    const/4 v9, 0x0

    .line 1879
    .local v9, hitDrmX:Z
    const/4 v10, 0x0

    .line 1882
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

    .line 1884
    if-eqz v13, :cond_0

    .line 1886
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

    .line 1887
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v16

    .line 1888
    .local v16, screenw:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v15

    .line 1890
    .local v15, screenh:I
    div-int/lit8 v19, v16, 0x2

    sget v20, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    div-int/lit8 v20, v20, 0x2

    sub-int v4, v19, v20

    .line 1891
    .local v4, drmLeft:I
    div-int/lit8 v19, v15, 0x2

    sget v20, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    sget v20, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_Y_OFFSET:I

    add-int v5, v19, v20

    .line 1892
    .local v5, drmTop:I
    sget v6, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    .line 1893
    .local v6, drmWidth:I
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    .local v3, drmHeight:I
    sub-int v19, p1, v4

    if-lez v19, :cond_5

    sub-int v19, p1, v4

    move/from16 v0, v19

    if-ge v0, v6, :cond_5

    const/4 v9, 0x1

    .line 1896
    :goto_2
    sub-int v19, p2, v5

    if-lez v19, :cond_6

    sub-int v19, p2, v5

    move/from16 v0, v19

    if-ge v0, v3, :cond_6

    const/4 v10, 0x1

    .line 1904
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

    .line 1874
    .end local v9           #hitDrmX:Z
    .end local v10           #hitDrmY:Z
    .end local v11           #hitX:Z
    .end local v12           #hitY:Z
    .end local v13           #isDrm:Z
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1875
    .restart local v11       #hitX:Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 1895
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

    .line 1896
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 1899
    .end local v2           #display:Landroid/view/Display;
    .end local v3           #drmHeight:I
    .end local v4           #drmLeft:I
    .end local v5           #drmTop:I
    .end local v6           #drmWidth:I
    .end local v15           #screenh:I
    .end local v16           #screenw:I
    :catch_0
    move-exception v7

    .line 1901
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

    .line 1904
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    const/16 v19, 0x0

    goto :goto_4
.end method

.method private onBestShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1091
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getAskBestShot(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showDialogBestShot()Landroid/app/Dialog;

    move-result-object v0

    .line 1094
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1101
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doBestShot(Z)V

    goto :goto_0
.end method

.method private onCover()V
    .locals 1

    .prologue
    .line 1105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doBestShot(Z)V

    .line 1106
    return-void
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 9
    .parameter "selectDMR"

    .prologue
    .line 2701
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 2735
    :cond_0
    :goto_0
    return-void

    .line 2703
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2706
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 2708
    .local v4, selectedPos:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 2710
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2711
    .local v8, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v8, :cond_0

    .line 2713
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    .line 2715
    .local v7, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2717
    .local v5, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 2719
    const-string v0, "folder_type"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    const-string v0, "key_folder_name"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    const-string v0, "key_bucket_id"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    :cond_2
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2726
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

    .line 2731
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
    .line 2153
    const/4 v0, 0x0

    .line 2154
    .local v0, dlg:Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getAskExpand(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2156
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onExpandBurstShot] Ask Expand"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showDialogAskExpand()Landroid/app/Dialog;

    move-result-object v0

    .line 2158
    if-eqz v0, :cond_0

    .line 2159
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2166
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onExpandBurstShot] no Ask Expand"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doExpand()V

    goto :goto_0
.end method

.method private onScrollStateChange(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 2688
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2689
    .local v0, scrollState:I
    if-nez v0, :cond_1

    .line 2691
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onScrollStateIDLE()V

    .line 2697
    :cond_0
    :goto_0
    return-void

    .line 2693
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2695
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onScrollStateScroll()V

    goto :goto_0
.end method

.method private putAskBestShot(Z)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 1118
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][putAskBestShot]+"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1120
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "continuous_shot_ask_bestshot_setting"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1123
    const/4 v1, 0x1

    return v1
.end method

.method private putAskExpand(Z)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 2190
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][putAskExpand]+"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2192
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "continuous_shot_ask_expand_setting"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2195
    const/4 v1, 0x1

    return v1
.end method

.method private setPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 1045
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[setPosition]mAdapter is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v0, :cond_2

    .line 1050
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[setPosition]mMainView is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_2
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 1055
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 1056
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    .line 1057
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1064
    :cond_3
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[setPosition]out of bound"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSelectedItemToVisible()V
    .locals 5

    .prologue
    .line 2781
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][setSelectedItemToVisible] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v2, :cond_1

    .line 2783
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][setSelectedItemToVisible] mHorizontalListView is null "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    :cond_0
    :goto_0
    return-void

    .line 2787
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v4}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2788
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_2

    .line 2789
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][setSelectedItemToVisible] mSelectedItem is null "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2793
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getListViewWidth()I

    move-result v0

    .line 2794
    .local v0, screen_width:I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 2796
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_ITEM_WIDTH:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HBouncingListView;->setSelectionFromLeft(II)V

    .line 2798
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    mul-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 2800
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

    .line 2200
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2202
    :cond_0
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HtcAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] mSceneControl or activityReference is null "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    :goto_0
    return-object v6

    .line 2205
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2206
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2207
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v7, 0x7f0a015e

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2210
    const-string v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2211
    .local v3, inflater:Landroid/view/LayoutInflater;
    if-nez v3, :cond_2

    .line 2213
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get LayoutInflater"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2217
    :cond_2
    const v7, 0x7f030007

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2218
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_3

    .line 2220
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get continuous_shot_ask layout"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2224
    :cond_3
    const v7, 0x7f020002

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2225
    const v7, 0x7f090018

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2226
    .local v4, textView:Landroid/widget/TextView;
    if-nez v4, :cond_4

    .line 2228
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get ask_text TextView"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2231
    :cond_4
    const v7, 0x7f0a015f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2233
    const v7, 0x7f09001a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 2234
    .restart local v4       #textView:Landroid/widget/TextView;
    if-nez v4, :cond_5

    .line 2236
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get remind_text TextView"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2239
    :cond_5
    const v7, 0x7f0a0160

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2241
    const v7, 0x7f090019

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    .line 2242
    .local v2, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v2, :cond_6

    .line 2244
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2248
    :cond_6
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2250
    const v6, 0x20401ee

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$5;

    invoke-direct {v7, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$5;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2259
    const v6, 0x2040174

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;

    invoke-direct {v7, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2270
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private showDialogBestShot()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1128
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1130
    :cond_0
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HtcAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] mSceneControl or activityReference is null "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :goto_0
    return-object v6

    .line 1134
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1136
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1137
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v7, 0x7f0a015b

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1140
    const-string v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1141
    .local v3, inflater:Landroid/view/LayoutInflater;
    if-nez v3, :cond_2

    .line 1143
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get LayoutInflater"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :cond_2
    const v7, 0x7f030007

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1148
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_3

    .line 1150
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get continuous_shot_ask layout"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    :cond_3
    const v7, 0x7f020002

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1155
    const v7, 0x7f090018

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1156
    .local v4, textView:Landroid/widget/TextView;
    if-nez v4, :cond_4

    .line 1158
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get ask_text TextView"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1161
    :cond_4
    const v7, 0x7f0a015c

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1163
    const v7, 0x7f09001a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 1164
    .restart local v4       #textView:Landroid/widget/TextView;
    if-nez v4, :cond_5

    .line 1166
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get remind_text TextView"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_5
    const v7, 0x7f0a0160

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1171
    const v7, 0x7f090019

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    .line 1172
    .local v2, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v2, :cond_6

    .line 1174
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :cond_6
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1179
    const v6, 0x20401f3

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$3;

    invoke-direct {v7, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1189
    const v6, 0x20401f2

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;

    invoke-direct {v7, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1201
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private showThumbnailList(Z)V
    .locals 14
    .parameter "isShow"

    .prologue
    .line 2274
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v9, :cond_1

    .line 2275
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

    .line 2465
    :cond_0
    :goto_0
    return-void

    .line 2278
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_3

    .line 2280
    :cond_2
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HtcAlbum][SceneLocalPhotoBurstShot][showThumbnailList] mSceneControl or  activityReference is null "

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2284
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

    .line 2286
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2287
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2289
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v6, v9, Landroid/content/res/Configuration;->orientation:I

    .line 2291
    .local v6, ori:I
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2292
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, -0x1

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2293
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

    .line 2296
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v9

    if-nez v9, :cond_6

    .line 2297
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 2298
    .local v2, footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    const/4 v9, 0x1

    if-ne v6, v9, :cond_5

    .line 2299
    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2301
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2302
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2310
    :goto_1
    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2317
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :goto_2
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_a

    .line 2318
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v9

    if-nez v9, :cond_7

    .line 2320
    :cond_4
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HtcAlbum][SceneLocalPhotoBurstShot][showThumbnailList] mSceneControl or  sunnyHost is null "

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2305
    .restart local v2       #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2306
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2308
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 2314
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :cond_6
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 2323
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2325
    .local v7, root:Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const v10, 0x7f02000d

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setBackgroundResource(I)V

    .line 2326
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0xe6

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2327
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/4 v10, 0x0

    sget v11, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    const/4 v12, 0x0

    sget v13, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/widget/HBouncingListView;->setPadding(IIII)V

    .line 2334
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7, v9, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2336
    if-nez p1, :cond_8

    .line 2337
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setVisibility(I)V

    .line 2344
    .end local v7           #root:Landroid/widget/RelativeLayout;
    :cond_8
    :goto_3
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 2346
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v9

    if-nez v9, :cond_b

    .line 2348
    :cond_9
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HtcAlbum][SceneLocalPhotoBurstShot][showThumbnailList] mSceneControl or  sunnyHost is null "

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2341
    :cond_a
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->requestLayout()V

    goto :goto_3

    .line 2351
    :cond_b
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2352
    .restart local v7       #root:Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v9, :cond_c

    .line 2354
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

    .line 2358
    :cond_c
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2360
    .local v5, lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v9

    if-nez v9, :cond_13

    .line 2361
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 2362
    .restart local v2       #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    const/4 v9, 0x1

    if-ne v6, v9, :cond_12

    .line 2365
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2366
    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2375
    :goto_4
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2380
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :goto_5
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_14

    .line 2381
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2382
    if-nez p1, :cond_d

    .line 2383
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2391
    :cond_d
    :goto_6
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const v10, 0x7f09000d

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2392
    .local v8, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2393
    const/4 v9, 0x0

    sget-object v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_INDICATOR_FONT:[F

    sget v11, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2396
    .end local v5           #lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #root:Landroid/widget/RelativeLayout;
    .end local v8           #textView:Landroid/widget/TextView;
    :cond_e
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    if-eq p1, v9, :cond_0

    .line 2438
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2439
    .local v1, firstVisible:I
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v3

    .line 2441
    .local v3, lastVisible:I
    const/4 v9, 0x1

    if-ne v9, p1, :cond_10

    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    if-gt v1, v9, :cond_f

    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    if-le v9, v3, :cond_10

    .line 2442
    :cond_f
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->resetListViewVisibleRange()V

    .line 2446
    :cond_10
    const/4 v9, 0x1

    if-ne v9, p1, :cond_15

    .line 2447
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setVisibility(I)V

    .line 2452
    :goto_7
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v9, :cond_11

    .line 2454
    if-eqz p1, :cond_16

    .line 2455
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2461
    :cond_11
    :goto_8
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    .line 2463
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v9, :cond_0

    .line 2464
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->notifyDataSetInvalidated()V

    goto/16 :goto_0

    .line 2369
    .end local v1           #firstVisible:I
    .end local v3           #lastVisible:I
    .restart local v2       #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .restart local v5       #lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7       #root:Landroid/widget/RelativeLayout;
    :cond_12
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2370
    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    .line 2378
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :cond_13
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    .line 2388
    :cond_14
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_6

    .line 2449
    .end local v5           #lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #root:Landroid/widget/RelativeLayout;
    .restart local v1       #firstVisible:I
    .restart local v3       #lastVisible:I
    :cond_15
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setVisibility(I)V

    goto :goto_7

    .line 2457
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
    .line 875
    const-string v0, "AdapterBurstPhoto"

    return-object v0
.end method

.method public checkIsShowActionBar()V
    .locals 2

    .prologue
    .line 2902
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][checkIsShowActionBar] +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 2905
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][checkIsShowActionBar] hide action bar"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideHeaderControlBar(Landroid/view/animation/Animation;)V

    .line 2908
    :cond_0
    return-void
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x1

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public exclusionEditTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 1978
    const/high16 v0, 0x1

    or-int/2addr v0, p1

    return v0
.end method

.method public exclusionShowHideTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 1983
    const/high16 v0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 2642
    const/4 v0, 0x5

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2114
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 2115
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-nez v0, :cond_1

    .line 2117
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][getHeaderTitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :cond_0
    :goto_0
    return-object v2

    .line 2121
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2122
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 2126
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    if-eqz v3, :cond_2

    .line 2127
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

    .line 2129
    .end local v2           #subTitle:Ljava/lang/String;
    :cond_2
    const-string v2, " "

    .restart local v2       #subTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2096
    const/4 v0, 0x0

    .line 2097
    .local v0, activity:Landroid/app/Activity;
    const-string v2, ""

    .line 2100
    .local v2, strHeader:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2101
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0113

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2108
    :goto_0
    return-object v2

    .line 2103
    :catch_0
    move-exception v1

    .line 2105
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[getHeaderTitle] Can not get activity!!"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListViewWidth()I
    .locals 4

    .prologue
    .line 2807
    const/4 v1, 0x0

    .line 2808
    .local v1, nWidth:I
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2810
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->WINDOW_DISP_WIDTH:I

    .line 2817
    :goto_0
    return v1

    .line 2814
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    .line 2815
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

    .line 2136
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 2137
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-nez v0, :cond_1

    .line 2139
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][getSelectedPosSubtitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_0
    :goto_0
    return-object v2

    .line 2143
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2144
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 2147
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

    .line 2149
    .local v2, subTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public gotoFullscreen()V
    .locals 5

    .prologue
    .line 2886
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 2898
    :goto_0
    return-void

    .line 2889
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isBestShotChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2891
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    .line 2892
    .local v0, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v0, :cond_1

    .line 2893
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 2897
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
    .locals 6

    .prologue
    .line 2843
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_1

    .line 2883
    :cond_0
    :goto_0
    return-void

    .line 2846
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isBestShotChanged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2848
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v3

    .line 2849
    .local v3, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v3, :cond_2

    .line 2850
    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 2861
    .end local v3           #renderThread:Lcom/htc/sunny2/RenderThread;
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2862
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_BurstShot_datasetchanged"

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDataSetChange:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2863
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2865
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 2868
    const/4 v1, 0x0

    .line 2869
    .local v1, bFromCamera:Z
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2872
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "preview_mode"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 2878
    :goto_1
    if-eqz v1, :cond_0

    .line 2880
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][gotoPrevious]overrideRotateAnimation, TYPE_NO_ROTATE_ANIMATION"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    const/16 v4, 0x68

    invoke-static {v0, v4}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2872
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2874
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public isBestShotChanged()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2821
    const/4 v0, 0x1

    .line 2822
    .local v0, bBestShotChanged:Z
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v4, :cond_1

    .line 2839
    :cond_0
    :goto_0
    return v3

    .line 2824
    :cond_1
    sget-wide v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v3, v0

    .line 2825
    goto :goto_0

    .line 2826
    :cond_2
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 2829
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2830
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v3, v1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2831
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2833
    sget-wide v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 2834
    const/4 v0, 0x0

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    move v3, v0

    .line 2839
    goto :goto_0

    .line 2829
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isFileCachable()Z
    .locals 1

    .prologue
    .line 2738
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    .line 711
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataSetChanged()V

    .line 713
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    .line 714
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 719
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->workaround_BurstAdapterDataSetChanged()V

    .line 721
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 723
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    .line 724
    const/16 v2, 0x139e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 730
    .local v1, view:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 731
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 743
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBack()V

    .line 803
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

    .line 2534
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][onActivityResult] + "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    .line 2590
    :cond_0
    :goto_0
    return-void

    .line 2539
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2542
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2543
    .local v0, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    .line 2589
    :cond_2
    :goto_1
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onActivityResult] - "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2546
    :sswitch_0
    const/4 v1, 0x0

    .line 2548
    .local v1, extra:Landroid/os/Bundle;
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDataSetChange:Z

    .line 2550
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2552
    const-string v4, "return_delete_result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2554
    .local v2, nCount:I
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-eq v4, v6, :cond_3

    if-ne v2, v6, :cond_4

    .line 2558
    :cond_3
    invoke-virtual {p0, v8, v9, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 2561
    :cond_4
    if-nez v2, :cond_5

    .line 2563
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    .line 2564
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    .line 2565
    invoke-virtual {p0, v8, v9, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    .line 2569
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->notifyDataSetChanged()V

    .line 2570
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    goto :goto_1

    .line 2576
    .end local v1           #extra:Landroid/os/Bundle;
    .end local v2           #nCount:I
    :sswitch_1
    const-string v4, "DMR"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2577
    .local v3, selectDMR:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 2578
    if-eqz v3, :cond_2

    .line 2580
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 2585
    .end local v3           #selectDMR:Ljava/lang/String;
    :sswitch_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mShareIntent:Landroid/content/Intent;

    invoke-static {v0, v4, p3}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_1

    .line 2543
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

    .line 2597
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v9, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onActivityResult_CROP_NONE] + "

    invoke-static {v7, v9}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2638
    :cond_0
    :goto_0
    return-void

    .line 2602
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2603
    .local v2, extras:Landroid/os/Bundle;
    const-string v7, "filePath"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2604
    .local v1, dstFilePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2606
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    const-string v9, "image/jpeg"

    invoke-static {v7, v1, v9}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 2609
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 2610
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->notifyDataSetChanged()V

    .line 2617
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v3

    .line 2618
    .local v3, itemCount:I
    add-int/lit8 v4, v3, -0x1

    .line 2629
    .local v4, pos:I
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    .line 2630
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

    .line 2631
    .local v5, shouldStayOnOriginalImage:Z
    :goto_1
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    if-nez v5, :cond_4

    .line 2634
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsAfterEdit(Z)V

    .line 2637
    :cond_4
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onActivityResult_CROP_NONE] - "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2630
    .end local v5           #shouldStayOnOriginalImage:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onBack()V
    .locals 3

    .prologue
    .line 776
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "onBack"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    if-nez v0, :cond_0

    .line 778
    const/16 v0, 0x139e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 783
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 747
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "onBackPressed 0"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 756
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 754
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

    .line 594
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onBindAdapter()V

    .line 595
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

    .line 597
    :cond_0
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HtcAlbum][SceneLocalPhotoBurstShot][onBindAdapter] mSceneControl or activity or sunnyHost is null"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :goto_0
    return-void

    .line 601
    :cond_1
    iput v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 602
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 604
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v8, v3}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 605
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 607
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 608
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v8

    sput-wide v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    .line 613
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iget v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 614
    iput-boolean v13, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    .line 615
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 617
    .local v7, root:Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 618
    .local v0, activity:Landroid/app/Activity;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    .line 619
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

    .line 622
    if-nez v2, :cond_6

    .line 624
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][onBindAdapter]fragment is null"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 634
    invoke-static {v0, v11, v13}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 641
    :cond_3
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-direct {v9, p0, v0, v8, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    .line 642
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 643
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView2$OnScrollListener;)V

    .line 644
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setSelection(I)V

    .line 646
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->resetListViewVisibleRange()V

    .line 648
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 649
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    .line 650
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v5

    .line 651
    .local v5, nSelectedItemColor:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x208009b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    .line 652
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 655
    const/16 v8, 0x2724

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 656
    const/16 v8, 0x2728

    invoke-virtual {p0, v8, v11, v12}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 658
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v6

    .line 659
    .local v6, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v6, :cond_4

    .line 660
    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v8, v9}, Lcom/htc/sunny2/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 661
    const/16 v8, 0x139d

    const/16 v9, 0x1f4

    invoke-virtual {p0, v8, v11, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 664
    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    goto/16 :goto_0

    .line 602
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

    .line 628
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

    .line 629
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v8, v9}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    goto/16 :goto_2
.end method

.method public onBubbleDismissed()V
    .locals 4

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1087
    return-void
.end method

.method public onBubblePopped()V
    .locals 2

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1077
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1223
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1224
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    .line 1225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    .line 1226
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->resetCurrentIndex()V

    .line 1229
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScreenRotateBegin()V

    .line 1230
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 1233
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    .line 1234
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onConfigurationChanged]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
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
    .line 989
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 991
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onControlButtonClick] mSceneControl is null "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :goto_0
    return-void

    .line 995
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1000
    :sswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1002
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onControlButtonClick] mSceneControl.activityReference() is null "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1005
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

    .line 1006
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.album.ACTION_PICK_DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v0, delete:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1008
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "collection_info"

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1009
    const-string v2, "selected_item_for_delete"

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1010
    const-string v3, "is_show_best_indicator"

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1011
    const-string v2, "key_BurstShot_CoverFilePath"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mCoverImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1013
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1391

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1015
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x10a

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 1010
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1021
    .end local v0           #delete:Landroid/content/Intent;
    .end local v1           #extras:Landroid/os/Bundle;
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBack()V

    goto/16 :goto_0

    .line 1026
    :sswitch_2
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onControlButtonClick:case ControlButtonID.EXPAND"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onExpandBurstShot()V

    goto/16 :goto_0

    .line 1031
    :sswitch_3
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onControlButtonClick:case ControlButtonID.BEST_SHOT"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBestShot()V

    goto/16 :goto_0

    .line 1035
    :sswitch_4
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onControlButtonClick:case ControlButtonID.COVER"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onCover()V

    goto/16 :goto_0

    .line 995
    nop

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

    .line 2007
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar] + "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_1

    .line 2010
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar]: mSceneControl is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    :cond_0
    :goto_0
    return-object v3

    .line 2014
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2015
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 2017
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar]: activity is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2021
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2022
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_3

    .line 2024
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar]: context is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2028
    :cond_3
    const/4 v3, 0x0

    .line 2029
    .local v3, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->enableRightFooter()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v3

    .line 2031
    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 2032
    .local v2, footer:Landroid/view/ViewGroup;
    instance-of v4, v2, Lcom/htc/widget/HtcFooter;

    if-eqz v4, :cond_0

    .line 2033
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

    .line 287
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 288
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/ImageProcessManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 292
    if-nez v0, :cond_0

    .line 294
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 383
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v9, :cond_1

    move-object v4, v8

    .line 465
    :cond_0
    :goto_0
    return-object v4

    .line 386
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 387
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_2

    .line 388
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateScene] -: Activity is null"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 389
    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 393
    .local v2, context:Landroid/content/Context;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v9

    invoke-direct {v3, v2, v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 394
    .local v3, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v9

    invoke-direct {v5, v2, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 395
    .local v5, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v9

    invoke-direct {v4, v2, v9, v3, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 396
    .local v4, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v9, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v9, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 397
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v6, inValue:Landroid/os/Bundle;
    const-string v9, "TEXTURE_MAX_COUNT"

    const/16 v10, 0x24

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    const-string v9, "CACHE_SET"

    const/16 v10, 0xc

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    const-string v9, "FULL_MEM_CAHCE_SIZE"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isFileCachable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 402
    const-string v9, "FULL_FILE_CAHCE_SIZE"

    const/16 v10, 0xa

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    :cond_3
    const-string v9, "FULL_FILM_FLAG"

    invoke-virtual {v6, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 408
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_4

    const-string v9, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 410
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->raisePriorityOnce()V

    .line 413
    :cond_4
    if-eqz v7, :cond_5

    const-string v9, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 415
    iput-boolean v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    .line 416
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 419
    :cond_5
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v2, v6}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 420
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 421
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v11}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->enableDecodeLQFromExif(Z)V

    .line 422
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 423
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-direct {v9, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    .line 424
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 425
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ViewScrollStateChangedListener;

    invoke-direct {v9, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 426
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;

    invoke-direct {v9, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 427
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 428
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemTouchedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;)V

    .line 431
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 432
    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 443
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 444
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez v0, :cond_6

    .line 446
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateScene] -: ActionBar is null"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :cond_6
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 453
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_7
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v8, :cond_0

    .line 454
    new-instance v8, Lcom/htc/widget/HBouncingListView;

    invoke-direct {v8, v1}, Lcom/htc/widget/HBouncingListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    .line 455
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HBouncingListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 456
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    sget-object v9, Lcom/htc/widget/HtcAdapterView2$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setListStyle(Lcom/htc/widget/HtcAdapterView2$ListStyle;)V

    .line 457
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mListListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;)V

    .line 459
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HBouncingListView;->setVerticalScrollBarEnabled(Z)V

    .line 460
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HBouncingListView;->setHorizontalScrollBarEnabled(Z)V

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
    .line 373
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->release()V

    .line 375
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDestroyAdapter()V

    .line 376
    return-void
.end method

.method public onDestroyScene()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 514
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 515
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 516
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 517
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 519
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 523
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 525
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 529
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-eqz v2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v2}, Lcom/htc/widget/HBouncingListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 531
    .local v1, parentView:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 532
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 534
    :cond_1
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    .line 537
    .end local v1           #parentView:Landroid/view/ViewGroup;
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDestroyScene()V

    .line 538
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 300
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 301
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/ImageProcessManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 305
    if-nez v0, :cond_0

    .line 307
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterImageIHT(II)I
    .locals 5
    .parameter "nIndexPrev"
    .parameter "nIndexNext"

    .prologue
    .line 1242
    move v0, p1

    .line 1244
    .local v0, nIndex:I
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    move v1, v0

    .line 1323
    .end local v0           #nIndex:I
    .local v1, nIndex:I
    :goto_0
    return v1

    .line 1250
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_0
    if-ne v0, p2, :cond_1

    .line 1252
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

    .line 1323
    .end local v0           #nIndex:I
    .restart local v1       #nIndex:I
    goto :goto_0

    .line 1256
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_1
    move v0, p2

    .line 1257
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
    .line 548
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 549
    return-void
.end method

.method public onLeaveScene()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 691
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 692
    .local v0, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    .line 693
    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setAlpha(F)V

    .line 695
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 697
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 698
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 699
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 701
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 704
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onLeaveScene()V

    .line 707
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2648
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2682
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onMessage(Landroid/os/Message;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 2651
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->hideControlBars()V

    .line 2652
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    goto :goto_0

    .line 2657
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    .line 2658
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    goto :goto_0

    .line 2662
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onScrollStateChange(Landroid/os/Message;)V

    goto :goto_0

    .line 2666
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    goto :goto_0

    .line 2669
    :sswitch_4
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    .line 2670
    .local v0, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2671
    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    .line 2672
    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    goto :goto_0

    .line 2676
    .end local v0           #renderThread:Lcom/htc/sunny2/RenderThread;
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->gotoPrevious()V

    goto :goto_0

    .line 2679
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->gotoFullscreen()V

    goto :goto_0

    .line 2648
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
    .locals 9
    .parameter "bundle"

    .prologue
    const/4 v8, 0x0

    .line 319
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 323
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 327
    .local v6, intent:Landroid/content/Intent;
    if-eqz v6, :cond_0

    .line 329
    const-string v2, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 333
    const-string v2, "camera_last_file_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getCoverImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 336
    const-string v2, "key_BurstShot_CoverFilePath"

    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v7           #path:Ljava/lang/String;
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 348
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "key_BurstShot_CoverFilePath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mCoverImageFilePath:Ljava/lang/String;

    .line 349
    const-string v2, "SceneLocalPhotoBurstShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][onNewAdapter] bucketid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "key_bucket_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, "SceneLocalPhotoBurstShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][onNewAdapter] cover image path ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mCoverImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    const-string v2, "com.htc.HTCAlbum.BURST_SHOTS"

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "key_bucket_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "key_folder_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mCoverImageFilePath:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->showLatest()Z

    .line 359
    new-instance v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 360
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2, p0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 361
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->setDataBundle(Landroid/os/Bundle;)V

    .line 362
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->onLoadData()V

    .line 364
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 366
    const/16 v2, 0x2724

    const/16 v3, 0x258

    invoke-virtual {p0, v2, v8, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 367
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenuUponDataBind()V

    goto/16 :goto_0

    .line 340
    .end local v0           #collection:Lcom/htc/album/modules/collection/Collection;
    :cond_2
    if-eqz p1, :cond_3

    const-string v2, "key_bucket_id"

    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 342
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t create burst photo adapter because data bundle is corrupt."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_4
    const-string v2, "folder_type"

    const-string v3, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 853
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 854
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalPhotoBurstShot][onOptionsItemSelected]+"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 866
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 861
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBack()V

    goto :goto_0

    .line 856
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

    .line 487
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPause()V

    .line 490
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    .line 491
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->enableThumbnailDecode(Z)V

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->resetCurrentIndex()V

    .line 510
    return-void
.end method

.method protected onPostBackPressed()V
    .locals 4

    .prologue
    .line 760
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "onPostBackPressed"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v0

    .line 763
    .local v0, bIsFullScreen:Z
    if-nez v0, :cond_0

    .line 764
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onDisableTransitionAnimation(Z)V

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    if-nez v1, :cond_1

    .line 767
    const/16 v1, 0x139e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 772
    :cond_1
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 898
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareAnimation(I)Z

    move-result v0

    .line 899
    .local v0, bResult:Z
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 814
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 816
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 819
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/addons/SingleCollection;

    if-nez v1, :cond_0

    .line 821
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPrepareTabletOptionsMenu(Landroid/view/Menu;)V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 828
    .local v0, position:I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doSimulateScreenTouched(IZ)V

    .line 829
    const/4 v1, 0x0

    return v1
.end method

.method protected onPrepareTabletOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 848
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 9
    .parameter "footer"

    .prologue
    const/4 v2, 0x0

    .line 2042
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar] + "

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 2045
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar]: mSceneControl is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 2050
    .local v6, activity:Landroid/app/Activity;
    if-nez v6, :cond_2

    .line 2052
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar]: activity is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2056
    :cond_2
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2057
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_3

    .line 2059
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar]: context is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2063
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 2067
    const/16 v3, 0x35

    const v4, 0x7f020012

    const v5, 0x7f0a0130

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v7

    check-cast v7, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2068
    .local v7, bestShotBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v0, :cond_4

    .line 2070
    const/16 v3, 0x36

    const v4, 0x7f020016

    const v5, 0x7f0a0131

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2072
    :cond_4
    const/4 v3, 0x2

    const v4, 0x20800a6

    const v5, 0x7f0a0115

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v8

    check-cast v8, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2073
    .local v8, deleteBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v0, :cond_0

    .line 2075
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
    .line 1988
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1990
    :cond_0
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onRefreshHeaderBar] mSceneControl or activity null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    :goto_0
    return-void

    .line 1993
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1994
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_2

    .line 1996
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onRefreshHeaderBar] context null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1999
    :cond_2
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 2000
    .local v1, output:Lcom/htc/album/modules/ui/widget/HeaderButton;
    invoke-static {v0}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setEnabled(Z)V

    .line 2001
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onRefreshHeaderBar"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2000
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 470
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onResume()V

    .line 476
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->enableThumbnailDecode(Z)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 483
    :cond_1
    return-void
.end method

.method public onScrollStateIDLE()V
    .locals 2

    .prologue
    .line 1606
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 1608
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1610
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 1611
    .local v0, position:I
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 1612
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->updateContinuousIndicator()V

    .line 1615
    return-void
.end method

.method public onScrollStateScroll()V
    .locals 3

    .prologue
    .line 1620
    const/16 v0, 0x4e48

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 1621
    const/16 v0, 0x4e3c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 1623
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 588
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 589
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 555
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 566
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 568
    .local v1, selectedItemIndex:I
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    .line 569
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 570
    .local v0, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][onSendToForeground]Do item click for DRM."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V

    .line 575
    :cond_0
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    .line 577
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->defaultControlBarOn()Z

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->createFooterBar(IZ)V

    .line 578
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->setEnableControlBarAnimation(Z)V

    .line 579
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 581
    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    .line 582
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->resetListViewVisibleRange()V

    .line 583
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HBouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    .line 675
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager;->release()V

    .line 681
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onUnbindAdapter()V

    .line 684
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2090
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

.method public resetListViewVisibleRange()V
    .locals 5

    .prologue
    .line 2766
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v3, :cond_1

    .line 2777
    :cond_0
    :goto_0
    return-void

    .line 2768
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v3}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v4}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 2769
    .local v2, visibleItem:I
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    sub-int/2addr v3, v2

    add-int/lit8 v0, v3, -0x32

    .line 2771
    .local v0, firstVisibleItem:I
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 2772
    :cond_2
    add-int/lit8 v1, v0, 0x64

    .line 2773
    .local v1, lastVisibleItem:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_3

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 2774
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->setVisibleRange(II)V

    .line 2775
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HBouncingListView;->setSelection(I)V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "SceneLocalPhotoBurstShot"

    return-object v0
.end method

.method public updateContinuousIndicator()V
    .locals 6

    .prologue
    .line 2912
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2914
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2916
    :cond_0
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HtcAlbum][SceneLocalPhotoBurstShot][updateContinuousIndicator] mSceneControl or  sunnyhost is null "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    :cond_1
    :goto_0
    return-void

    .line 2921
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2923
    .local v1, root:Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    .line 2925
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

    .line 2926
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2928
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2929
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 2930
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getSelectedPosSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2932
    .end local v1           #root:Landroid/widget/RelativeLayout;
    .end local v2           #textView:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 2934
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
