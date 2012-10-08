.class public Lcom/htc/album/helper/UserProfilingLog;
.super Ljava/lang/Object;
.source "UserProfilingLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/UserProfilingLog$4;,
        Lcom/htc/album/helper/UserProfilingLog$PROFILE;
    }
.end annotation


# static fields
.field private static final APPID:Ljava/lang/String; = "com.htc.album"

.field private static final CATEGORY_ALBUM_SHAREVIA:Ljava/lang/String; = "Share"

.field private static final CATEGORY_ALBUM_SLIDESHOW:Ljava/lang/String; = "Slideshow"

.field private static final CATEGORY_ALBUM_SRC:Ljava/lang/String; = "album_source"

.field private static final CATEGORY_STORAGE:Ljava/lang/String; = "storage"

.field private static final EFFECT_COUNT:Ljava/lang/String; = "count"

.field private static final EFFECT_NAME:Ljava/lang/String; = "effect"

.field private static final LOG_TAG:Ljava/lang/String; = "UserProfilingLog"

.field private static final SHARE_COUNT:Ljava/lang/String; = "count"

.field private static final SHARE_NAME:Ljava/lang/String; = "service"

.field private static final SRC_NAME:Ljava/lang/String; = "service_name"

.field private static final SRC_TYPE:Ljava/lang/String; = "service_type"

.field private static final STORAGE_ALLFOLDER:Ljava/lang/String; = "total_folder"

.field private static final STORAGE_ALLPHOTO:Ljava/lang/String; = "total_photo"

.field private static final STORAGE_ALLVIDEO:Ljava/lang/String; = "total_video"

.field private static sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static dumpUserAccessCount()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/album/helper/UserProfilingLog$1;

    invoke-direct {v1}, Lcom/htc/album/helper/UserProfilingLog$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static logSourceSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "szSrcType"
    .parameter "szSrcName"

    .prologue
    .line 150
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/album/helper/UserProfilingLog$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/helper/UserProfilingLog$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static logStorageContent(III)V
    .locals 2
    .parameter "nCountFolder"
    .parameter "nCountAllPhoto"
    .parameter "nCountAllVideo"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/album/helper/UserProfilingLog$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/album/helper/UserProfilingLog$3;-><init>(III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 252
    return-void
.end method

.method public static logStorageContent(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, collection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v7

    if-nez v7, :cond_0

    .line 220
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, nAllFolder:I
    move v5, v1

    .line 202
    .local v5, nMaxLoop:I
    const/4 v2, 0x0

    .local v2, nAllPhoto:I
    const/4 v3, 0x0

    .line 204
    .local v3, nAllVideo:I
    const/4 v0, 0x0

    .line 205
    .local v0, anAblum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v6, 0x0

    .line 207
    .local v6, szFolderType:Ljava/lang/String;
    const/4 v7, 0x4

    if-ge v7, v1, :cond_1

    .line 208
    const/4 v5, 0x4

    .line 209
    :cond_1
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    if-le v5, v4, :cond_5

    .line 211
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAblum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v0       #anAblum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v0, :cond_3

    .line 209
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    .line 214
    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 215
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v2

    goto :goto_2

    .line 216
    :cond_4
    const-string v7, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 217
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v3

    goto :goto_2

    .line 219
    :cond_5
    invoke-static {v1, v2, v3}, Lcom/htc/album/helper/UserProfilingLog;->logStorageContent(III)V

    goto :goto_0
.end method

.method public static logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V
    .locals 3
    .parameter "profile"
    .parameter "szKey"

    .prologue
    .line 60
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    .end local p1
    :goto_0
    return-void

    .line 63
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    .line 65
    const-string v1, "UserProfilingLog"

    const-string v2, "[HTCAlbum][UserProfilingLog][logUserAccessCount]: no key..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    .line 69
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog$4;->$SwitchMap$com$htc$album$helper$UserProfilingLog$PROFILE:[I

    invoke-virtual {p0}, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogShareVia(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .restart local p1
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogSlideShow(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static onLogShareVia(Ljava/lang/String;)V
    .locals 3
    .parameter "szKey"

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 261
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void

    .line 259
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogSlideShow(Ljava/lang/String;)V
    .locals 3
    .parameter "szKey"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 272
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void

    .line 270
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
