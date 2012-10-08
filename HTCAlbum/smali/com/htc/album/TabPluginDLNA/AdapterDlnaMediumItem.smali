.class public Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "AdapterDlnaMediumItem.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdapterDlnaMediumItem"

.field private static SCREEN_LONG_SIDE_LENGTH:I

.field private static SCREEN_SHORT_SIDE_LENGTH:I


# instance fields
.field private bRefreshSinglePhoto:Z

.field private mHandlerData:Landroid/os/Handler;

.field protected mHandlerUI:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

.field protected mList:Ljava/util/List;

.field protected mSceneType:I

.field protected mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x258

    sput v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 43
    const/16 v0, 0x400

    sput v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/app/Activity;)V

    .line 36
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    .line 37
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 38
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    .line 40
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    .line 45
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    .line 638
    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;-><init>(Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 51
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDisplayDimension()V

    .line 52
    return-void
.end method

.method private getDisplayDimension()V
    .locals 6

    .prologue
    .line 826
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 827
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 828
    .local v2, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 831
    .local v1, height:I
    if-le v2, v1, :cond_0

    .line 834
    sput v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 835
    sput v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    .line 843
    :goto_0
    const-string v3, "AdapterDlnaMediumItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AdapterDlnaMediumItem][getDisplayDimension]nWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    return-void

    .line 839
    :cond_0
    sput v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 840
    sput v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    goto :goto_0
.end method

.method private onRequestPhotoDetail(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 631
    const-string v1, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdapterDlnaMediumItem][onRequestPhotoDetail]... "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 633
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestPhotoDetail(Ljava/lang/String;)Z

    .line 634
    return-void
.end method

.method private requestPhotoDownload(IZ)V
    .locals 9
    .parameter "nIndex"
    .parameter "fullDownload"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 271
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v5, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 276
    .local v1, nCount:I
    if-le v1, p1, :cond_0

    .line 279
    const/4 v3, 0x0

    .line 282
    .local v3, object:Ljava/lang/Object;
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 288
    .end local v3           #object:Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-nez v5, :cond_0

    .line 291
    const/4 v2, -0x1

    .local v2, nIntegrity:I
    move-object v0, v3

    .line 293
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 294
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    if-eqz v0, :cond_0

    .line 297
    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 301
    .local v4, szMediumID:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 303
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v5, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v2

    .line 304
    if-ne v2, v6, :cond_2

    .line 306
    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    .line 307
    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    .line 308
    const-string v5, "AdapterDlnaMediumItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AdapterDlnaMediumItem][requestPhotoDownload]Quality high ready: index :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v5, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getThumbnailState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v2

    .line 314
    if-nez v2, :cond_3

    .line 316
    invoke-virtual {v0, v7}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    .line 317
    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v6}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    .line 318
    const-string v5, "AdapterDlnaMediumItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AdapterDlnaMediumItem][requestPhotoDownload]Quality low ready:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_2
    if-eqz p2, :cond_0

    .line 332
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v5, v6, p1, v8, v4}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->forwardFullDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v5, v6, p1, v8, v4}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->forwardThumbnailDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 284
    .end local v0           #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    .end local v2           #nIntegrity:I
    .end local v4           #szMediumID:Ljava/lang/String;
    .restart local v3       #object:Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V
    .locals 7
    .parameter "mediumInfo"
    .parameter "path"
    .parameter "bthumbnail"

    .prologue
    .line 574
    if-nez p1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    if-eqz p2, :cond_0

    .line 580
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v4, :cond_0

    .line 583
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 584
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 585
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v4, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 586
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 590
    const-string v4, "AdapterDlnaMediumItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][AdapterDlnaMediumItem][setImageSize]:outWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", outHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v2, 0x0

    .line 593
    .local v2, nWidth:I
    const/4 v1, 0x0

    .line 594
    .local v1, nHeight:I
    if-eqz p3, :cond_4

    .line 596
    const-class v4, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    if-ne v4, v5, :cond_2

    .line 598
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 599
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 617
    :goto_1
    const-string v4, "AdapterDlnaMediumItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][AdapterDlnaMediumItem][setImageSize]:nWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :goto_2
    invoke-virtual {p1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setDispalyImageWidth(I)V

    .line 626
    invoke-virtual {p1, v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setDisplayImageHeight(I)V

    goto :goto_0

    .line 603
    :cond_2
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_3

    .line 606
    sget v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    .line 607
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v2

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v1, v4, v5

    goto :goto_1

    .line 612
    :cond_3
    sget v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    .line 613
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v4, v5

    goto :goto_1

    .line 621
    :cond_4
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 622
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2
.end method

.method private syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->isServiceActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->initServerInfo(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStart()V

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public bindDLNAService()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStart()V

    .line 194
    :cond_0
    return-void
.end method

.method public browseNextPage()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowsePageNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onNotifyUpdating(Z)V

    goto :goto_0
.end method

.method public browsePreviousPage()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowsePagePrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onNotifyUpdating(Z)V

    goto :goto_0
.end method

.method protected cancelThumbnailDownloadRequests()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->cancelThumbnailDownloadRequests()V

    goto :goto_0
.end method

.method public destroyController(Ljava/lang/String;)V
    .locals 1
    .parameter "rendererID"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->destroyController(Ljava/lang/String;)V

    .line 780
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDirectoryInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 761
    const/4 v0, 0x0

    .line 763
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "AdapterDlnaMediumItem"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    .local v0, listSize:I
    if-ge p1, v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mediaData:Lcom/htc/sunny2/IMediaData;
    check-cast v1, Lcom/htc/sunny2/IMediaData;

    .line 79
    .end local v0           #listSize:I
    .restart local v1       #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_0
    return-object v1
.end method

.method public getItemIndex(Ljava/lang/String;)I
    .locals 7
    .parameter "contentId"

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, index:I
    if-nez p1, :cond_0

    move v2, v1

    .line 109
    .end local v1           #index:I
    .local v2, index:I
    :goto_0
    return v2

    .line 89
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    if-nez v6, :cond_1

    move v2, v1

    .line 90
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 92
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 93
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_4

    .line 96
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/IMediaData;

    .line 97
    .local v4, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v4, :cond_3

    .line 93
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_3
    instance-of v6, v4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v6, :cond_2

    move-object v3, v4

    .line 102
    check-cast v3, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 104
    .local v3, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v6, v3, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    move v1, v0

    goto :goto_2

    .end local v3           #itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    .end local v4           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_4
    move v2, v1

    .line 109
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0
.end method

.method public getServiceDirectory()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 769
    const/4 v0, 0x0

    .line 771
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServiceDirectory()Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    move-result-object v0

    goto :goto_0
.end method

.method public isServiceActive()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->isServiceActive()Z

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 133
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setRegisterID(I)V

    .line 134
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setRegisterName(Ljava/lang/String;)V

    .line 135
    const-string v2, "AdapterDlnaMediumItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AdapterDlnaMediumItem][onLoadData]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getRegisterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getRegisterID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->PanelManager()Lcom/htc/album/AlbumMain/ActivityPanelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/htc/album/AlbumMain/ActivityPanelManager;->setEnterProcessing(IZ)V

    .line 137
    const-string v2, "AdapterDlnaMediumItem"

    const-string v3, "[AdapterDlnaMediumItem][onLoadData][EnterProcessing]"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "AdapterDlnaMediumItem"

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onLoadData]: begin..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->enableBrowseSyncOnServiceConnected()V

    .line 145
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    .line 146
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setUIHandler(Landroid/os/Handler;)V

    .line 148
    new-instance v2, Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 149
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    sget v3, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    invoke-virtual {v2, v0, v5, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 154
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 155
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setDefaultImageResource(Landroid/content/Context;I)V

    .line 157
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 158
    .local v1, nOrientation:I
    if-ne v5, v1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setMaxDownloadBuffer(I)V

    .line 163
    :goto_0
    invoke-direct {p0, v6, v6}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 166
    const-string v2, "AdapterDlnaMediumItem"

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onLoadData]: end..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 650
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 683
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 653
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onRequestPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 656
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncListComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 659
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncList(Landroid/os/Message;)V

    goto :goto_0

    .line 662
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncPhotoThumbnailComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 665
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 668
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncRecentList(Landroid/os/Message;)V

    goto :goto_0

    .line 671
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;)V

    goto :goto_0

    .line 674
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;)V

    goto :goto_0

    .line 677
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;)V

    goto :goto_0

    .line 680
    :sswitch_9
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;J)V

    goto :goto_0

    .line 650
    nop

    :sswitch_data_0
    .sparse-switch
        0x2767 -> :sswitch_7
        0x4e35 -> :sswitch_0
        0x4e84 -> :sswitch_9
        0x4e88 -> :sswitch_2
        0x4e89 -> :sswitch_4
        0x4e8f -> :sswitch_5
        0x4e94 -> :sswitch_8
        0x4e95 -> :sswitch_1
        0x4e9a -> :sswitch_6
        0x4ea0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 691
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 697
    :cond_0
    return-void
.end method

.method protected onSyncList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 431
    return-void
.end method

.method protected onSyncListComplete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 437
    return-void
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 505
    const-string v0, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdaperDlnaMediuamItem][onSyncPhotoComplete]..."

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    .line 513
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 514
    .local v7, mediumInfoTemp:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v6, 0x0

    .line 515
    .local v6, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v8, 0x0

    .line 517
    .local v8, object:Ljava/lang/Object;
    const/4 v1, 0x0

    .end local v8           #object:Ljava/lang/Object;
    .local v1, nIndex:I
    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .restart local v8       #object:Ljava/lang/Object;
    if-nez v8, :cond_3

    .line 517
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    :cond_3
    instance-of v0, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_2

    move-object v6, v8

    .line 525
    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 526
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v2, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 536
    const-string v0, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoComplete]High quality is already notified"

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_4
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    .line 543
    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    iput-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v0, :cond_5

    .line 549
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v6, v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    .line 557
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoComplete]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 563
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoComplete]: Notify Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v6, v5}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    .line 565
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v9}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    .line 566
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->notifyDataChangedAt(I)V

    goto/16 :goto_0
.end method

.method public onSyncPhotoThumbnailComplete(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 442
    const-string v0, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdaperDlnaMediuamItem][onSyncPhotoThumbnailComplete]..."

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    .line 450
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 451
    .local v7, mediumInfoTemp:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v6, 0x0

    .line 452
    .local v6, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v8, 0x0

    .line 454
    .local v8, object:Ljava/lang/Object;
    const/4 v1, 0x0

    .end local v8           #object:Ljava/lang/Object;
    .local v1, nIndex:I
    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .restart local v8       #object:Ljava/lang/Object;
    if-nez v8, :cond_3

    .line 454
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    :cond_3
    instance-of v0, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_2

    move-object v6, v8

    .line 462
    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 463
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v2, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iput-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 482
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v6, v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    .line 484
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoThumbnailComplete]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 490
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoThumbnailComplete]: Notify Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v6, v5}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    .line 494
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v9}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    .line 495
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->notifyDataChangedAt(I)V

    goto/16 :goto_0
.end method

.method protected onSyncRecentList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 425
    return-void
.end method

.method public onUIUpdateNotify(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onUIUpdateNotify(Landroid/os/Message;J)V
    .locals 2
    .parameter "message"
    .parameter "delayMillis"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 797
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onUnloadData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaMediumItem][onUnloadData]: begin..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 175
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStop()V

    .line 176
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    .line 177
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setUIHandler(Landroid/os/Handler;)V

    .line 178
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDestroy()V

    .line 179
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 181
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->Uninitialize()V

    .line 182
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 187
    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaMediumItem][onUnloadData]: end..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public refreshFolder()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowseFolderThis(Z)Z

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->resetCacheDownloadRequest()V

    .line 720
    :cond_1
    return-void
.end method

.method public refreshSinglePhoto(I)V
    .locals 7
    .parameter "nIndex"

    .prologue
    .line 723
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 724
    .local v1, nCount:I
    if-gt v1, p1, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    const/4 v2, 0x0

    .line 729
    .local v2, object:Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 733
    .end local v2           #object:Ljava/lang/Object;
    :goto_1
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-nez v4, :cond_0

    move-object v0, v2

    .line 735
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 736
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 737
    .local v3, szMediumID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->forwardFullDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    goto :goto_0

    .line 731
    .end local v0           #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    .end local v3           #szMediumID:Ljava/lang/String;
    .restart local v2       #object:Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 702
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    .line 703
    return-void
.end method

.method public setSceneQuality(Z)V
    .locals 4
    .parameter "bThumbOnly"

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, object:Ljava/lang/Object;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    .local v0, nCount:I
    const/4 v1, 0x0

    .end local v2           #object:Ljava/lang/Object;
    .local v1, nIndex:I
    :goto_0
    if-le v0, v1, :cond_0

    .line 122
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 123
    .restart local v2       #object:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v3, :cond_1

    .line 128
    .end local v2           #object:Ljava/lang/Object;
    :cond_0
    return-void

    .line 126
    .restart local v2       #object:Ljava/lang/Object;
    :cond_1
    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setThumbnailOnly(Z)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSceneType(I)V
    .locals 0
    .parameter "nSceneType"

    .prologue
    .line 114
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    .line 115
    return-void
.end method

.method public setScrollState(III)V
    .locals 12
    .parameter "nScrollState"
    .parameter "nIndex"
    .parameter "nVisibleItems"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 218
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v8, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const-string v8, "AdapterDlnaMediumItem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterDlnaMediumItem][setScrollState]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz p1, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->cancelThumbnailDownloadRequests()V

    goto :goto_0

    .line 230
    :cond_2
    const/4 v6, 0x0

    .line 231
    .local v6, object:Ljava/lang/Object;
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 233
    .local v1, nCount:I
    const-class v8, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    iget v9, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    if-ne v8, v9, :cond_6

    .line 235
    if-gez p2, :cond_4

    move v5, v7

    .line 236
    .local v5, nVisibleStartIndex:I
    :goto_1
    move v4, v5

    .line 237
    .local v4, nVisibleEndIndex:I
    if-nez p3, :cond_5

    .line 238
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getMaxDownloadBuffer()I

    move-result v8

    add-int/2addr v4, v8

    .line 242
    :goto_2
    if-gt v1, v4, :cond_3

    .line 243
    move v4, v1

    .line 245
    :cond_3
    move v0, v5

    .local v0, i:I
    :goto_3
    if-ge v0, v4, :cond_0

    .line 247
    invoke-direct {p0, v0, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0           #i:I
    .end local v4           #nVisibleEndIndex:I
    .end local v5           #nVisibleStartIndex:I
    :cond_4
    move v5, p2

    .line 235
    goto :goto_1

    .line 240
    .restart local v4       #nVisibleEndIndex:I
    .restart local v5       #nVisibleStartIndex:I
    :cond_5
    add-int/2addr v4, p3

    goto :goto_2

    .line 250
    .end local v4           #nVisibleEndIndex:I
    .end local v5           #nVisibleStartIndex:I
    :cond_6
    const-class v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    iget v8, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    if-ne v7, v8, :cond_0

    .line 252
    add-int/lit8 v2, p2, -0x1

    .line 253
    .local v2, nIndexLeft:I
    add-int/lit8 v3, p2, 0x1

    .line 255
    .local v3, nIndexRight:I
    if-gt v1, v3, :cond_7

    .line 256
    add-int/lit8 v3, v1, -0x1

    .line 258
    :cond_7
    if-gez v2, :cond_8

    .line 259
    const/4 v2, 0x0

    .line 261
    :cond_8
    invoke-direct {p0, p2, v11}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    .line 262
    if-eq p2, v3, :cond_9

    .line 263
    invoke-direct {p0, v3, v11}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    .line 264
    :cond_9
    if-eq p2, v2, :cond_0

    .line 265
    invoke-direct {p0, v2, v11}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    goto/16 :goto_0
.end method

.method protected syncListItem(Ljava/lang/Object;Z)V
    .locals 14
    .parameter "object"
    .parameter "bAddVirtualMoreItem"

    .prologue
    .line 343
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v11, :cond_1

    .line 420
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 346
    .restart local p1
    :cond_1
    instance-of v11, p1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v11, :cond_0

    .line 349
    const-string v11, "AdapterDlnaMediumItem"

    const-string v12, "[HTCAlbum][AdapterDlnaMediumItem][syncListItem]: begin"

    invoke-static {v11, v12}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local p1
    move/from16 v0, p2

    invoke-virtual {v11, p1, v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scan4MediumItems(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;Z)Z

    .line 352
    const/4 v6, 0x0

    .line 353
    .local v6, mediumInfoNew:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v7, 0x0

    .line 354
    .local v7, mediumInfoOld:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getBrowseList()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 355
    .local v4, listNew:Ljava/util/List;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    .line 357
    .local v5, listOld:Ljava/util/List;
    const/4 v8, 0x0

    .local v8, nIndex:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_6

    .line 359
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v11, :cond_5

    .line 361
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #mediumInfoNew:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 363
    .restart local v6       #mediumInfoNew:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v9, 0x0

    .local v9, nIndex2:I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_4

    .line 365
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v11, :cond_2

    .line 367
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #mediumInfoOld:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 369
    .restart local v7       #mediumInfoOld:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v11, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-nez v11, :cond_3

    .line 363
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 372
    :cond_3
    iget-object v11, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v12, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 375
    iget-object v11, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iput-object v11, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 376
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v6, v11}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    .line 378
    invoke-interface {v5, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 357
    .end local v9           #nIndex2:I
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 383
    :cond_5
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v11, :cond_4

    .line 385
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 386
    .local v10, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0a00bd

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setCenterText(Ljava/lang/String;)V

    .line 387
    const v11, 0x7f020002

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBackground(I)V

    goto :goto_3

    .line 390
    .end local v10           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_6
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 391
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 397
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 400
    :cond_7
    :goto_4
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 402
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 403
    .local v2, entry:Ljava/lang/Object;
    if-eqz v2, :cond_7

    instance-of v11, v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v11, :cond_7

    .line 405
    move-object v0, v2

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    move-object v6, v0

    .line 406
    const-string v11, "0"

    iget-object v12, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 407
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 412
    .end local v2           #entry:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    const-string v11, "AdapterDlnaMediumItem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][AdapterDlnaMediumItem][syncListItem]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v11, "AdapterDlnaMediumItem"

    const-string v12, "[HTCAlbum][AdapterDlnaMediumItem][syncListItem]: end "

    invoke-static {v11, v12}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public unBindDLNAService()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStop()V

    .line 200
    :cond_0
    return-void
.end method
