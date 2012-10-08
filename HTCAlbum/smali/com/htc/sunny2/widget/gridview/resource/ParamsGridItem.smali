.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.super Ljava/lang/Object;
.source "ParamsGridItem.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemEnhancedSense40;


# static fields
.field private static final DIMENSION_GRID:[I = null

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION:I = 0x0

.field public static HORIZ_ITEM_SPACING:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final HORIZ_LAND_TABLET_ITEM_SPACING:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_3D_OFFSET_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_3D_OFFSET_Y:I = 0x0

.field private static final ICON_3D_X_OFFSET:[I = null

.field private static final ICON_3D_Y_OFFSET:[I = null

#the value of this static final field might be set in the static constructor
.field public static final ICON_DRM_LOCK_OFFSET_X_:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_DRM_LOCK_OFFSET_Y:I = 0x0

.field private static final ICON_DRM_LOCK_X_OFFSET_:[I = null

.field private static final ICON_DRM_LOCK_Y_OFFSET:[I = null

#the value of this static final field might be set in the static constructor
.field public static final ICON_INIDICATOR_MARGIN_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_INIDICATOR_MARGIN_Y:I = 0x0

.field private static final ITEM_SPACING_VERT_LAND:[I = null

.field private static final ITEM_SPACING_VERT_LAND_WIDE:[I = null

.field private static final ITEM_SPACING_VERT_PORT:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem"

.field private static final MARGIN_INDICATOR:[I

.field private static final TABLET_ITEM_SPACING_HORIZ:[I

.field private static final TABLET_ITEM_SPACING_VERT_LAND:[I

.field private static final TABLET_ITEM_SPACING_VERT_PORT:[I

.field public static final VERT_LAND_ITEM_SPACING:I

.field public static final VERT_LAND_ITEM_SPACING_WIDE:I

.field public static final VERT_LAND_TABLET_ITEM_SPACING:I

.field public static final VERT_PORT_ITEM_SPACING:I

.field public static final VERT_PORT_TABLET_ITEM_SPACING:I

.field private static mEnableTransition:Z


# instance fields
.field private mEnableItemFixedDimension:Z

.field private mEnableItemFocusedAnimation:Z

.field public mItemH:I

.field public mItemW:I

.field public mResIdBackground:I

.field public mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 16
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableTransitionCache4GridviewFolderList()Z

    move-result v0

    sput-boolean v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableTransition:Z

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->DIMENSION_GRID:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_PORT:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND_WIDE:[I

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->MARGIN_INDICATOR:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_PORT:[I

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_LAND:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_HORIZ:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_X_OFFSET_:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_Y_OFFSET:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_X_OFFSET:[I

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_Y_OFFSET:[I

    .line 57
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->DIMENSION_GRID:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    .line 59
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_PORT:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_ITEM_SPACING:I

    .line 60
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING:I

    .line 61
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND_WIDE:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING_WIDE:I

    .line 66
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_PORT:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_TABLET_ITEM_SPACING:I

    .line 67
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_LAND:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_TABLET_ITEM_SPACING:I

    .line 68
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_HORIZ:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_LAND_TABLET_ITEM_SPACING:I

    .line 71
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->MARGIN_INDICATOR:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_X:I

    .line 72
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->MARGIN_INDICATOR:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_Y:I

    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    .line 79
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_X_OFFSET_:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_OFFSET_X_:I

    .line 80
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_Y_OFFSET:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_OFFSET_Y:I

    .line 81
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_X_OFFSET:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_X:I

    .line 82
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_Y_OFFSET:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_Y:I

    return-void

    .line 22
    :array_0
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 52
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 54
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 55
    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 85
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 86
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 87
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 89
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    .line 90
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    .line 166
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 85
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 86
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 87
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 89
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    .line 90
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    .line 169
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 170
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 172
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 173
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 175
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_LAND_TABLET_ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-boolean v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableTransition:Z

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    goto :goto_0
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 2
    .parameter "param"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 85
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 86
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 87
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 89
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    .line 90
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    .line 189
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 190
    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    .locals 1
    .parameter "param"

    .prologue
    .line 100
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, nSpacing:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_LAND_TABLET_ITEM_SPACING:I

    .line 161
    :goto_0
    return v0

    .line 156
    :cond_0
    sget-boolean v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableTransition:Z

    if-eqz v1, :cond_1

    .line 157
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, nSpacing:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    .line 108
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_TABLET_ITEM_SPACING:I

    .line 130
    :goto_0
    return v0

    .line 110
    :cond_0
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_TABLET_ITEM_SPACING:I

    goto :goto_0

    .line 115
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_3

    .line 117
    sget-boolean v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableTransition:Z

    if-eqz v1, :cond_2

    .line 118
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_ITEM_SPACING:I

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 124
    :cond_3
    sget-boolean v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableTransition:Z

    if-eqz v1, :cond_4

    .line 125
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING:I

    goto :goto_0

    .line 127
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static verticalSpacingWide(Landroid/content/res/Configuration;)I
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, nSpacing:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :goto_0
    return v0

    .line 141
    :cond_0
    sget-boolean v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableTransition:Z

    if-eqz v1, :cond_1

    .line 142
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING:I

    goto :goto_0

    .line 144
    :cond_1
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING_WIDE:I

    goto :goto_0
.end method


# virtual methods
.method public copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 197
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 198
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 199
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    goto :goto_0
.end method

.method public enableItemFixedDimension()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    .line 208
    return-void
.end method

.method public enableItemFocusedAnimation()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    .line 216
    return-void
.end method

.method public isEnableItemFocusedAnimation()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    return v0
.end method

.method public isItemFixedDimension()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    return v0
.end method
