.class Lcom/htc/album/AlbumUtility/ParallaxDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PhotoParallaxManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 313
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 314
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->close()V

    .line 322
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 323
    return-void
.end method

.method public getDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 339
    const-string v0, "CREATE TABLE IF NOT EXISTS parallax (datapath TEXT PRIMARY KEY,createtime TEXT ,alignment TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 350
    if-eq p2, p3, :cond_0

    .line 351
    const-string v0, "DROP TABLE IF EXISTS parallax"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 355
    :cond_0
    return-void
.end method
