.class public Lcom/android/camera/io/FileUtility;
.super Ljava/lang/Object;
.source "FileUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/io/FileUtility$4;,
        Lcom/android/camera/io/FileUtility$FileEnumerationCallback;,
        Lcom/android/camera/io/FileUtility$InformationSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtility"

.field private static final m_FileCountCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
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
    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static backupDirectory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "parentDir"
    .parameter "dirName"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 46
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 48
    :cond_0
    const-string v8, "FileUtility"

    const-string v10, "\'parentDir\' or \'dirName\' is NULL"

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 130
    :goto_0
    return v8

    .line 53
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, oldPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, oldDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 57
    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is not existent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    .line 62
    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is not a directory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 63
    goto :goto_0

    .line 67
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ".backup."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, backupDirPrefix:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 69
    .local v1, backupDirPrefixLength:I
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 72
    .local v7, params:[Ljava/lang/Object;
    :try_start_0
    new-instance v8, Lcom/android/camera/io/FileUtility$1;

    invoke-direct {v8, v1, v0}, Lcom/android/camera/io/FileUtility$1;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v8, v7}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    aget-object v8, v7, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 114
    .local v2, backupIndex:I
    const v8, 0x7fffffff

    if-ne v2, v8, :cond_4

    .line 116
    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No available backup location for \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' directory in \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' directory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 117
    goto/16 :goto_0

    .line 108
    .end local v2           #backupIndex:I
    :catch_0
    move-exception v3

    .line 110
    .local v3, ex:Ljava/io/IOException;
    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot find available backup location for \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' directory in \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' directory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 111
    goto/16 :goto_0

    .line 119
    .end local v3           #ex:Ljava/io/IOException;
    .restart local v2       #backupIndex:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 122
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v4, newDir:Ljava/io/File;
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 125
    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot backup \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' to \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 126
    goto/16 :goto_0

    :cond_5
    move v8, v10

    .line 130
    goto/16 :goto_0
.end method

.method public static clearCachedFileCount()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->clearCachedFileCount(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static clearCachedFileCount(Ljava/lang/String;)V
    .locals 9
    .parameter "rootDirectory"

    .prologue
    .line 142
    sget-object v6, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    monitor-enter v6

    .line 144
    :try_start_0
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 146
    if-nez p0, :cond_1

    .line 148
    const-string v5, "FileUtility"

    const-string v7, "clearCachedFileCount() - Clear all cached file count"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 165
    :cond_0
    monitor-exit v6

    .line 166
    return-void

    .line 153
    :cond_1
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 154
    .local v1, directories:[Ljava/lang/String;
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 155
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 157
    .local v2, directory:Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 159
    const-string v5, "FileUtility"

    const-string v7, "clearCachedFileCount() - Clear cached file count for \'"

    const-string v8, "\'"

    invoke-static {v5, v7, v2, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #directories:[Ljava/lang/String;
    .end local v2           #directory:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 173
    if-eqz p0, :cond_0

    .line 177
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createDirectory(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    if-nez p0, :cond_0

    .line 192
    const-string v3, "createDirectory() - path = NULL"

    invoke-static {p0, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return v2

    .line 199
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    const-string v4, "FileUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDirectory() - Create directory \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 205
    goto :goto_0

    .line 207
    :cond_1
    const-string v3, "FileUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDirectory() - Cannot create directory \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v0           #directory:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 217
    .local v1, ex:Ljava/lang/Throwable;
    const-string v3, "FileUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDirectory() - Cannot create directory \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    .end local v1           #ex:Ljava/lang/Throwable;
    .restart local v0       #directory:Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 210
    goto :goto_0

    .line 212
    :cond_3
    const-string v3, "FileUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDirectory() - \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not a directory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static deleteFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .parameter "context"
    .parameter "contentUri"

    .prologue
    .line 228
    invoke-static {p0, p1}, Lcom/android/camera/io/FileUtility;->getFilePathFromContentURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, filePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    if-eqz v1, :cond_0

    .line 238
    invoke-static {v1}, Lcom/android/camera/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/camera/io/FileUtility;->updateCachedFileCount(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    const/4 v2, 0x1

    .line 246
    :goto_0
    return v2

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "FileUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile() - Cannot delete content \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 252
    if-nez p0, :cond_0

    .line 254
    const-string v2, "filePath"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 255
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 261
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    invoke-static {p0}, Lcom/android/camera/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/android/camera/io/FileUtility;->updateCachedFileCount(Ljava/lang/String;I)V

    .line 277
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return v2

    .line 269
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    const-string v2, "FileUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFile() - Cannot delete file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 270
    goto :goto_0

    .line 274
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 276
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "FileUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFile() - Cannot delete file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 277
    goto :goto_0
.end method

.method public static enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z
    .locals 6
    .parameter "directory"
    .parameter "callback"
    .parameter "userState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ls "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 287
    .local v0, lsProcess:Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 288
    .local v2, reader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, name:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 293
    :try_start_0
    invoke-interface {p1, v1, p2}, Lcom/android/camera/io/FileUtility$FileEnumerationCallback;->callback(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 294
    const/4 v3, 0x0

    .line 298
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 301
    :goto_1
    return v3

    .line 298
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 299
    goto :goto_0

    .line 298
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    throw v3

    .line 301
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static forceSyncDiskData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v2, "FileUtility"

    const-string v3, "syncProcess - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "sync"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 312
    .local v1, syncProcess:Ljava/lang/Process;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 313
    const-string v2, "FileUtility"

    const-string v3, "syncProcess - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "FileUtility"

    const-string v3, "The syncProcess has been interrupted!!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFileCount(Ljava/lang/String;)I
    .locals 2
    .parameter "directory"

    .prologue
    .line 371
    const v0, 0x7fffffff

    sget-object v1, Lcom/android/camera/io/FileUtility$InformationSource;->CacheOrFileSystem:Lcom/android/camera/io/FileUtility$InformationSource;

    invoke-static {p0, v0, v1}, Lcom/android/camera/io/FileUtility;->getFileCount(Ljava/lang/String;ILcom/android/camera/io/FileUtility$InformationSource;)I

    move-result v0

    return v0
.end method

.method public static getFileCount(Ljava/lang/String;ILcom/android/camera/io/FileUtility$InformationSource;)I
    .locals 7
    .parameter "directory"
    .parameter "maxFileCount"
    .parameter "infoSource"

    .prologue
    const/4 v3, 0x0

    .line 376
    if-nez p0, :cond_0

    .line 378
    const-string v3, "directory"

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 379
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 383
    :cond_0
    sget-object v4, Lcom/android/camera/io/FileUtility$4;->$SwitchMap$com$android$camera$io$FileUtility$InformationSource:[I

    invoke-virtual {p2}, Lcom/android/camera/io/FileUtility$InformationSource;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 402
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    new-array v1, v4, [I

    .line 403
    .local v1, counter:[I
    new-instance v4, Lcom/android/camera/io/FileUtility$3;

    invoke-direct {v4, p1}, Lcom/android/camera/io/FileUtility$3;-><init>(I)V

    invoke-static {p0, v4, v1}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    .line 420
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :try_start_1
    sget-object v4, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 426
    const/4 v4, 0x0

    :try_start_2
    aget v3, v1, v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 431
    .end local v1           #counter:[I
    :goto_0
    return v3

    .line 387
    :pswitch_0
    sget-object v4, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    monitor-enter v4

    .line 389
    :try_start_3
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 390
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    monitor-exit v4

    goto :goto_0

    .line 392
    .end local v0           #count:Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .restart local v0       #count:Ljava/lang/Integer;
    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 393
    sget-object v4, Lcom/android/camera/io/FileUtility$InformationSource;->Cache:Lcom/android/camera/io/FileUtility$InformationSource;

    if-ne p2, v4, :cond_1

    .line 394
    const/4 v3, -0x1

    goto :goto_0

    .line 423
    .end local v0           #count:Ljava/lang/Integer;
    .restart local v1       #counter:[I
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 428
    .end local v1           #counter:[I
    :catch_0
    move-exception v2

    .line 430
    .local v2, ex:Ljava/io/IOException;
    const-string v4, "FileUtility"

    const-string v5, "getFileCount() - Exception occurred"

    invoke-static {v4, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getFilePathFromContentURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/4 v8, 0x0

    .line 441
    if-nez p0, :cond_0

    .line 443
    const-string v0, "context"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 446
    :cond_0
    if-nez p1, :cond_1

    .line 448
    const-string v0, "contentUri"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 453
    :cond_1
    const/4 v6, 0x0

    .line 457
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 465
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 468
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 479
    if-eqz v6, :cond_2

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v0

    .line 479
    :cond_3
    if-eqz v6, :cond_4

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    goto :goto_0

    .line 472
    :catch_0
    move-exception v7

    .line 474
    .local v7, ex:Ljava/lang/Throwable;
    :try_start_1
    const-string v0, "FileUtility"

    const-string v1, "Exception occurred while querying file path"

    invoke-static {v0, v1, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    if-eqz v6, :cond_5

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v8

    goto :goto_0

    .line 479
    .end local v7           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static isFileExistent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "directory"
    .parameter "fileNamePattern"

    .prologue
    const/4 v4, 0x0

    .line 327
    if-nez p0, :cond_0

    .line 329
    const-string v2, "directory"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'directory\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :cond_0
    if-nez p1, :cond_1

    .line 334
    const-string v2, "fileNamePattern"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 335
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'fileNamePattern\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_1
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    .line 342
    .local v1, result:[Ljava/lang/Boolean;
    :try_start_0
    new-instance v2, Lcom/android/camera/io/FileUtility$2;

    invoke-direct {v2, p1}, Lcom/android/camera/io/FileUtility$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 359
    :catch_0
    move-exception v0

    .line 361
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "FileUtility"

    const-string v3, "Exception occurred while searching files"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static readInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    .line 490
    if-nez p0, :cond_0

    .line 492
    const-string v4, "filePath"

    invoke-static {v4}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 493
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 497
    :cond_0
    const/4 v2, 0x0

    .line 501
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 504
    const-string v5, "FileUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readInteger() - File \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v4

    .line 507
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 509
    const-string v5, "FileUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readInteger() - \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is a directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 524
    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 514
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 515
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 524
    invoke-static {v3}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 517
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 519
    .local v0, ex:Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    const-string v5, "FileUtility"

    const-string v6, "readInteger() - Error"

    invoke-static {v5, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 524
    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 517
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static updateCachedFileCount(Ljava/lang/String;I)V
    .locals 4
    .parameter "directory"
    .parameter "delta"

    .prologue
    .line 534
    if-nez p0, :cond_0

    .line 536
    const-string v1, "directory"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 537
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 539
    :cond_0
    if-nez p1, :cond_1

    .line 549
    :goto_0
    return-void

    .line 543
    :cond_1
    sget-object v2, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    monitor-enter v2

    .line 545
    :try_start_0
    sget-object v1, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 546
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 547
    sget-object v1, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #count:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
