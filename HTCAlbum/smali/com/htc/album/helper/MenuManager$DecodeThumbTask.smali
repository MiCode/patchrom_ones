.class public Lcom/htc/album/helper/MenuManager$DecodeThumbTask;
.super Landroid/os/AsyncTask;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodeThumbTask"
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


# static fields
.field public static final MODE_IIMAGE:I = 0x1

.field public static final MODE_URI:I = 0x2


# instance fields
.field private curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private imageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDetailParams:Lcom/htc/album/DetailDlgParams;

.field private mIsCancelUpdate:Z

.field private mMode:I

.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/album/DetailDlgParams;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "iView"
    .parameter "dp"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3187
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3170
    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mContext:Landroid/content/Context;

    .line 3171
    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3172
    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    .line 3173
    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    .line 3174
    iput v1, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mMode:I

    .line 3175
    iput-boolean v1, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mIsCancelUpdate:Z

    .line 3188
    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mContext:Landroid/content/Context;

    .line 3189
    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    .line 3190
    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    .line 3191
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mMode:I

    .line 3192
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "iView"
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3179
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3170
    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mContext:Landroid/content/Context;

    .line 3171
    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3172
    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    .line 3173
    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    .line 3174
    iput v1, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mMode:I

    .line 3175
    iput-boolean v1, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mIsCancelUpdate:Z

    .line 3180
    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mContext:Landroid/content/Context;

    .line 3181
    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    .line 3182
    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3183
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mMode:I

    .line 3184
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 3269
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[HTCAlbum][DecodeThumbTask][doInBackground]: doInBackground +"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3280
    iget v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mMode:I

    if-ne v5, v7, :cond_6

    .line 3283
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    instance-of v5, v5, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 3285
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/htc/album/helper/MenuManager;->access$302(Lcom/htc/album/helper/MenuManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3348
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[HTCAlbum][DecodeThumbTask][doInBackground]: doInBackground -"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    return-object v5

    .line 3289
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3291
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 3294
    const-string v5, "image/jps"

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3296
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3297
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5, v6, v7}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3298
    .local v4, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3299
    const/4 v0, 0x0

    .line 3300
    move-object v0, v4

    .line 3312
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/htc/album/AlbumUtility/Camera_Util;->compressToMiniThumbnail(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/htc/album/helper/MenuManager;->access$302(Lcom/htc/album/helper/MenuManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3320
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 3321
    .local v1, ex:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    #setter for: Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;
    invoke-static {v5, v10}, Lcom/htc/album/helper/MenuManager;->access$302(Lcom/htc/album/helper/MenuManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3322
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[HTCAlbum][DecodeThumbTask][doInBackground]: MODE_IIMAGE decode NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3302
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_2
    const-string v5, "video/3gpp-3d"

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "video/mp4-3d"

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3305
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3306
    .restart local v2       #r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5, v6, v7}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3307
    .restart local v4       #thumb:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3308
    const/4 v0, 0x0

    .line 3309
    move-object v0, v4

    goto :goto_1

    .line 3316
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[showItemDetails] Bitmap curImage.thumbBitmap is NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    const/4 v6, 0x0

    #setter for: Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/htc/album/helper/MenuManager;->access$302(Lcom/htc/album/helper/MenuManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3325
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_6
    iget v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 3328
    :try_start_3
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v5}, Lcom/htc/album/DetailDlgParams;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    const-string v6, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    if-eq v5, v6, :cond_0

    .line 3330
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v5}, Lcom/htc/album/DetailDlgParams;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    .line 3331
    .local v3, s:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/htc/album/DetailDlgParams;->getBitmapInFD(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3332
    .restart local v0       #b:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/htc/album/AlbumUtility/Camera_Util;->compressToMiniThumbnail(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/htc/album/helper/MenuManager;->access$302(Lcom/htc/album/helper/MenuManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3333
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 3335
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #s:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3336
    .restart local v1       #ex:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    #setter for: Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;
    invoke-static {v5, v10}, Lcom/htc/album/helper/MenuManager;->access$302(Lcom/htc/album/helper/MenuManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3337
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[HTCAlbum][DecodeThumbTask][doInBackground]: MODE_URI decode NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3342
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p0, v7}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->cancel(Z)Z

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3162
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 3224
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][DecodeThumbTask][onCancelled]: onCancelled +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mIsCancelUpdate:Z

    .line 3226
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][DecodeThumbTask][onCancelled]: onCancelled -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 3234
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][DecodeThumbTask][onPostExecute]: onPostExecute +"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    iget-boolean v2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mIsCancelUpdate:Z

    if-eqz v2, :cond_0

    .line 3238
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][DecodeThumbTask][onPostExecute]: cancel !!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    :goto_0
    return-void

    .line 3245
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 3247
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/album/helper/MenuManager;->access$300(Lcom/htc/album/helper/MenuManager;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/opensense2/album/util/BitmapUtil2;->isUsableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 3248
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/htc/album/helper/MenuManager;->access$300(Lcom/htc/album/helper/MenuManager;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    #calls: Lcom/htc/album/helper/MenuManager;->setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/album/helper/MenuManager;->access$400(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3256
    :goto_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3257
    .local v1, showMainView:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3258
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3264
    .end local v1           #showMainView:Landroid/view/animation/AlphaAnimation;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][DecodeThumbTask][onPostExecute]: onPostExecute -"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3251
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3252
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3260
    :catch_0
    move-exception v0

    .line 3261
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][DecodeThumbTask][onPostExecute]: setImageResource NG !"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3254
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3162
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3196
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][DecodeThumbTask]: onPreExecute +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    iget v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mMode:I

    if-ne v0, v2, :cond_2

    .line 3200
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-nez v0, :cond_1

    .line 3202
    :cond_0
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][DecodeThumbTask][onPreExecute]: init MODE_IIMAGE NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    invoke-virtual {p0, v2}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->cancel(Z)Z

    .line 3220
    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][DecodeThumbTask]: onPreExecute -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    return-void

    .line 3206
    :cond_2
    iget v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 3208
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    if-nez v0, :cond_1

    .line 3210
    :cond_3
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][DecodeThumbTask][onPreExecute]: init MODE_URI NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    invoke-virtual {p0, v2}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->cancel(Z)Z

    goto :goto_0

    .line 3216
    :cond_4
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][DecodeThumbTask][onPreExecute]: init NG but shouldn\'t run to here !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    invoke-virtual {p0, v2}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->cancel(Z)Z

    goto :goto_0
.end method
