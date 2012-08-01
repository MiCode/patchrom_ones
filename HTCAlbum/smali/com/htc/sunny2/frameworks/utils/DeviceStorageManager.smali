.class public Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;
.super Ljava/lang/Object;
.source "DeviceStorageManager.java"


# static fields
.field public static final FOLDER_CAMERA:Ljava/lang/String; = "/dcim"

.field public static final FOLDER_DOWNLOAD:Ljava/lang/String; = "/download/"

.field public static final FOLDER_DOWNLOADS:Ljava/lang/String; = "/downloads/"

.field public static final FOLDER_SCRIBBLES:Ljava/lang/String; = "/htcscribbles"

.field public static final FOLDER_THUMBNAIL:Ljava/lang/String; = "/Android/data/com.htc.album/.thumbnails/"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final m_bSupportExternalStorage:Z = true

.field private static final m_bSupportInternalStorage:Z = true

.field private static final m_bSupportPhoneStorageS40:Z

.field private static m_szAllDownlaodsPaths:[Ljava/lang/String;

.field private static m_szCameraShotsPaths:[Ljava/lang/String;

.field private static m_szDataDirectoryPath:Ljava/lang/String;

.field private static final m_szDefaultStoragePath:Ljava/lang/String;

.field private static m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

.field private static m_szExternalCameraPath:Ljava/lang/String;

.field private static m_szExternalDownloadPath:Ljava/lang/String;

.field private static m_szExternalDownloadsPath:Ljava/lang/String;

.field private static m_szExternalScribblesPath:Ljava/lang/String;

.field private static final m_szExternalStoragePath:Ljava/lang/String;

.field private static m_szExternalStorageState:Ljava/lang/String;

.field private static m_szExternalThumbnailPath:Ljava/lang/String;

.field private static m_szPhoneCameraPathS40:Ljava/lang/String;

.field private static m_szPhoneDownloadPathS40:Ljava/lang/String;

.field private static m_szPhoneDownloadsPathS40:Ljava/lang/String;

.field private static m_szPhoneScribblesPathS40:Ljava/lang/String;

.field private static final m_szPhoneStoragePathS40:Ljava/lang/String;

.field private static m_szPhoneStorageStateS40:Ljava/lang/String;

.field private static m_szPhoneThumbnailPathS40:Ljava/lang/String;

.field private static m_szRemovableCameraPath:Ljava/lang/String;

.field private static m_szRemovableDownloadPath:Ljava/lang/String;

.field private static m_szRemovableDownloadsPath:Ljava/lang/String;

.field private static m_szRemovableScribblesPath:Ljava/lang/String;

.field private static m_szRemovableStorageDownlaodPaths:[Ljava/lang/String;

.field private static final m_szRemovableStoragePath:Ljava/lang/String;

.field private static m_szRemovableStorageState:Ljava/lang/String;

.field private static m_szRemovableThumbnailPath:Ljava/lang/String;

.field private static final m_uriExternalPhotos:Landroid/net/Uri;

.field private static final m_uriExternalPhotosThumbs:Landroid/net/Uri;

.field private static final m_uriExternalVideos:Landroid/net/Uri;

.field private static final m_uriInternalPhotos:Landroid/net/Uri;

.field private static final m_uriInternalPhotosThumbs:Landroid/net/Uri;

.field private static final m_uriInternalVideos:Landroid/net/Uri;

.field private static final m_uriPhonePhotos:Landroid/net/Uri;

.field private static final m_uriPhonePhotosThumbs:Landroid/net/Uri;

.field private static final m_uriPhoneVideos:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-class v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    .line 27
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    .line 28
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    .line 29
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    .line 31
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotos:Landroid/net/Uri;

    .line 32
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotosThumbs:Landroid/net/Uri;

    .line 33
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhoneVideos:Landroid/net/Uri;

    .line 35
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotos:Landroid/net/Uri;

    .line 36
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotosThumbs:Landroid/net/Uri;

    .line 37
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalVideos:Landroid/net/Uri;

    .line 41
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    sput-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorageS40:Z

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStoragePath:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStoragePathS40:Ljava/lang/String;

    .line 51
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 53
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableThumbnailPath:Ljava/lang/String;

    .line 54
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPathS40:Ljava/lang/String;

    .line 59
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    .line 60
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    .line 61
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageDownlaodPaths:[Ljava/lang/String;

    .line 62
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    .line 63
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    .line 64
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadPath:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadsPath:Ljava/lang/String;

    .line 66
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPathS40:Ljava/lang/String;

    .line 67
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPathS40:Ljava/lang/String;

    .line 76
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    .line 77
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 78
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableCameraPath:Ljava/lang/String;

    .line 79
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPathS40:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableScribblesPath:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStoragePathS40:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneScribblesPathS40:Ljava/lang/String;

    .line 87
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageStateS40:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToMonitorMediaConnect(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 753
    if-nez p0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 756
    :cond_0
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 740
    if-nez p0, :cond_0

    .line 750
    :goto_0
    return-void

    .line 743
    :cond_0
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string v0, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string v0, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addToMonitorMediaScan(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 760
    if-nez p0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAllDownloadsPaths()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 631
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    .line 632
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPaths()[Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, szPaths:[Ljava/lang/String;
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    aget-object v2, v0, v3

    aput-object v2, v1, v3

    .line 634
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    aget-object v2, v0, v4

    aput-object v2, v1, v4

    .line 635
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageDownloadPaths()[Ljava/lang/String;

    move-result-object v0

    .line 636
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v0, v3

    aput-object v3, v1, v2

    .line 637
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v0, v4

    aput-object v3, v1, v2

    .line 638
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadPathS40()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 639
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadsPathS40()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 642
    :cond_0
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    return-object v1
.end method

.method public static getCameraShotsPaths()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 647
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 649
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    .line 650
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 651
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 652
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageCameraPathS40()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 655
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getDataDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalPhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalPhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 530
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 534
    :cond_0
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 551
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 553
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    .line 557
    :cond_0
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadPaths()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 539
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    .line 542
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 543
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadsPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 546
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 562
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    .line 565
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageState(Z)Ljava/lang/String;
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 320
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 330
    .local v0, state:Ljava/lang/String;
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    .line 331
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 332
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 335
    return-object v0
.end method

.method public static getExternalStorageState(ZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "bRefresh"
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 298
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalMediaMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 301
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 302
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, media:Ljava/lang/String;
    const-string v0, "mediaTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanner state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "external"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "checking"

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->setExternalStorageState(Ljava/lang/String;)V

    .line 311
    .end local v7           #media:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 215
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalPhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalPhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalStorageState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 340
    const-string v0, "com.htc.album.action.MEMORY_NOT_FILL"

    .line 342
    .local v0, state:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 343
    const-string v0, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    .line 345
    :cond_0
    return-object v0
.end method

.method public static getInternalVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhonePhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhonePhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhoneStorageCameraPathS40()Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPathS40:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePathS40()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPathS40:Ljava/lang/String;

    .line 589
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPathS40:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadPathS40()Ljava/lang/String;
    .locals 2

    .prologue
    .line 609
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPathS40:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePathS40()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPathS40:Ljava/lang/String;

    .line 612
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPathS40:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadsPathS40()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPathS40:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePathS40()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPathS40:Ljava/lang/String;

    .line 604
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPathS40:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStoragePathS40()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStoragePathS40:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageScribblesPathS40()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneScribblesPathS40:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageStateS40(Z)Ljava/lang/String;
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 280
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageStateS40:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 281
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageStateS40:Ljava/lang/String;

    .line 283
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageStateS40:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageThumbnailPathS40()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPathS40:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePathS40()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPathS40:Ljava/lang/String;

    .line 237
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPathS40:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhoneVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getRemovableStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableCameraPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableCameraPath:Ljava/lang/String;

    .line 573
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 578
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadPath:Ljava/lang/String;

    .line 581
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageDownloadPaths()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 617
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageDownlaodPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageDownlaodPaths:[Ljava/lang/String;

    .line 620
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 621
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageDownloadsPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 624
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageDownlaodPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 594
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadsPath:Ljava/lang/String;

    .line 597
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageState(Z)Ljava/lang/String;
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 271
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 272
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    .line 274
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableThumbnailPath:Ljava/lang/String;

    .line 226
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method private static isActionStorageConnect(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 703
    .local v0, bResult:Z
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    const/4 v0, 0x1

    .line 706
    :cond_0
    return v0
.end method

.method private static isActionStorageDisconnect(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 683
    const/4 v0, 0x0

    .line 685
    .local v0, bResult:Z
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    :cond_0
    const/4 v0, 0x1

    .line 697
    :cond_1
    return v0
.end method

.method public static isAllStorageReady()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady(Z)Z

    move-result v0

    return v0
.end method

.method public static isAllStorageReady(Z)Z
    .locals 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v3, 0x1

    .line 468
    const/4 v0, 0x1

    .line 470
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v1

    if-ne v3, v1, :cond_1

    .line 472
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DeviceStorageManager][isAllStorageReady]: internal error found..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v0, 0x0

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DeviceStorageManager][isAllStorageReady]: external error found..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v0, 0x0

    .line 480
    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorageS40:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReadyS40(Z)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 482
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isExternalMediaMounted()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalMediaMounted(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 365
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 492
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, szStorageState:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isExternalStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 423
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFileOnAllDownloads(Ljava/lang/String;)Z
    .locals 5
    .parameter "filepath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 660
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    move v0, v3

    .line 664
    .local v0, bExist:Z
    :goto_0
    if-nez v0, :cond_2

    .line 666
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageDownloadsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move v0, v3

    .line 670
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 672
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadPathS40()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadsPathS40()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    move v0, v3

    .line 676
    :cond_4
    :goto_2
    return v0

    .end local v0           #bExist:Z
    :cond_5
    move v0, v2

    .line 661
    goto :goto_0

    .restart local v0       #bExist:Z
    :cond_6
    move v0, v2

    .line 666
    goto :goto_1

    :cond_7
    move v0, v2

    .line 672
    goto :goto_2
.end method

.method public static isFileOnPhoneStorageS40(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 521
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorageS40:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePathS40()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInternalStorageStateError()Z
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneMediaMountedS40()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageStateS40(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneStorageReadyS40(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 513
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorageS40:Z

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageStateS40(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageCameraPathS40()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    .line 516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQueryExternalDB(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    const/4 v0, 0x1

    .line 498
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    .line 503
    :cond_1
    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorageS40:Z

    if-ne v1, v0, :cond_2

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReadyS40(Z)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 508
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRemovableMediaMounted()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRemovableMediaMounted(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 376
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRemovableStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 418
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStorageConnected(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 728
    const/4 v1, 0x0

    .line 730
    .local v1, bResult:Z
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isActionStorageConnect(Ljava/lang/String;)Z

    move-result v1

    .line 733
    return v1
.end method

.method public static isStorageDisconnected(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 720
    const/4 v1, 0x0

    .line 722
    .local v1, bResult:Z
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isActionStorageDisconnect(Ljava/lang/String;)Z

    move-result v1

    .line 724
    return v1
.end method

.method public static isStorageDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 712
    .local v0, bResult:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 716
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 715
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isActionStorageDisconnect(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 716
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public static isStorageMediaMounted(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 350
    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaReadOnly(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 355
    const-string v0, "mounted_ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaShared(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 360
    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .parameter "state"
    .parameter "requireWriteAccess"
    .parameter "path"

    .prologue
    .line 447
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    .line 448
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 450
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 453
    const/4 v0, 0x0

    .line 458
    .end local v1           #directory:Ljava/io/File;
    :cond_0
    :goto_0
    return v0

    .line 455
    .restart local v1       #directory:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    goto :goto_0
.end method

.method public static isStorageStateError(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 407
    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bad_removal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nofs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "removed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmountable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportExternalStorage()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportInternalStorage()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPhoneStorageS40()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorageS40:Z

    return v0
.end method

.method public static isSupportPhoneStorageUri()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public static setExternalStorageState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 293
    sput-object p0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public static setRemovableStorageState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 243
    sput-object p0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    .line 244
    return-void
.end method
