.class public Lcom/htc/album/helper/FastCameraImagePreviewHelper;
.super Ljava/lang/Object;
.source "FastCameraImagePreviewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_SHOT_002_COVER_JPG:Ljava/lang/String; = "002_COVER.jpg"

.field private static final CONTINUOUS_SHOT_DEFAULT_COVER_FILE_NAME:Ljava/lang/String; = "/IMAG0002_COVER.jpg"

.field private static final CONTINUOUS_SHOT_REGEXP_DEFAULT_COVER_PATH:Ljava/lang/String; = "(.*IMAG\\d+_BURST)\\d+.*"

.field public static final KEY_BURST_SHOT_EXPAND:Ljava/lang/String; = "FastCameraImagePreviewHelper_key_burst_shot_expand"

.field public static final KEY_CAMERA_FILE_PATH:Ljava/lang/String; = "camera_last_file_path"

.field public static final KEY_CAMERA_MIMETYPE:Ljava/lang/String; = "camera_last_file_mime"

.field public static final KEY_FILE_PATH:Ljava/lang/String; = "FastCameraImagePreviewHelper_key_file_path"

.field private static final TAG:Ljava/lang/String; = "FastCameraImagePreviewHelper"

.field private static sContinuousShotCoverPattern:Ljava/util/regex/Pattern;

.field private static sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static declared-synchronized getContinuousShotCoverPattern()Ljava/util/regex/Pattern;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sContinuousShotCoverPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "(.*IMAG\\d+_BURST)\\d+_COVER.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sContinuousShotCoverPattern:Ljava/util/regex/Pattern;

    .line 45
    :cond_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sContinuousShotCoverPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;-><init>()V

    sput-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    .line 37
    :cond_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLatestPhotoInCameraShot(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "imageFilePath"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    .line 128
    :cond_1
    :goto_0
    return v2

    .line 119
    :cond_2
    new-instance v1, Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;

    invoke-direct {v1}, Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;-><init>()V

    .line 120
    .local v1, rotateInfo:Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;
    invoke-direct {p0, p1, v1}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->queryLatestPhotoInCameraShot(Landroid/content/Context;Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;)V

    .line 122
    iget-object v0, v1, Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;->filePath:Ljava/lang/String;

    .line 124
    .local v0, queryPath:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v2, v4, :cond_1

    :cond_3
    move v2, v3

    .line 128
    goto :goto_0
.end method

.method private queryLatestPhotoInCameraShot(Landroid/content/Context;Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;)V
    .locals 12
    .parameter "context"
    .parameter "ri"

    .prologue
    const/4 v11, 0x1

    .line 72
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v9, 0x0

    .line 75
    .local v9, queryPath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 77
    .local v8, orientation:I
    const/4 v6, 0x0

    .line 79
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryWhere(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, where:Ljava/lang/String;
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryArgs(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, args:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "_id"

    aput-object v10, v2, v5

    const/4 v5, 0x1

    const-string v10, "_data"

    aput-object v10, v2, v5

    const/4 v5, 0x2

    const-string v10, "orientation"

    aput-object v10, v2, v5

    const-string v5, "datetaken DESC, _data DESC LIMIT 1"

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    if-eqz v6, :cond_2

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v11, v0, :cond_2

    .line 90
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 91
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 107
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_3
    const/4 v6, 0x0

    .line 111
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    :goto_1
    iput-object v9, p2, Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;->filePath:Ljava/lang/String;

    .line 112
    iput v8, p2, Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;->orientation:I

    goto :goto_0

    .line 101
    :catch_0
    move-exception v7

    .line 103
    .local v7, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 104
    const/4 v8, 0x0

    .line 107
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_4
    const/4 v6, 0x0

    .line 109
    goto :goto_1

    .line 107
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_5
    const/4 v6, 0x0

    throw v0
.end method

.method private updateRotationInformation(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6
    .parameter "context"
    .parameter "imageFilePath"
    .parameter "rotateDegree"
    .parameter "needCheckCameraShotLatest"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v4, 0x1

    if-ne v4, p4, :cond_2

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->isLatestPhotoInCameraShot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 158
    .local v1, isLatest:Z
    if-eqz v1, :cond_0

    .line 167
    .end local v1           #isLatest:Z
    :cond_2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 168
    .local v3, sr:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "FastCameraImagePreviewHelper_key_file_path"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, oldPath:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 172
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    :cond_3
    const-string v4, "FastCameraImagePreviewHelper_key_file_path"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public getCoverImageFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "continuousShotImagePath"

    .prologue
    const/4 v4, 0x1

    .line 58
    const-string v3, "(.*IMAG\\d+_BURST)\\d+.*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 59
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 60
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-ne v4, v3, :cond_0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "002_COVER.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    :goto_0
    return-object p1

    .line 64
    :cond_0
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, changeIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/IMAG0002_COVER.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getRotationInformation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "imageFilePath"

    .prologue
    const/4 v1, 0x0

    .line 182
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    .local v0, sr:Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public updateRotationInformation(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 137
    new-instance v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;

    invoke-direct {v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;-><init>()V

    .line 138
    .local v0, rotateInfo:Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;
    invoke-direct {p0, p1, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->queryLatestPhotoInCameraShot(Landroid/content/Context;Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;)V

    .line 140
    iget-object v1, v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;->filePath:Ljava/lang/String;

    iget v2, v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper$RotationInformation;->orientation:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateRotationInformation(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 141
    return-void
.end method

.method public updateRotationInformation(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "imageFilePath"
    .parameter "rotateDegree"

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateRotationInformation(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 151
    return-void
.end method
