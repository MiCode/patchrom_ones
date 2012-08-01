.class Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;
.super Landroid/os/AsyncTask;
.source "DMCOnlineImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncDecodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field RESULT_FAIL:I

.field RESULT_SUCCESS:I

.field private final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mIsCancel:Z

.field mIsException:Z

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 328
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->this$0:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 317
    const-string v0, "[DMCProvider][DecodeTask]"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->TAG:Ljava/lang/String;

    .line 319
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mContext:Landroid/content/Context;

    .line 320
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mUri:Landroid/net/Uri;

    .line 321
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mIsException:Z

    .line 322
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mIsCancel:Z

    .line 324
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->RESULT_SUCCESS:I

    .line 325
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->RESULT_FAIL:I

    .line 329
    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mContext:Landroid/content/Context;

    .line 330
    iput-object p3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mUri:Landroid/net/Uri;

    .line 331
    return-void
.end method

.method private decodeBySKIA()Z
    .locals 3

    .prologue
    .line 388
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 389
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 391
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    return v2
.end method

.method private decodeByScalado()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mIsCancel:Z

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mIsException:Z

    .line 356
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->RESULT_FAIL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->decodeBySKIA()Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->RESULT_FAIL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->RESULT_SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 315
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 369
    const-string v0, "[DMCProvider][DecodeTask]"

    const-string v1, "KA>>> [DMCProvider][DMCDecodeTask]: onCancelled"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mIsCancel:Z

    .line 372
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 315
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, bInitresult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v0, 0x1

    .line 345
    :cond_0
    if-nez v0, :cond_1

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->mIsCancel:Z

    .line 348
    :cond_1
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 315
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
