.class public Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;
.super Ljava/lang/Object;
.source "ThumbnailConstants.java"


# static fields
.field public static ARR_SUBFOLDER:[Ljava/lang/String;

.field public static DEVICE_RESOLUTION_X:I

.field public static DEVICE_RESOLUTION_Y:I

.field public static FILMSTRIP_PREFIX:Ljava/lang/String;

.field public static FOLDER_THUMBNAIL:Ljava/lang/String;

.field public static FullSCREEN_PREFIX:Ljava/lang/String;

.field public static GRID_DIMENSION:I

.field public static GRID_PREFIX:Ljava/lang/String;

.field public static IDX_FILMSTRIP:I

.field public static IDX_FULLSCREEN:I

.field public static IMAGE_DIMENSION:I

.field public static MAX_GRIDTHUMB_FOLDER:I

.field public static PORT_ITEM_SPACING:I

.field public static THUMBNAIL_VERSION:I

.field public static VERT_LAND_ITEM_SPACING:I

.field public static VERT_PORT_ITEM_SPACING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->IMAGE_DIMENSION:I

    .line 14
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->GRID_DIMENSION:I

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v0

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->PORT_ITEM_SPACING:I

    .line 16
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_ITEM_SPACING:I

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->VERT_PORT_ITEM_SPACING:I

    .line 17
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING:I

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->VERT_LAND_ITEM_SPACING:I

    .line 18
    const/16 v0, 0x64

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->THUMBNAIL_VERSION:I

    .line 19
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_SUBFOLDER:[Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->ARR_SUBFOLDER:[Ljava/lang/String;

    .line 20
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_GRIDTHUMB_FOLDER:I

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->MAX_GRIDTHUMB_FOLDER:I

    .line 21
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FILMSTRIP:I

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->IDX_FILMSTRIP:I

    .line 22
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FULLSCREEN:I

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->IDX_FULLSCREEN:I

    .line 23
    const-string v0, "XX-"

    sput-object v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->GRID_PREFIX:Ljava/lang/String;

    .line 24
    const-string v0, "11-"

    sput-object v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->FILMSTRIP_PREFIX:Ljava/lang/String;

    .line 25
    const-string v0, "12-"

    sput-object v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->FullSCREEN_PREFIX:Ljava/lang/String;

    .line 26
    const-string v0, "/Android/data/com.htc.album/.thumbnails/"

    sput-object v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->FOLDER_THUMBNAIL:Ljava/lang/String;

    .line 27
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_PORT:I

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->DEVICE_RESOLUTION_X:I

    .line 28
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_LAND:I

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/ThumbnailConstants;->DEVICE_RESOLUTION_Y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
