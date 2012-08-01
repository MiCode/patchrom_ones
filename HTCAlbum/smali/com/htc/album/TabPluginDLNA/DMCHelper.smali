.class public Lcom/htc/album/TabPluginDLNA/DMCHelper;
.super Ljava/lang/Object;
.source "DMCHelper.java"


# static fields
.field public static final CLASS_PHOTO_DMC:Ljava/lang/String; = "com.htc.album.TabPluginDLNA.ActivityPhotoDMC"

.field public static final DMC_MODE_FROM_LOCAL:I = 0x0

.field public static final DMC_MODE_FROM_MEDIA_SERVICE:I = 0x1

.field public static final DMC_MODE_FROM_ONLINE:I = 0x2

.field public static final DMRSERVER_PICKPHOTO:I = 0x1

.field public static final DMRSERVER_PICKVIDEO:I = 0x2

.field public static final INTENT_KEY_VIDEO_THUMB_URI:Ljava/lang/String; = "VideoThumbUri"

.field public static final INTENT_KEY_VIDEO_URI:Ljava/lang/String; = "filepath"

.field public static final LOG_TAG:Ljava/lang/String; = "DMCHelper"

.field public static final PACKAGE_PHOTO_DMC:Ljava/lang/String; = "com.htc.album"

.field private static final PROVIDER_RESULT_FAILED:Ljava/lang/String; = "false"

.field private static final PROVIDER_RESULT_OK:Ljava/lang/String; = "true"

.field public static final VIDEO_DMC_CLASS_NAME:Ljava/lang/String; = "com.htc.video.dmc.VideoDMC"

.field public static final VIDEO_DMC_PACKAGE_NAME:Ljava/lang/String; = "com.htc.video.dmc"

.field private static gDMR:Ljava/lang/String;

.field private static gDMS:Ljava/lang/String;

.field private static gFilterCap:I

.field private static gInDirect:Z

.field private static gPickDMRParam:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    .line 39
    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    .line 42
    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 5
    .parameter "context"
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0a0161

    const/4 v2, 0x1

    .line 405
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isReadyDongleNearBy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, item:Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    const v1, 0x7f0a0162

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 412
    const v1, 0x7f020018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 420
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 422
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    return-void

    .line 416
    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1, v4, v3, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 417
    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static checkAndLaunchDMC(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public static getDMR(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 644
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 645
    const/4 v1, 0x0

    .line 654
    :goto_0
    return-object v1

    .line 647
    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0

    .line 649
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0

    .line 652
    :cond_2
    const-string v1, "DMR"

    sget-object v2, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    .line 654
    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDMS(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 677
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 678
    const/4 v1, 0x0

    .line 687
    :goto_0
    return-object v1

    .line 680
    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0

    .line 682
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 683
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0

    .line 685
    :cond_2
    const-string v1, "DMS"

    sget-object v2, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    .line 687
    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFilterCap(Landroid/content/Context;Z)I
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 710
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 711
    const/4 v1, -0x1

    .line 720
    :goto_0
    return v1

    .line 713
    :cond_0
    if-nez p1, :cond_1

    sget v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    goto :goto_0

    .line 715
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 716
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    goto :goto_0

    .line 718
    :cond_2
    const-string v1, "FilterCap"

    sget v2, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    .line 720
    sget v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    goto :goto_0
.end method

.method public static getInDirect(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 740
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 741
    const/4 v1, 0x0

    .line 750
    :goto_0
    return v1

    .line 743
    :cond_0
    if-nez p1, :cond_1

    sget-boolean v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    goto :goto_0

    .line 745
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 746
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-boolean v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    goto :goto_0

    .line 748
    :cond_2
    const-string v1, "InDirect"

    sget-boolean v2, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    .line 750
    sget-boolean v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    goto :goto_0
.end method

.method public static getPickDMRParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    return-object v0
.end method

.method public static getRunningDMR(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 795
    .local v0, dmr:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getCurrentDmrUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 802
    :goto_0
    return-object v0

    .line 797
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getRunningDMRRes(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .parameter "context"
    .parameter "renderer"

    .prologue
    .line 774
    const-wide/16 v1, 0x2

    .line 777
    .local v1, nRet:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getCurrentDmrPhotoRes(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 778
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 779
    const-wide/16 v4, 0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 780
    const-wide/16 v1, 0x2

    .line 787
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v1

    .line 782
    :catch_0
    move-exception v0

    .line 784
    .local v0, ex:Ljava/lang/Exception;
    const-wide/16 v1, 0x2

    goto :goto_0
.end method

.method public static isDLNAPlaying(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 819
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getRunningDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isValidateDMR(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDMCLaunch(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, bResult:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 857
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 828
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v2, 0x0

    .line 830
    .local v2, szDMCLaunch:Ljava/lang/String;
    const-string v3, "DMCHelper"

    const-string v4, "[HTCAlbum][DMCHelper][isDMCLaunch]: Begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getCurrentDmrUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 849
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 851
    const/4 v0, 0x1

    .line 853
    :cond_1
    const-string v3, "DMCHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DMCHelper][isDMCLaunch]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 857
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public static isValidateDMR(Ljava/lang/String;)Z
    .locals 2
    .parameter "renderer"

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 809
    .local v0, bRet:Z
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 811
    const/4 v0, 0x1

    .line 814
    :cond_0
    return v0
.end method

.method public static launchDMCLocalPhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;ILandroid/os/Bundle;)V
    .locals 19
    .parameter "activity"
    .parameter "dmr"
    .parameter "imageList"
    .parameter "pos"
    .parameter "params"

    .prologue
    .line 426
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-interface/range {p2 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v17

    .line 429
    .local v17, selectImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v17, :cond_3

    const/16 v16, -0x1

    .line 431
    .local v16, selectId:I
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v12, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-ge v9, v1, :cond_5

    .line 434
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v13

    .line 435
    .local v13, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v13, :cond_2

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 432
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 429
    .end local v9           #i:I
    .end local v12           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v16           #selectId:I
    :cond_3
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v1

    long-to-int v0, v1

    move/from16 v16, v0

    goto :goto_1

    .line 437
    .restart local v9       #i:I
    .restart local v12       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v16       #selectId:I
    :cond_4
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 440
    .end local v13           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v11, v1, [I

    .line 441
    .local v11, idArray:[I
    const/4 v14, 0x0

    .line 442
    .local v14, index:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 443
    .local v18, v:Ljava/lang/Integer;
    add-int/lit8 v15, v14, 0x1

    .end local v14           #index:I
    .local v15, index:I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v11, v14

    move v14, v15

    .end local v15           #index:I
    .restart local v14       #index:I
    goto :goto_4

    .line 445
    .end local v18           #v:Ljava/lang/Integer;
    :cond_6
    array-length v1, v11

    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 447
    const-string v1, "DMCHelper"

    const-string v2, "List change, find new pos."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v9, 0x0

    :goto_5
    array-length v1, v11

    if-ge v9, v1, :cond_8

    .line 449
    aget v1, v11, v9

    move/from16 v0, v16

    if-ne v1, v0, :cond_7

    .line 450
    move/from16 p3, v9

    .line 448
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 453
    :cond_8
    if-nez p4, :cond_9

    .line 454
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct/range {p4 .. p4}, Landroid/os/Bundle;-><init>()V

    .line 456
    .restart local p4
    :cond_9
    const-string v1, "DLNA_IDLIST"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 458
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 459
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.htc.album/photo"

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v8}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0
.end method

.method public static launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 8
    .parameter "activity"
    .parameter "dmr"
    .parameter "filePath"
    .parameter "mimetype"
    .parameter "pos"
    .parameter "params"

    .prologue
    .line 275
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 278
    const/4 v2, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public static launchDMCOnlinePhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 19
    .parameter "activity"
    .parameter "dmr"
    .parameter "adapter"
    .parameter "strFolderName"
    .parameter "nStartIndex"
    .parameter "bundleData"
    .parameter "isVideo"

    .prologue
    .line 466
    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 468
    .local v5, bundleOnline:Landroid/os/Bundle;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 469
    .local v8, intent:Landroid/content/Intent;
    if-eqz p6, :cond_4

    .line 472
    const-string v16, "com.htc.video.dmc.VideoDMC"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v16, "dmc_mode"

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v16, "cookie"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    const/4 v10, 0x0

    .line 480
    .local v10, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v10

    if-nez v10, :cond_0

    .line 482
    const-string v16, "DMCHelper"

    const-string v17, "[HTCAlbum][DMCHelper][launchDMCOnlinePhotos]: photo NG !"

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .end local v10           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_0
    return-void

    .line 486
    .restart local v10       #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    const-string v16, "filepath"

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v16, "VideoThumbUri"

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string v16, "from_where"

    const-string v17, "video"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v16, "DMCHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[HTCAlbum][DMCHelper][launchDMCOnlinePhotos]: Launch Video DMC , Index: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v16, "DMCHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[HTCAlbum][DMCHelper][launchDMCOnlinePhotos]: Launch Video DMC , VideoUrl: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v16, "DMCHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[HTCAlbum][DMCHelper][launchDMCOnlinePhotos]: Launch Video DMC , VideoTUrl: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .end local v10           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_1
    const-string v16, "service_name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 537
    .local v12, strServiceName:Ljava/lang/String;
    const-string v16, "service_url"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 539
    .local v13, strServiceURL:Ljava/lang/String;
    if-eqz v12, :cond_1

    if-nez v13, :cond_2

    .line 541
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 542
    .local v11, sceneIntent:Landroid/content/Intent;
    const-string v16, "service_name"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 543
    .local v14, szService:Ljava/lang/String;
    const/4 v15, 0x0

    .line 544
    .local v15, szServiceUrl:Ljava/lang/String;
    const-string v16, "service_name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v16, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 547
    sget-object v16, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v15, v16, v17

    .line 548
    const-string v16, "tab_default"

    const v17, 0x7f0a002f

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_2
    const-string v16, "service_url"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .end local v11           #sceneIntent:Landroid/content/Intent;
    .end local v14           #szService:Ljava/lang/String;
    .end local v15           #szServiceUrl:Ljava/lang/String;
    :cond_2
    const-string v16, "index_id"

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    const-string v16, "Render"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v16, "dmc_online_folder"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v16, "dmc_bundle"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 569
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 576
    .local v2, actParent:Landroid/app/Activity;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 577
    .local v3, actTop:Landroid/app/Activity;
    :goto_4
    if-nez v3, :cond_b

    if-nez v2, :cond_3

    move-object/from16 v2, p0

    .line 578
    :cond_3
    :goto_5
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 497
    .end local v2           #actParent:Landroid/app/Activity;
    .end local v3           #actTop:Landroid/app/Activity;
    .end local v12           #strServiceName:Ljava/lang/String;
    .end local v13           #strServiceURL:Ljava/lang/String;
    :cond_4
    const-string v16, "com.htc.album"

    const-string v17, "com.htc.album.TabPluginDLNA.ActivityPhotoDMC"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v16, "dmc_mode"

    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string v16, "index_id"

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v4, bundle:Landroid/os/Bundle;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v7, 0x0

    .local v7, index:I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v16

    move/from16 v0, v16

    if-gt v7, v0, :cond_6

    .line 511
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v10

    .line 513
    .restart local v10       #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v16

    if-nez v16, :cond_5

    .line 516
    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->initTags()V

    .line 518
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 522
    .end local v10           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 524
    const-string v16, "DMCHelper"

    const-string v17, "[HTCAlbum][DMCHelper][launchDMCOnlinePhotos]: list NG !"

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :cond_7
    const-string v16, "dmc_online_photo_list"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 531
    const-string v16, "DMCHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[HTCAlbum][DMCHelper][launchDMCOnlinePhotos]: Launch Photo DMC , Index: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", list size: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 550
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v7           #index:I
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    .restart local v11       #sceneIntent:Landroid/content/Intent;
    .restart local v12       #strServiceName:Ljava/lang/String;
    .restart local v13       #strServiceURL:Ljava/lang/String;
    .restart local v14       #szService:Ljava/lang/String;
    .restart local v15       #szServiceUrl:Ljava/lang/String;
    :cond_8
    sget-object v16, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 552
    sget-object v16, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v15, v16, v17

    .line 553
    const-string v16, "tab_default"

    const v17, 0x7f0a0030

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 557
    :cond_9
    const-string v16, "service_url"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 570
    .end local v11           #sceneIntent:Landroid/content/Intent;
    .end local v14           #szService:Ljava/lang/String;
    .end local v15           #szServiceUrl:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 571
    .local v6, e:Ljava/lang/Exception;
    const-string v16, "DMCHelper"

    const-string v17, "[HTCAlbum][DMCHelper][launchDMCOnlinePhotos]: startActivity NG !"

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 576
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #actParent:Landroid/app/Activity;
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_4

    .restart local v3       #actTop:Landroid/app/Activity;
    :cond_b
    move-object v2, v3

    .line 577
    goto/16 :goto_5
.end method

.method public static launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "params"

    .prologue
    const/4 v6, 0x2

    .line 583
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    invoke-static {p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 586
    const-string v5, "com.htc.album/photo"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-static/range {v0 .. v8}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public static launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "params"

    .prologue
    .line 591
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 595
    const-string v5, "com.htc.album/video"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-static/range {v0 .. v8}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private static launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 9
    .parameter "activity"
    .parameter "dmr"
    .parameter "mode"
    .parameter "filePath"
    .parameter "content"
    .parameter "type"
    .parameter "params"
    .parameter "isVideo"

    .prologue
    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, idArray:[I
    if-eqz p6, :cond_0

    .line 127
    const-string v6, "DLNA_IDLIST"

    invoke-virtual {p6, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 129
    :cond_0
    const-string v7, "DMCHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launch local DMC. dmr: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", filePath "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", list "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_3

    const-string v6, "None"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v5, 0x3

    .line 133
    .local v5, interval:I
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "slide_show_duration_setting"

    const-string v8, "3"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 140
    :goto_1
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "Render"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v6, "cookie"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v6, "Mode"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v6, "filepath"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v6, "content"

    invoke-virtual {v4, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v6, "Extras"

    invoke-virtual {v4, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    const-string v6, "interval"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v6, "index_id"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p6, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v6, "Extras"

    invoke-virtual {v4, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    if-eqz v3, :cond_1

    .line 157
    const-string v6, "pushlist"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 159
    :cond_1
    if-eqz p7, :cond_4

    .line 161
    const-string v6, "DMCHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][DMCHelper][launchLocalDMC]: launch Video DMC, Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v6, "com.htc.video.dmc.VideoDMC"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v6, "dmc_mode"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    :goto_2
    const/high16 v6, 0x400

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    :try_start_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    const-string v6, "DMCHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finish activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, actParent:Landroid/app/Activity;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 190
    .local v1, actTop:Landroid/app/Activity;
    :goto_3
    if-nez v1, :cond_6

    if-nez v0, :cond_2

    move-object v0, p0

    .line 191
    :cond_2
    :goto_4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 192
    .end local v0           #actParent:Landroid/app/Activity;
    .end local v1           #actTop:Landroid/app/Activity;
    :goto_5
    return-void

    .line 129
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #interval:I
    :cond_3
    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 167
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #interval:I
    :cond_4
    const-string v6, "DMCHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][DMCHelper][launchLocalDMC]: launch Photo DMC, Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v6, "com.htc.album"

    const-string v7, "com.htc.album.TabPluginDLNA.ActivityPhotoDMC"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v6, "dmc_mode"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 179
    :catch_0
    move-exception v2

    .line 181
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "DMCHelper"

    const-string v7, "start dmc activity fail"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 189
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #actParent:Landroid/app/Activity;
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .restart local v1       #actTop:Landroid/app/Activity;
    :cond_6
    move-object v0, v1

    .line 190
    goto :goto_4

    .line 135
    .end local v0           #actParent:Landroid/app/Activity;
    .end local v1           #actTop:Landroid/app/Activity;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v6

    goto/16 :goto_1
.end method

.method public static launchLocalPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V
    .locals 4
    .parameter "activity"
    .parameter "renderer"
    .parameter "startPhotoID"
    .parameter "collection"

    .prologue
    .line 283
    if-nez p3, :cond_0

    .line 297
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.album.action.LAUNCH_LOCAL_PHOTO_DMC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, callDMC:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "folder_type"

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v2, "key_folder_name"

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v2, "key_bucket_id"

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "from_gallery"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    const-string v2, "Render"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "photoId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 296
    const v2, 0x330010

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchMediaServerPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/TabPluginDLNA/DLNAServerInfo;Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V
    .locals 13
    .parameter "activity"
    .parameter "renderer"
    .parameter "startIndex"
    .parameter "serverInfo"
    .parameter "adapter"

    .prologue
    .line 303
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    move-object/from16 v0, p4

    invoke-virtual {v0, p2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 309
    .local v7, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    if-eqz v7, :cond_0

    .line 312
    iget-object v4, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 314
    .local v4, contentID:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 315
    .local v5, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v5, :cond_0

    .line 318
    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v8

    .line 320
    .local v8, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-eqz v8, :cond_0

    .line 323
    invoke-virtual/range {p4 .. p4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 324
    .local v9, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    if-eqz v9, :cond_0

    .line 327
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.htc.album.action.LAUNCH_MEDIASERVER_PHOTO_DMC"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, callDMC:Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 330
    .local v6, dmcExtras:Landroid/os/Bundle;
    const-string v10, "server_id"

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v10, "server_name"

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v10, "container"

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v10, "content_id"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v10, "startIdx"

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 335
    const-string v10, "endIdx"

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 336
    const-string v10, "direction"

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v10, "directory_info"

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 339
    const-string v10, "from_gallery"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    const-string v10, "itemIndex"

    invoke-virtual {v6, v10, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    const-string v10, "Render"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v3, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 347
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 355
    .local v1, actParent:Landroid/app/Activity;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 356
    .local v2, actTop:Landroid/app/Activity;
    :goto_2
    if-nez v2, :cond_4

    if-nez v1, :cond_2

    move-object v1, p0

    .line 357
    :cond_2
    :goto_3
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 355
    .end local v2           #actTop:Landroid/app/Activity;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2       #actTop:Landroid/app/Activity;
    :cond_4
    move-object v1, v2

    .line 356
    goto :goto_3

    .line 349
    .end local v1           #actParent:Landroid/app/Activity;
    .end local v2           #actTop:Landroid/app/Activity;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method public static launchPhotoDMCFromNotification(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"

    .prologue
    .line 93
    const-string v4, "DMCHelper"

    const-string v5, "[HTCalbum][DMCHelper][launchPhotoDMCFromNotification]: Start"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {p0, p2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.htc.album"

    const-string v5, "com.htc.album.TabPluginDLNA.ActivityPhotoDMC"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v4, "dmc_mode"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const-string v4, "DMCHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finish activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, actParent:Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 119
    .local v1, actTop:Landroid/app/Activity;
    :goto_0
    if-nez v1, :cond_2

    if-nez v0, :cond_0

    move-object v0, p0

    .line 120
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 121
    .end local v0           #actParent:Landroid/app/Activity;
    .end local v1           #actTop:Landroid/app/Activity;
    :goto_2
    return-void

    .line 108
    :catch_0
    move-exception v2

    .line 110
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "DMCHelper"

    const-string v5, "start dmc activity fail"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 118
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #actParent:Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #actTop:Landroid/app/Activity;
    :cond_2
    move-object v0, v1

    .line 119
    goto :goto_1
.end method

.method public static launchSelectPlayer(Landroid/app/Activity;Z)V
    .locals 5
    .parameter "activity"
    .parameter "autoSearch"

    .prologue
    const/4 v4, 0x0

    .line 600
    const-string v2, "DMCHelper"

    const-string v3, "[launchSelectPlayer]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    if-nez p0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 604
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 605
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 606
    const-string v2, "com.htc.dmc.ACTION_AUTO_SEARCH_RENDERER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    :goto_1
    const-string v2, "cookie"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 611
    const-string v2, "filter"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    const-string v2, "directmode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    const/16 v2, 0x1398

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DMCHelper"

    const-string v3, "[launchSelectPlayer]: start DMR list activity fail"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 608
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "com.htc.dmc"

    const-string v3, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 15
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "type"
    .parameter "mode"
    .parameter "params"
    .parameter "isVideo"

    .prologue
    .line 196
    const-string v12, "DMCHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launch server DMC. dmr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", server "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", content "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    const/4 v8, 0x3

    .line 202
    .local v8, interval:I
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "slide_show_duration_setting"

    const-string v14, "3"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 209
    :goto_0
    const-wide/16 v10, -0x1

    .local v10, startIdx:J
    const-wide/16 v5, -0x1

    .line 210
    .local v5, endIdx:J
    const/4 v3, 0x0

    .line 211
    .local v3, direction:I
    const/4 v9, 0x0

    .line 213
    .local v9, location:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 215
    const-string v12, "startIdx"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 216
    const-string v12, "endIdx"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 217
    const-string v12, "direction"

    const/4 v13, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 218
    const-string v12, "location"

    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 220
    const-string v12, "tab_default"

    const v13, 0x7f0a00b5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v7, intent:Landroid/content/Intent;
    const-string v12, "Render"

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v12, "Server"

    move-object/from16 v0, p2

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v12, "container"

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v12, "cookie"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v12, "Mode"

    move/from16 v0, p6

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v12, "content"

    move-object/from16 v0, p4

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v12, "startIdx"

    invoke-virtual {v7, v12, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    const-string v12, "endIdx"

    invoke-virtual {v7, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    const-string v12, "direction"

    invoke-virtual {v7, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    const-string v12, "Extras"

    move-object/from16 v0, p7

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    const-string v12, "interval"

    invoke-virtual {v7, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    if-eqz v9, :cond_1

    .line 236
    const-string v12, "filepath"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    :cond_1
    if-eqz p8, :cond_3

    .line 240
    const-string v12, "DMCHelper"

    const-string v13, "[HTCAlbum][DMCHelper][launchServerDMC]: launch Video DMC."

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v12, "com.htc.video.dmc.VideoDMC"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v12, "dmc_mode"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    :goto_1
    const/high16 v12, 0x400

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 256
    :try_start_1
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    const-string v12, "DMCHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Finish activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 268
    .local v1, actParent:Landroid/app/Activity;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 269
    .local v2, actTop:Landroid/app/Activity;
    :goto_2
    if-nez v2, :cond_5

    if-nez v1, :cond_2

    move-object v1, p0

    .line 270
    :cond_2
    :goto_3
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 271
    .end local v1           #actParent:Landroid/app/Activity;
    .end local v2           #actTop:Landroid/app/Activity;
    :goto_4
    return-void

    .line 247
    :cond_3
    const-string v12, "DMCHelper"

    const-string v13, "[HTCAlbum][DMCHelper][launchServerDMC]: launch Photo DMC."

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v12, "com.htc.album"

    const-string v13, "com.htc.album.TabPluginDLNA.ActivityPhotoDMC"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v12, "dmc_mode"

    const/4 v13, 0x2

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 258
    :catch_0
    move-exception v4

    .line 260
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "DMCHelper"

    const-string v13, "[DMCHelper][launchServerDMC]: start dmc activity fail"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 268
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #actParent:Landroid/app/Activity;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2       #actTop:Landroid/app/Activity;
    :cond_5
    move-object v1, v2

    .line 269
    goto :goto_3

    .line 204
    .end local v1           #actParent:Landroid/app/Activity;
    .end local v2           #actTop:Landroid/app/Activity;
    .end local v3           #direction:I
    .end local v5           #endIdx:J
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #location:Ljava/lang/String;
    .end local v10           #startIdx:J
    :catch_1
    move-exception v12

    goto/16 :goto_0
.end method

.method public static pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V
    .locals 7
    .parameter "activity"
    .parameter "serverType"
    .parameter "resultMsgId"
    .parameter "inDirectMode"
    .parameter "param"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 58
    if-nez p0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 60
    :cond_0
    sput-object p4, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, filter:I
    and-int/lit8 v5, p1, 0x1

    if-ne v5, v3, :cond_1

    .line 64
    or-int/lit8 v1, v1, 0x2

    .line 65
    :cond_1
    and-int/lit8 v5, p1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 66
    or-int/lit8 v1, v1, 0x4

    .line 68
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.htc.dmc"

    const-string v6, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v5, "cookie"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v5, "filter"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string v5, "directmode"

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    :try_start_0
    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMCHelper"

    const-string v4, "start DMR list activity fail"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    move v3, v4

    .line 72
    goto :goto_1
.end method

.method public static setDMR(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "dmr"

    .prologue
    .line 626
    sput-object p1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    .line 628
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 629
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 632
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 634
    if-nez p1, :cond_2

    .line 635
    const-string v2, "DMR"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 639
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 637
    :cond_2
    const-string v2, "DMR"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setDMS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "dms"

    .prologue
    .line 659
    sput-object p1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    .line 661
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 662
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 665
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 667
    if-nez p1, :cond_2

    .line 668
    const-string v2, "DMS"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 672
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 670
    :cond_2
    const-string v2, "DMS"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setFilterCap(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "filterCap"

    .prologue
    .line 692
    sput p1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    .line 694
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 695
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 698
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 700
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 701
    const-string v2, "FilterCap"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 705
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 703
    :cond_2
    const-string v2, "FilterCap"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setInDirect(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "inDirect"

    .prologue
    .line 725
    sput-boolean p1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    .line 727
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 728
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 731
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 733
    const-string v2, "InDirect"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 735
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setRunningDMRRes(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 4
    .parameter "context"
    .parameter "renderer"
    .parameter "res"

    .prologue
    .line 758
    const/4 v0, 0x0

    .line 761
    .local v0, bRet:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setCurrentDmrPhotoRes(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, result:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 769
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return v0

    .line 764
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static shouldPlayOnTV(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)Z
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 364
    :try_start_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const-string v1, "DMCHelper"

    const-string v2, "[shouldPlayOnTV] TV alreay on, launch DMC now!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onTVReadyToPlay()V

    .line 368
    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    .line 371
    :cond_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->shouldPlayOnTV(Landroid/content/Context;)Z

    move-result v0

    .line 372
    .local v0, bRet:Z
    const-string v1, "DMCHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[shouldPlayOnTV] Check should play on TV, bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v0           #bRet:Z
    :catch_0
    move-exception v1

    .line 380
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static turnOnTV(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 387
    :try_start_0
    const-string v1, "DMCHelper"

    const-string v2, "[turnOnTV] mirrorNow"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 392
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->mirrorNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    const/4 v1, 0x1

    .line 400
    .end local v0           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return v1

    .line 395
    :catch_0
    move-exception v1

    .line 400
    const/4 v1, 0x0

    goto :goto_0
.end method
