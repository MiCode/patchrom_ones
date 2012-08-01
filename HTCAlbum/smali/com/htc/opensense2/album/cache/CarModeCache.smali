.class public Lcom/htc/opensense2/album/cache/CarModeCache;
.super Ljava/lang/Object;
.source "CarModeCache.java"


# static fields
.field public static final ACTION_DELETE_CARMODETHUMBS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_DELETE_CARMODETHUMBS"

.field public static final ARR_FOLDER:[Ljava/lang/String;

.field public static final CACHE_FOLDER:Ljava/lang/String;

.field private static EXTERNAL_THUMBNAIL_COUNT:[J

.field public static MAX_THUMB_COUNT:I

.field private static PHONE_THUMBNAIL_COUNT:[J

.field private static REMOVALBE_THUMBNAIL_COUNT:[J

.field private static USB_THUMBNAIL_COUNT:[J

.field public static bResetCalculate:Z

.field public static mbInitExternalFolder:Z

.field public static mbInitPhoneFolder:Z

.field public static mbInitRemoveableFolder:Z

.field public static mbInitUsblFolder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_CARMODEFOLDER:[Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    aget-object v0, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->CACHE_FOLDER:Ljava/lang/String;

    .line 16
    sput-boolean v1, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitExternalFolder:Z

    .line 17
    sput-boolean v1, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitRemoveableFolder:Z

    .line 18
    sput-boolean v1, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitUsblFolder:Z

    .line 19
    sput-boolean v1, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitPhoneFolder:Z

    .line 23
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_CARMODEFOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->EXTERNAL_THUMBNAIL_COUNT:[J

    .line 24
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_CARMODEFOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->REMOVALBE_THUMBNAIL_COUNT:[J

    .line 25
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_CARMODEFOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->USB_THUMBNAIL_COUNT:[J

    .line 26
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_CARMODEFOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->PHONE_THUMBNAIL_COUNT:[J

    .line 27
    const/16 v0, 0x28a

    sput v0, Lcom/htc/opensense2/album/cache/CarModeCache;->MAX_THUMB_COUNT:I

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/opensense2/album/cache/CarModeCache;->bResetCalculate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final CreateCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 8
    .parameter "storage"

    .prologue
    const/4 v7, 0x1

    .line 214
    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    .line 216
    .local v2, sFolder:Ljava/lang/String;
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    .line 218
    .local v0, arSubFolder:[Ljava/lang/String;
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitExternalFolder:Z

    if-nez v6, :cond_0

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_0

    .line 220
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isExternalStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_0

    .line 222
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitExternalFolder:Z

    .line 223
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, sExternal:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v1, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 228
    .end local v1           #sExternal:Ljava/lang/String;
    :cond_0
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitRemoveableFolder:Z

    if-nez v6, :cond_1

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportRemovalbeStorage()Z

    move-result v6

    if-ne v6, v7, :cond_1

    .line 230
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isRemovableStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetRemovableFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_1

    .line 232
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitRemoveableFolder:Z

    .line 233
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, sRemovable:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v4, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 238
    .end local v4           #sRemovable:Ljava/lang/String;
    :cond_1
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitUsblFolder:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportUsbStorage()Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 240
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isUsbStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetUsbFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 242
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitUsblFolder:Z

    .line 243
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, sUsb:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v5, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 248
    .end local v5           #sUsb:Ljava/lang/String;
    :cond_2
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitPhoneFolder:Z

    if-nez v6, :cond_3

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportPhoneStorage()Z

    move-result v6

    if-ne v6, v7, :cond_3

    .line 250
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isPhoneStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_3

    .line 252
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CarModeCache;->mbInitPhoneFolder:Z

    .line 253
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, sPhone:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v3, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 258
    .end local v3           #sPhone:Ljava/lang/String;
    :cond_3
    return v7
.end method

.method private static final GetFolderIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "sData"
    .parameter "arr_DMCFOLDER"

    .prologue
    const/4 v5, -0x1

    .line 150
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, s:[Ljava/lang/String;
    array-length v3, v4

    .line 154
    .local v3, n:I
    add-int/lit8 v2, v3, -0x2

    .line 156
    .local v2, idx:I
    if-gez v2, :cond_1

    move v1, v5

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    aget-object v0, v4, v2

    .line 162
    .local v0, folder:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_2

    .line 163
    aget-object v6, p1, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v5

    .line 168
    goto :goto_0
.end method

.method public static final GetFolderName(J)Ljava/lang/String;
    .locals 2
    .parameter "flag"

    .prologue
    .line 49
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static final GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;
    .locals 3
    .parameter "nWhichStorage"

    .prologue
    .line 97
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, root:Ljava/lang/String;
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_1

    .line 100
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_2

    .line 102
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_0

    .line 104
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "thumbnail_count"
    .parameter "sRootPath"
    .parameter "folderName"

    .prologue
    .line 112
    array-length v2, p0

    .line 114
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p2

    if-ge v1, v5, :cond_2

    if-ge v1, v2, :cond_2

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, s:Ljava/lang/String;
    const-wide/16 v5, 0x0

    aput-wide v5, p0, v1

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, names:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    aput-wide v5, p0, v1

    goto :goto_1

    .line 132
    .end local v0           #f:Ljava/io/File;
    .end local v3           #names:[Ljava/lang/String;
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static final GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J
    .locals 2
    .parameter "whichstorage"

    .prologue
    .line 136
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->EXTERNAL_THUMBNAIL_COUNT:[J

    .line 138
    .local v0, check_count:[J
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_1

    .line 139
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->REMOVALBE_THUMBNAIL_COUNT:[J

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_2

    .line 141
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->USB_THUMBNAIL_COUNT:[J

    goto :goto_0

    .line 142
    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_0

    .line 143
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->PHONE_THUMBNAIL_COUNT:[J

    goto :goto_0
.end method

.method public static IsCacheFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 6
    .parameter "storage"

    .prologue
    .line 195
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    .line 197
    .local v0, check_count:[J
    const-wide/16 v2, 0x0

    .line 199
    .local v2, total:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 201
    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    sget v4, Lcom/htc/opensense2/album/cache/CarModeCache;->MAX_THUMB_COUNT:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 205
    const/4 v4, 0x1

    .line 209
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final ResetCalculateAll(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 34
    sput-boolean p0, Lcom/htc/opensense2/album/cache/CarModeCache;->bResetCalculate:Z

    .line 35
    return-void
.end method

.method public static final addFolderCount(Ljava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)J
    .locals 6
    .parameter "sData"
    .parameter "storage"

    .prologue
    const-wide/16 v2, 0x0

    .line 173
    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v1

    .line 175
    .local v1, thumbnail_count:[J
    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-wide v2

    .line 179
    :cond_1
    sget-object v4, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetFolderIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, nFolder:I
    if-ltz v0, :cond_0

    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 186
    const-wide/16 v2, 0x1

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 190
    aget-wide v2, v1, v0

    goto :goto_0
.end method

.method public static final calculateFolder(Z)Z
    .locals 4
    .parameter "bForce"

    .prologue
    const/4 v3, 0x1

    .line 76
    if-eq p0, v3, :cond_0

    sget-boolean v0, Lcom/htc/opensense2/album/cache/CarModeCache;->bResetCalculate:Z

    if-ne v0, v3, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense2/album/cache/CarModeCache;->bResetCalculate:Z

    .line 80
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->EXTERNAL_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->REMOVALBE_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->USB_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->PHONE_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CarModeCache;->GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->EXTERNAL_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[EXTERNAL_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->REMOVALBE_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[REMOVALBE_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->USB_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[USB_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/htc/opensense2/album/cache/CarModeCache;->PHONE_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[PHONE_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    return v3
.end method

.method public static final isRightCache(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, folder:[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v3

    .line 59
    :cond_1
    array-length v5, v0

    add-int/lit8 v2, v5, -0x2

    .line 61
    .local v2, idx:I
    if-lez v2, :cond_0

    .line 65
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 66
    sget-object v5, Lcom/htc/opensense2/album/cache/CarModeCache;->ARR_FOLDER:[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    .line 67
    goto :goto_0

    .line 65
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "volume"
    .parameter "thumbprefix"

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_DELETE_CARMODETHUMBS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
