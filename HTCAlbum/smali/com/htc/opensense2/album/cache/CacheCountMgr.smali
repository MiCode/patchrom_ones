.class public Lcom/htc/opensense2/album/cache/CacheCountMgr;
.super Ljava/lang/Object;
.source "CacheCountMgr.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ICacheClientMgr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_THUMBS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_DELETE_THUMBS"

.field public static final ACTION_PAUSE_GENTHUMBNAILS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_PAUSE_GENTHUMBNAILS"

.field public static final ACTION_RESUME_GENTHUMBNAILS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_RESUEM_GENTHUMBNAILS"

.field public static final ARR_SUBFOLDER:[Ljava/lang/String; = null

.field public static final CACHE_FILE_EXT:Ljava/lang/String; = ".jpg"

.field public static final EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage; = null

.field private static EXTERNAL_THUMBNAIL_COUNT:[J = null

.field public static final FILMSTRIP_PREFIX:Ljava/lang/String; = "11-"

.field public static final FullSCREEN_PREFIX:Ljava/lang/String; = "12-"

.field public static final GRID_PREFIX:Ljava/lang/String; = "XX-"

#the value of this static final field might be set in the static constructor
.field public static final IDX_FILMSTRIP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IDX_FULLSCREEN:I = 0x0

.field public static final INTENT_SCAN_FINISH:Ljava/lang/String; = "android.intent.action.HTC_MEDIACACHE_SCANFINISH"

.field public static LOG_S:Ljava/lang/String; = null

.field public static LOG_TAG:Ljava/lang/String; = null

.field public static final MAX_FILMSTRIPTHUMB:I = 0x12c

.field public static final MAX_FULLSCREENTHUMB:I = 0x1e

.field public static final MAX_GRIDTHUMB:I = 0x7d0

#the value of this static final field might be set in the static constructor
.field public static final MAX_GRIDTHUMB_FOLDER:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_THUMB_FOLDER_COUNT:I = 0x0

.field private static MIN_SPACE_DIV_BLOCK_SIZE:[D = null

.field public static final PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage; = null

.field private static PHONE_THUMBNAIL_COUNT:[J = null

.field public static final REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage; = null

.field private static REMOVALBE_THUMBNAIL_COUNT:[J = null

.field private static final STORAGE_MIN_SPACE:J = 0x100000L

.field public static final THUMBNAIL_VERSION:I = 0x64

.field public static final UNKNOW:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

.field public static final USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

.field private static USB_THUMBNAIL_COUNT:[J

.field public static bResetCalculate:Z

.field protected static mScreenlarge:I

.field private static m_szExternalPath:Ljava/lang/String;

.field private static m_szExternalThumbnailPath:Ljava/lang/String;

.field private static m_szPhoneStorage:Ljava/lang/String;

.field private static m_szPhoneThumbnailPath:Ljava/lang/String;

.field private static m_szRemovablePath:Ljava/lang/String;

.field private static m_szRemovealbeThumbnailPath:Ljava/lang/String;

.field private static m_szUsbPath:Ljava/lang/String;

.field private static m_szUsbThumbnailPath:Ljava/lang/String;

.field public static mbInitExternalFolder:Z

.field public static mbInitPhoneFolder:Z

.field public static mbInitRemoveableFolder:Z

.field public static mbInitUsblFolder:Z

.field protected static sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;


# instance fields
.field private mCacheScanFinish:Landroid/content/BroadcastReceiver;

.field private mRegCacheScanFinish:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    .line 43
    const-string v0, "CacheCountMgr"

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    .line 48
    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitExternalFolder:Z

    .line 49
    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitRemoveableFolder:Z

    .line 50
    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitUsblFolder:Z

    .line 51
    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitPhoneFolder:Z

    .line 160
    sput v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    .line 318
    new-array v0, v4, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    .line 460
    const-string v0, "CacheCountMgr"

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_S:Ljava/lang/String;

    .line 513
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 514
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 515
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 516
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-direct {v0, v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 517
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-direct {v0, v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->UNKNOW:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 520
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_SUBFOLDER:[Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    .line 522
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_GRIDTHUMB_FOLDER:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_GRIDTHUMB_FOLDER:I

    .line 523
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_THUMB_FOLDER_COUNT:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    .line 524
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FILMSTRIP:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    .line 525
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FULLSCREEN:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    .line 536
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    .line 537
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    .line 538
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    .line 539
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    .line 541
    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    .line 982
    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 983
    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    .line 984
    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    .line 985
    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 987
    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    .line 988
    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    .line 989
    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    .line 990
    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    return-void

    .line 318
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    .line 553
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr$1;-><init>(Lcom/htc/opensense2/album/cache/CacheCountMgr;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static final CalcFolderCount(Ljava/lang/String;)V
    .locals 7
    .parameter "sData"

    .prologue
    .line 700
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v0

    .line 702
    .local v0, code:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v2

    .line 704
    .local v2, thumbnail_count:[J
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetFolderIndex(Ljava/lang/String;)I

    move-result v1

    .line 706
    .local v1, nFolder:I
    const-wide/16 v3, 0x1

    aget-wide v5, v2, v1

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 709
    return-void
.end method

.method public static final CalculateAll(Z)Z
    .locals 4
    .parameter "bForce"

    .prologue
    const/4 v3, 0x1

    .line 738
    if-eq p0, v3, :cond_0

    sget-boolean v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    if-ne v0, v3, :cond_1

    .line 740
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    .line 742
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    .line 743
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    .line 744
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    .line 745
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    .line 748
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[EXTERNAL_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 749
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[REMOVALBE_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 750
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[USB_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 751
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[PHONE_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_1
    return v3
.end method

.method private static final CreateThumbnailFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 8
    .parameter "storage"

    .prologue
    const/4 v7, 0x1

    .line 867
    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    .line 868
    .local v2, sFolder:Ljava/lang/String;
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    .line 870
    .local v0, arSubFolder:[Ljava/lang/String;
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitExternalFolder:Z

    if-nez v6, :cond_0

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_0

    .line 872
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isExternalStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_0

    .line 874
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitExternalFolder:Z

    .line 875
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, sExternal:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v1, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 880
    .end local v1           #sExternal:Ljava/lang/String;
    :cond_0
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitRemoveableFolder:Z

    if-nez v6, :cond_1

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportRemovalbeStorage()Z

    move-result v6

    if-ne v6, v7, :cond_1

    .line 882
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isRemovableStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetRemovableFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_1

    .line 884
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitRemoveableFolder:Z

    .line 885
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v4

    .line 886
    .local v4, sRemovable:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v4, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 890
    .end local v4           #sRemovable:Ljava/lang/String;
    :cond_1
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitUsblFolder:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportUsbStorage()Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 892
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isUsbStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetUsbFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 894
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitUsblFolder:Z

    .line 895
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v5

    .line 896
    .local v5, sUsb:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v5, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 901
    .end local v5           #sUsb:Ljava/lang/String;
    :cond_2
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitPhoneFolder:Z

    if-nez v6, :cond_3

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportPhoneStorage()Z

    move-result v6

    if-ne v6, v7, :cond_3

    .line 903
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isPhoneStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_3

    .line 905
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitPhoneFolder:Z

    .line 906
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, sPhone:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v3, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 911
    .end local v3           #sPhone:Ljava/lang/String;
    :cond_3
    return v7
.end method

.method public static final CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "sBasePath"
    .parameter "sFolder"
    .parameter "arSubFolder"

    .prologue
    .line 818
    move-object v4, p0

    .line 820
    .local v4, path:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 822
    .local v5, root:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 823
    const/4 v7, 0x0

    .line 861
    .end local v5           #root:Ljava/io/File;
    :goto_0
    return v7

    .line 826
    .restart local v5       #root:Ljava/io/File;
    :cond_0
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, folders:[Ljava/lang/String;
    array-length v3, v1

    .line 829
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 831
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 833
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 835
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 836
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 829
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 840
    .end local v0           #f:Ljava/io/File;
    :cond_2
    array-length v3, p2

    .line 842
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 844
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 846
    .local v6, s:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 849
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 857
    .end local v0           #f:Ljava/io/File;
    .end local v1           #folders:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #n:I
    .end local v5           #root:Ljava/io/File;
    .end local v6           #s:Ljava/lang/String;
    :catchall_0
    move-exception v7

    throw v7

    .line 854
    :catch_0
    move-exception v7

    .line 861
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static final GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;
    .locals 1
    .parameter "storage"

    .prologue
    .line 916
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_0

    .line 917
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    .line 932
    :goto_0
    return-object v0

    .line 920
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_1

    .line 921
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 924
    :cond_1
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_2

    .line 925
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 928
    :cond_2
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_3

    .line 929
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    :cond_3
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 13
    .parameter "task"

    .prologue
    const/16 v12, 0x2d

    .line 61
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x40

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .local v10, res:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 64
    .local v1, cacheset:I
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 65
    .local v4, filePath:Ljava/lang/String;
    iget-wide v7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    .line 66
    .local v7, modifyTime:J
    iget v11, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    int-to-long v2, v11

    .line 67
    .local v2, factor:J
    iget-wide v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    .line 70
    .local v5, fileSize:J
    const/16 v11, 0x65

    if-ne v1, v11, :cond_0

    .line 72
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 73
    .local v9, n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 74
    .local v0, buf:[C
    const-string v11, "XX-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 101
    :goto_0
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 76
    .end local v0           #buf:[C
    .end local v9           #n:I
    :cond_0
    const/16 v11, 0xa

    if-ne v1, v11, :cond_1

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 79
    .restart local v9       #n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 80
    .restart local v0       #buf:[C
    const-string v11, "XX-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    .end local v0           #buf:[C
    .end local v9           #n:I
    :cond_1
    const/16 v11, 0xb

    if-ne v1, v11, :cond_2

    .line 84
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 85
    .restart local v9       #n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 86
    .restart local v0       #buf:[C
    const-string v11, "11-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    .end local v0           #buf:[C
    .end local v9           #n:I
    :cond_2
    const/16 v11, 0xc

    if-ne v1, v11, :cond_3

    .line 90
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 91
    .restart local v9       #n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 92
    .restart local v0       #buf:[C
    const-string v11, "12-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 96
    .end local v0           #buf:[C
    .end local v9           #n:I
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 97
    .restart local v9       #n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 98
    .restart local v0       #buf:[C
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static final GetCacheTaskFactorParam(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    if-nez v0, :cond_0

    .line 167
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->GetCacheTaskFactorParam(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    .line 172
    :cond_0
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    return v0
.end method

.method public static final GetDMCCachePath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 8
    .parameter "task"

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, cache_path:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v3

    .line 187
    .local v3, storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 189
    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->CreateDMCCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 190
    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetFolderName(J)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, subFolder:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, fileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, cache_root:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    goto :goto_0

    .line 198
    .end local v1           #cache_root:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #subFolder:Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 199
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetFolderName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 201
    .restart local v4       #subFolder:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2       #fileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1       #cache_root:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static final GetFolderIndex(Ljava/lang/String;)I
    .locals 4
    .parameter "sData"

    .prologue
    .line 713
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, s:[Ljava/lang/String;
    array-length v0, v1

    .line 717
    .local v0, n:I
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    const-string v3, "11-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    .line 726
    :goto_0
    return v2

    .line 722
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    const-string v3, "12-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 723
    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    goto :goto_0

    .line 726
    :cond_1
    add-int/lit8 v2, v0, -0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static final GetFolderName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "thumbnail"
    .parameter "hashCode"

    .prologue
    .line 632
    if-nez p0, :cond_0

    .line 633
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 650
    :goto_0
    return-object v1

    .line 636
    :cond_0
    const-string v1, "11-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    aget-object v1, v1, v2

    goto :goto_0

    .line 640
    :cond_1
    const-string v1, "12-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    aget-object v1, v1, v2

    goto :goto_0

    .line 644
    :cond_2
    sget v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_GRIDTHUMB_FOLDER:I

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v0, v1

    .line 646
    .local v0, idx:I
    if-gez v0, :cond_3

    .line 647
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    neg-int v2, v0

    aget-object v1, v1, v2

    goto :goto_0

    .line 650
    :cond_3
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method private static final GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V
    .locals 9
    .parameter "thumbnail_count"
    .parameter "nWhichStorage"

    .prologue
    .line 776
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v4

    .line 778
    .local v4, root:Ljava/lang/String;
    sget-object v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v7, :cond_2

    .line 779
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v4

    .line 788
    :cond_0
    :goto_0
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    .line 790
    .local v6, sFolder:Ljava/lang/String;
    array-length v2, p0

    .line 792
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    if-ge v1, v7, :cond_5

    if-ge v1, v2, :cond_5

    .line 794
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, s:Ljava/lang/String;
    const-wide/16 v7, 0x0

    aput-wide v7, p0, v1

    .line 798
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 800
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 792
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 781
    .end local v0           #f:Ljava/io/File;
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #sFolder:Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v7, :cond_3

    .line 782
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 784
    :cond_3
    sget-object v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v7, :cond_0

    .line 785
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 804
    .restart local v0       #f:Ljava/io/File;
    .restart local v1       #i:I
    .restart local v2       #n:I
    .restart local v5       #s:Ljava/lang/String;
    .restart local v6       #sFolder:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, names:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 808
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    int-to-long v7, v7

    aput-wide v7, p0, v1

    goto :goto_2

    .line 811
    .end local v0           #f:Ljava/io/File;
    .end local v3           #names:[Ljava/lang/String;
    .end local v5           #s:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static final GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J
    .locals 2
    .parameter "whichstorage"

    .prologue
    .line 575
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    .line 577
    .local v0, check_count:[J
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_1

    .line 578
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    .line 587
    :cond_0
    :goto_0
    return-object v0

    .line 580
    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_2

    .line 581
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    goto :goto_0

    .line 583
    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_0

    .line 584
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    goto :goto_0
.end method

.method public static final GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;
    .locals 1
    .parameter "storage"

    .prologue
    .line 655
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v0, p0, :cond_0

    .line 656
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 668
    :goto_0
    return-object v0

    .line 659
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v0, p0, :cond_1

    .line 660
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 663
    :cond_1
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v0, p0, :cond_2

    .line 664
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 668
    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    .locals 5
    .parameter "sData"

    .prologue
    .line 673
    if-nez p0, :cond_0

    .line 674
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 695
    :goto_0
    return-object v4

    .line 677
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, sPath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, removealbe:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportRemovalbeStorage()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 682
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0

    .line 685
    :cond_1
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, usbpath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportUsbStorage()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 687
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0

    .line 690
    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, phonepath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportPhoneStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 692
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0

    .line 695
    :cond_3
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0
.end method

.method public static final LogIt([JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "arr"
    .parameter "sData"
    .parameter "s"

    .prologue
    .line 760
    return-void
.end method

.method public static final ResetCalculateAll(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 732
    sput-boolean p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    .line 733
    return-void
.end method

.method public static final getExternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1038
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1040
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    .line 1044
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    return-object v1
.end method

.method private static final getExternalStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 995
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, sPath:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 1000
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;

    invoke-direct {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    .line 38
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    return-object v0
.end method

.method public static final getPhoneStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1080
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1082
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    .line 1086
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    return-object v1
.end method

.method private static final getPhoneStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1026
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, sPath:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 1031
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method private static final getRemovalbStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1006
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, sPath:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    .line 1011
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method public static final getRemovalbeStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1050
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1052
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    .line 1056
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    return-object v1
.end method

.method public static final getUsbStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1061
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1068
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    .line 1075
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    return-object v1
.end method

.method private static final getUsbStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1016
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, sPath:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    .line 1021
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method public static final isExternalStorageMounted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1140
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1147
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isFilmThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 5
    .parameter "whichstorage"

    .prologue
    .line 609
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    .line 611
    .local v0, check_count:[J
    sget v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 612
    const/4 v1, 0x1

    .line 615
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isFullThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 5
    .parameter "whichstorage"

    .prologue
    .line 620
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    .line 622
    .local v0, check_count:[J
    sget v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x1e

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 623
    const/4 v1, 0x1

    .line 626
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isGetRemovableFolderId()Z
    .locals 7

    .prologue
    .line 1183
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, external:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 1186
    .local v1, id1:I
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 1187
    .local v3, remove:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    .line 1189
    .local v2, id2:I
    if-ne v1, v2, :cond_0

    .line 1190
    const-string v4, "DeviceStorageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isGetRemovableFolderId]-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/4 v4, 0x0

    .line 1194
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static final isGetUsbFolderId()Z
    .locals 7

    .prologue
    .line 1199
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, external:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 1202
    .local v1, id1:I
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 1203
    .local v3, usb:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    .line 1205
    .local v2, id2:I
    if-ne v1, v2, :cond_0

    .line 1206
    const-string v4, "DeviceStorageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isGetUsbFolderId]-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/4 v4, 0x0

    .line 1210
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static final isGridThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 6
    .parameter "whichstorage"

    .prologue
    .line 592
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    .line 594
    .local v0, check_count:[J
    const-wide/16 v2, 0x0

    .line 596
    .local v2, total:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_GRIDTHUMB_FOLDER:I

    if-ge v1, v4, :cond_0

    .line 597
    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    :cond_0
    const-wide/16 v4, 0x7d0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 601
    const/4 v4, 0x1

    .line 604
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final isMediCacheServiceThumbnails(Ljava/lang/String;)Z
    .locals 5
    .parameter "cachePath"

    .prologue
    .line 937
    const/4 v1, 0x0

    .line 939
    .local v1, bRet:Z
    if-nez p0, :cond_0

    .line 940
    const/4 v3, 0x0

    .line 958
    :goto_0
    return v3

    .line 943
    :cond_0
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, ar:[Ljava/lang/String;
    array-length v2, v0

    .line 947
    .local v2, n:I
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const-string v4, "XX-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 948
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v3, v1

    .line 958
    goto :goto_0

    .line 950
    :cond_2
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const-string v4, "11-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 951
    const/4 v1, 0x1

    goto :goto_1

    .line 953
    :cond_3
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const-string v4, "12-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 954
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static final isPhoneStorageMounted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1126
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1133
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isRemovableStorageMounted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1152
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1159
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isSupportPhoneStorage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1091
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupportRemovalbeStorage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1100
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupportUsbStorage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1114
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasUsbDeviceSlot()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isUsbStorageMounted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1169
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1178
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "volume"
    .parameter "thumbprefix"

    .prologue
    .line 489
    if-nez p0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_DELETE_THUMBS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static final sendPauseCacheIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 479
    if-nez p0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_PAUSE_GENTHUMBNAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static final sendResumeCacheIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 471
    if-nez p0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_RESUEM_GENTHUMBNAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static final toUpperCaseLength8([C)[C
    .locals 6
    .parameter "h"

    .prologue
    const/16 v5, 0x8

    .line 963
    array-length v2, p0

    .line 965
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 967
    aget-char v3, p0, v1

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    .line 968
    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    aput-char v3, p0, v1

    .line 965
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 972
    :cond_1
    if-le v2, v5, :cond_2

    .line 978
    .end local p0
    :goto_1
    return-object p0

    .line 976
    .restart local p0
    :cond_2
    new-array v0, v5, [C

    fill-array-data v0, :array_0

    .line 977
    .local v0, buf:[C
    const/4 v3, 0x0

    rsub-int/lit8 v4, v2, 0x8

    invoke-static {p0, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 978
    goto :goto_1

    .line 976
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method


# virtual methods
.method public GetCacheFullPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 7
    .parameter "task"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 117
    .local v0, cache_path:Ljava/lang/String;
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v4, :cond_1

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 119
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->CreateDMCCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 120
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetFolderName(J)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, subFolder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, fileName:Ljava/lang/String;
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, cache_root:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    goto :goto_0

    .line 131
    .end local v1           #cache_root:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #subFolder:Ljava/lang/String;
    :cond_1
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 133
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CarModeCache;->CreateCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 134
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetFolderName(J)Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3       #subFolder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2       #fileName:Ljava/lang/String;
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .restart local v1       #cache_root:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    goto/16 :goto_0

    .line 147
    .end local v1           #cache_root:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #subFolder:Ljava/lang/String;
    :cond_2
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 148
    invoke-virtual {p1}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetFolderName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 150
    .restart local v3       #subFolder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2       #fileName:Ljava/lang/String;
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .restart local v1       #cache_root:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public GetCacheName(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 1
    .parameter "task"

    .prologue
    .line 56
    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asynAddCache(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 8
    .parameter "filePath"
    .parameter "cachePath"
    .parameter "cacheSet"
    .parameter "cacheSize"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 245
    :try_start_0
    invoke-static {p2}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->isDMCCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->calculateDMCFolder(Z)Z

    .line 249
    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v1

    .line 251
    .local v1, storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    invoke-static {p2, v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->addDMCFolderCount(Ljava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)J

    .line 253
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, volume:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->IsCacheFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    .line 257
    sget-object v5, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->DMC720P:Ljava/lang/String;

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .end local v1           #storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    .end local v4           #volume:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez p5, :cond_1

    .line 314
    :cond_1
    return-void

    .line 260
    :cond_2
    invoke-static {p2}, Lcom/htc/opensense2/album/cache/CarModeCache;->isRightCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 262
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CarModeCache;->calculateFolder(Z)Z

    .line 264
    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v1

    .line 266
    .restart local v1       #storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    invoke-static {p2, v1}, Lcom/htc/opensense2/album/cache/CarModeCache;->addFolderCount(Ljava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)J

    .line 268
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v4

    .line 270
    .restart local v4       #volume:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CarModeCache;->IsCacheFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    .line 272
    sget-object v5, Lcom/htc/opensense2/album/cache/CarModeCache;->CACHE_FOLDER:Ljava/lang/String;

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CarModeCache;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v1           #storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    .end local v4           #volume:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][asynAddCache]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    throw v5

    .line 277
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CalculateAll(Z)Z

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 280
    .local v2, t1:J
    invoke-static {p2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CalcFolderCount(Ljava/lang/String;)V

    .line 282
    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v1

    .line 284
    .restart local v1       #storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .restart local v4       #volume:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGridThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v6, v5, :cond_4

    .line 288
    const-string v5, "XX-"

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_4
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isFilmThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v6, v5, :cond_5

    .line 292
    const-string v5, "11-"

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_5
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isFullThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    .line 296
    const-string v5, "12-"

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public asynUpdateCache(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 7
    .parameter "fileName"
    .parameter "cachePath"
    .parameter "cacheSet"
    .parameter "context"

    .prologue
    .line 222
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 223
    .local v2, t2:J
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1           #f:Ljava/io/File;
    .end local v2           #t2:J
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][asynUpdateCache]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public deInitCacheMgr(Landroid/content/Context;)V
    .locals 4
    .parameter "contex"

    .prologue
    .line 424
    if-eqz p1, :cond_0

    .line 426
    :try_start_0
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 428
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    .line 429
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[deInitCacheMgr]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 442
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public initCacheMgr(Landroid/content/Context;)V
    .locals 5
    .parameter "contex"

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 390
    :try_start_0
    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    if-gtz v2, :cond_1

    .line 392
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CalculateAll(Z)Z

    .line 394
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HTC_MEDIACACHE_SCANFINISH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 395
    .local v1, iFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    .line 412
    .end local v1           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initCacheMgr]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 14
    .parameter "task"

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 329
    .local v0, available:Z
    :try_start_0
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 332
    .local v2, idx:I
    sget-object v10, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    iget-object v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v9, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v10, v9, :cond_2

    .line 333
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v7

    .line 334
    const/4 v2, 0x1

    .line 346
    :cond_0
    :goto_0
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 347
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    .line 348
    .local v5, nAvailableBlock:I
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    .line 349
    .local v6, nBlockSize:I
    mul-int v9, v5, v6

    int-to-long v3, v9

    .line 358
    .local v3, lFreeSpace:J
    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    aget-wide v9, v9, v2

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_1

    .line 360
    sget-object v11, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    if-lez v6, :cond_4

    const-wide/32 v9, 0x100000

    int-to-long v12, v6

    div-long/2addr v9, v12

    long-to-double v9, v9

    :goto_1
    aput-wide v9, v11, v2

    .line 363
    :cond_1
    int-to-double v9, v5

    sget-object v11, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    aget-wide v11, v11, v2

    cmpl-double v9, v9, v11

    if-lez v9, :cond_5

    const/4 v0, 0x1

    .line 374
    .end local v2           #idx:I
    .end local v3           #lFreeSpace:J
    .end local v5           #nAvailableBlock:I
    .end local v6           #nBlockSize:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #stat:Landroid/os/StatFs;
    :goto_2
    return v0

    .line 336
    .restart local v2       #idx:I
    .restart local v7       #path:Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    iget-object v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v9, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v10, v9, :cond_3

    .line 337
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v7

    .line 338
    const/4 v2, 0x2

    goto :goto_0

    .line 340
    :cond_3
    sget-object v10, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    iget-object v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v9, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v10, v9, :cond_0

    .line 341
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 342
    const/4 v2, 0x3

    goto :goto_0

    .line 360
    .restart local v3       #lFreeSpace:J
    .restart local v5       #nAvailableBlock:I
    .restart local v6       #nBlockSize:I
    .restart local v8       #stat:Landroid/os/StatFs;
    :cond_4
    const-wide v9, 0x41dfffffffc00000L

    goto :goto_1

    .line 363
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 365
    .end local v2           #idx:I
    .end local v3           #lFreeSpace:J
    .end local v5           #nAvailableBlock:I
    .end local v6           #nBlockSize:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 367
    .local v1, ex:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[externalStorageChecker] Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public updateExtraContent(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 451
    iget-object v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    .line 452
    return-void
.end method
