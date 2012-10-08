.class public Lcom/htc/album/SocialNetworkManager/DataPluginHelper;
.super Ljava/lang/Object;
.source "DataPluginHelper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DataPluginHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlbumListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 74
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, classes:[Ljava/lang/String;
    array-length v9, v1

    if-eq v9, v10, :cond_0

    move-object v4, v8

    .line 128
    :goto_0
    return-object v4

    .line 77
    :cond_0
    const/4 v4, 0x0

    .line 79
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    const/4 v7, 0x0

    .line 82
    .local v7, pkgContext:Landroid/content/Context;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v1, v9

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 93
    :goto_1
    if-nez v7, :cond_1

    move-object v4, v8

    goto :goto_0

    .line 86
    :catch_0
    move-exception v5

    .line 90
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][DataPluginHelper][createAlbumListDataPlugin]: 1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 96
    .local v6, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 99
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v1, v8

    invoke-virtual {v6, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 108
    :goto_2
    const/4 v3, 0x0

    .line 111
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    const/4 v8, 0x2

    :try_start_2
    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 120
    :goto_3
    const/4 v8, 0x2

    :try_start_3
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    move-object v4, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 101
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    :catch_1
    move-exception v5

    .line 105
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createAlbumListDataPlugin]: 2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 114
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    :catch_2
    move-exception v5

    .line 116
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createAlbumListDataPlugin]: 3: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 122
    .end local v5           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 124
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createAlbumListDataPlugin]: 4: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static createFriendListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    .locals 13
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    .line 20
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, classes:[Ljava/lang/String;
    array-length v9, v1

    if-eq v9, v12, :cond_0

    .line 24
    const-string v9, "DataPluginHelper"

    const-string v10, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits classes"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 69
    :goto_0
    return-object v4

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 30
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    const/4 v7, 0x0

    .line 33
    .local v7, pkgContext:Landroid/content/Context;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v1, v9

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 42
    :goto_1
    if-nez v7, :cond_1

    move-object v4, v8

    goto :goto_0

    .line 37
    :catch_0
    move-exception v5

    .line 39
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits createPackageContext: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 44
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 45
    .local v6, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 47
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v1, v8

    invoke-virtual {v6, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 52
    :goto_2
    const/4 v3, 0x0

    .line 55
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    const/4 v8, 0x2

    :try_start_2
    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 63
    :goto_3
    const/4 v8, 0x2

    :try_start_3
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    move-object v4, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 48
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    :catch_1
    move-exception v5

    .line 49
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits loadClass: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 57
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    :catch_2
    move-exception v5

    .line 59
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits getConstructor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 65
    .end local v5           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 67
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits newInstance: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 170
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 202
    :goto_0
    return-object v4

    .line 173
    :cond_0
    const/4 v4, 0x0

    .line 175
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    const/4 v8, 0x0

    .line 177
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 184
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 180
    :catch_0
    move-exception v6

    .line 181
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 187
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 189
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 196
    :goto_2
    const/4 v9, 0x3

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 197
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 190
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;>;"
    :catch_1
    move-exception v6

    .line 191
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 198
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 199
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    const-string v10, "call constructor fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createThumbPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 133
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 165
    :goto_0
    return-object v4

    .line 136
    :cond_0
    const/4 v4, 0x0

    .line 138
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    const/4 v8, 0x0

    .line 140
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 147
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 143
    :catch_0
    move-exception v6

    .line 144
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 150
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 152
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 159
    :goto_2
    const/4 v9, 0x3

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 160
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 153
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;>;"
    :catch_1
    move-exception v6

    .line 154
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 161
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 162
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "call constructor fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createUploadEditorDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 207
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 239
    :goto_0
    return-object v4

    .line 210
    :cond_0
    const/4 v4, 0x0

    .line 212
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;
    const/4 v8, 0x0

    .line 214
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 221
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 217
    :catch_0
    move-exception v6

    .line 218
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 224
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 226
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 233
    :goto_2
    const/4 v9, 0x3

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 234
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 227
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;>;"
    :catch_1
    move-exception v6

    .line 228
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 235
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 236
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    const-string v10, "call constructor fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
