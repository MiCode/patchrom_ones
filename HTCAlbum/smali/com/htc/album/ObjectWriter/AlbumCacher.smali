.class public Lcom/htc/album/ObjectWriter/AlbumCacher;
.super Ljava/lang/Object;
.source "AlbumCacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;
    }
.end annotation


# static fields
.field public static final CACHE_ACTIVEUSER:Ljava/lang/String; = ".auser"

.field public static final CACHE_LOCAL:Ljava/lang/String; = "local"

.field public static final CURRENT_VERSION:I = 0x1

.field public static final EXTENSION_CACHEALBUMLIST:Ljava/lang/String; = ".alist"

.field public static final EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String; = ".fflist"

.field public static final EXTENSION_CACHEFOLDERLIST:Ljava/lang/String; = ".flist"

.field public static final EXTENSION_CACHEFRIENDLIST:Ljava/lang/String; = ".clist"

.field public static final EXTENSION_CACHEPHOTOLIST:Ljava/lang/String; = ".plist"

.field public static final EXTENSION_CACHEPOMLIST:Ljava/lang/String; = ".pomlist"

.field public static final EXTENSION_CACHERECENTLIST:Ljava/lang/String; = ".ruplist"

.field public static final EXTENSION_CACHERECENTVLIST:Ljava/lang/String; = ".ruvlist"

.field private static final LOG_TAG:Ljava/lang/String; = "AlbumCacher"

.field private static mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method public static isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 38
    const/4 v0, 0x1

    .line 39
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 40
    .local v3, fileIS:Ljava/io/FileInputStream;
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    .line 64
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 43
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, szFileName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 54
    :goto_1
    if-eqz v3, :cond_2

    .line 57
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :cond_2
    :goto_2
    const-string v5, "AlbumCacher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumCacher][isFileCacheExist]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 64
    .restart local v1       #bResult:I
    goto :goto_0

    .line 48
    .end local v1           #bResult:I
    :catch_0
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 51
    const-string v5, "AlbumCacher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumCacher][isFileCacheExist] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 60
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static declared-synchronized readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    const-class v15, Lcom/htc/album/ObjectWriter/AlbumCacher;

    monitor-enter v15

    const/4 v10, 0x0

    .line 120
    .local v10, isVersionChange:Z
    const/4 v8, 0x0

    .line 121
    .local v8, in:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 122
    .local v1, abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :try_start_0
    const-string v14, "AlbumCacher"

    const-string v16, "[HTCAlbum][AlbumCacher][readCache]: Begin"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v1

    .line 176
    .end local v1           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .local v2, abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :goto_0
    monitor-exit v15

    return-object v2

    .line 127
    .end local v2           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v1       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_1
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 131
    .local v12, szFileName:Ljava/lang/String;
    :try_start_2
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    .end local v8           #in:Ljava/io/BufferedReader;
    .local v9, in:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, header:Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, tmp:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 136
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 162
    .end local v3           #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #header:Ljava/lang/String;
    .end local v13           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v8, v9

    .line 164
    .end local v9           #in:Ljava/io/BufferedReader;
    .local v4, e:Ljava/lang/Exception;
    .restart local v8       #in:Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v14, "AlbumCacher"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[HTCAlbum][AlbumCacher][readCache] Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    .end local v4           #e:Ljava/lang/Exception;
    :goto_3
    if-eqz v8, :cond_2

    .line 169
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 175
    :cond_2
    :goto_4
    :try_start_6
    const-string v14, "AlbumCacher"

    const-string v16, "[HTCAlbum][AlbumCacher][readCache]: End"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v2, v1

    .line 176
    .end local v1           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v2       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    goto :goto_0

    .line 138
    .end local v2           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v1       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v3       #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #header:Ljava/lang/String;
    .restart local v9       #in:Ljava/io/BufferedReader;
    .restart local v13       #tmp:Ljava/lang/String;
    :cond_3
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 141
    if-eqz v6, :cond_4

    const-string v14, "VERSION:"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 142
    :cond_4
    const-string v14, "AlbumCacher"

    const-string v16, "[HTCAlbum][AlbumCacher][readCache]: Wrong Header"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    move-object v2, v1

    .line 143
    .end local v1           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v2       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    goto/16 :goto_0

    .line 146
    .end local v2           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v1       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v9       #in:Ljava/io/BufferedReader;
    :cond_5
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 148
    .local v5, fileVer:I
    const/4 v14, 0x1

    if-eq v5, v14, :cond_6

    .line 149
    const/4 v10, 0x1

    .line 150
    const-string v14, "AlbumCacher"

    const-string v16, "[HTCAlbum][AlbumCacher][readCache]: Version Change"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 155
    .end local v1           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v2       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_7

    .line 156
    new-instance v11, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-direct {v11}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>()V

    .line 157
    .local v11, listMember:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/16 v16, 0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v11, v10, v0, v5, v14}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->readFrom(ZIILjava/lang/String;)V

    .line 158
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 160
    .end local v11           #listMember:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    :cond_7
    const-string v14, "AlbumCacher"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[HTCAlbum][AlbumCacher][readCache]: Successful: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object v1, v2

    .end local v2           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v1       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    move-object v8, v9

    .line 165
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 170
    .end local v3           #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #fileVer:I
    .end local v6           #header:Ljava/lang/String;
    .end local v7           #i:I
    .end local v13           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 172
    .local v4, e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 116
    .end local v4           #e:Ljava/io/IOException;
    .end local v12           #szFileName:Ljava/lang/String;
    :catchall_0
    move-exception v14

    :goto_6
    monitor-exit v15

    throw v14

    .line 162
    .restart local v12       #szFileName:Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_2

    .end local v1           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v2       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v3       #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #fileVer:I
    .restart local v6       #header:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v9       #in:Ljava/io/BufferedReader;
    .restart local v13       #tmp:Ljava/lang/String;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v1       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 116
    .end local v3           #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #fileVer:I
    .end local v6           #header:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #in:Ljava/io/BufferedReader;
    .end local v13           #tmp:Ljava/lang/String;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    goto :goto_6

    .end local v1           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v2       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v3       #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #fileVer:I
    .restart local v6       #header:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v9       #in:Ljava/io/BufferedReader;
    .restart local v13       #tmp:Ljava/lang/String;
    :catchall_2
    move-exception v14

    move-object v1, v2

    .end local v2           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v1       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method public static final updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 1
    .parameter "cxt"
    .parameter "bundle"
    .parameter "mediaType"

    .prologue
    .line 181
    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->cancel()V

    .line 185
    :cond_0
    new-instance v0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    sput-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    .line 186
    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->start()V

    .line 187
    return-void
.end method

.method public static declared-synchronized writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter
    .parameter "szExtension"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, objList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const-class v7, Lcom/htc/album/ObjectWriter/AlbumCacher;

    monitor-enter v7

    const/4 v2, 0x0

    .line 71
    .local v2, fileOS:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 73
    .local v4, subObject:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    :try_start_0
    const-string v6, "AlbumCacher"

    const-string v8, "[HTCAlbum][AlbumCacher][writeCache]: Begin"

    invoke-static {v6, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 77
    :cond_1
    const/4 v5, 0x0

    .line 78
    .local v5, szFileName:Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 82
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 84
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, "VERSION:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 86
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 87
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-object v4, v0

    .line 88
    if-nez v4, :cond_2

    .line 86
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    :cond_2
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 91
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->toFormatedString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 96
    .end local v3           #i:I
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "AlbumCacher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][AlbumCacher][writeCache] Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .end local v1           #e:Ljava/lang/Exception;
    :goto_3
    if-eqz v2, :cond_3

    .line 104
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 110
    :cond_3
    :goto_4
    :try_start_5
    const-string v6, "AlbumCacher"

    const-string v8, "[HTCAlbum][AlbumCacher][writeCache]: End"

    invoke-static {v6, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 70
    .end local v5           #szFileName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 93
    .restart local v3       #i:I
    .restart local v5       #szFileName:Ljava/lang/String;
    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 94
    const-string v6, "AlbumCacher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][AlbumCacher][writeCache]: Successful: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 105
    .end local v3           #i:I
    :catch_1
    move-exception v1

    .line 107
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method
