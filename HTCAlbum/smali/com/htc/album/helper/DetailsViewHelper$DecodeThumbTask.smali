.class public Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;
.super Landroid/os/AsyncTask;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper;
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

.field private mDetailThumb:Landroid/graphics/Bitmap;

.field private mIsCancelUpdate:Z

.field private mMode:I

.field final synthetic this$0:Lcom/htc/album/helper/DetailsViewHelper;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/album/DetailDlgParams;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "iView"
    .parameter "dp"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1640
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1620
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mContext:Landroid/content/Context;

    .line 1621
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1622
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    .line 1623
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    .line 1624
    iput v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mMode:I

    .line 1625
    iput-boolean v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mIsCancelUpdate:Z

    .line 1626
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;

    .line 1641
    iput-object p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mContext:Landroid/content/Context;

    .line 1642
    iput-object p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    .line 1643
    iput-object p4, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    .line 1644
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mMode:I

    .line 1645
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "iView"
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1632
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1620
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mContext:Landroid/content/Context;

    .line 1621
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1622
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    .line 1623
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    .line 1624
    iput v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mMode:I

    .line 1625
    iput-boolean v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mIsCancelUpdate:Z

    .line 1626
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;

    .line 1633
    iput-object p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mContext:Landroid/content/Context;

    .line 1634
    iput-object p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    .line 1635
    iput-object p4, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1636
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mMode:I

    .line 1637
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1738
    const-string v5, "[DetailsViewHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DecodeThumbTask][doInBackground][+] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mMode:I

    if-ne v5, v8, :cond_6

    .line 1752
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    instance-of v5, v5, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1754
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1824
    :cond_0
    :goto_0
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DecodeThumbTask][doInBackground][-]"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    return-object v5

    .line 1758
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1760
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 1763
    const-string v5, "image/jps"

    iget-object v6, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1765
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1766
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5, v6, v7}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1767
    .local v4, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1768
    const/4 v0, 0x0

    .line 1769
    move-object v0, v4

    .line 1780
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DecodeThumbTask][doInBackground] pre set thumbnail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/htc/album/AlbumUtility/Camera_Util;->compressToMiniThumbnail(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;

    .line 1782
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DecodeThumbTask][doInBackground] set thumbnail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1790
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1791
    .local v1, ex:Ljava/lang/Exception;
    iput-object v10, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;

    .line 1792
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[HTCAlbum][DecodeThumbTask][doInBackground]: MODE_IIMAGE decode NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    const-string v5, "[DetailsViewHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DecodeThumbTask][doInBackground]: ex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1771
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_2
    const-string v5, "video/3gpp-3d"

    iget-object v6, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "video/mp4-3d"

    iget-object v6, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1774
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

    .line 1775
    .restart local v2       #r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5, v6, v7}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1776
    .restart local v4       #thumb:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1777
    const/4 v0, 0x0

    .line 1778
    move-object v0, v4

    goto :goto_1

    .line 1786
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_5
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DecodeThumbTask][doInBackground] Bitmap curImage.thumbBitmap is NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1796
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_6
    iget v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 1799
    :try_start_3
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v5}, Lcom/htc/album/DetailDlgParams;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    const-string v6, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    if-eq v5, v6, :cond_7

    .line 1801
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v5}, Lcom/htc/album/DetailDlgParams;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    .line 1802
    .local v3, s:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/htc/album/DetailDlgParams;->getBitmapInFD(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1803
    .restart local v0       #b:Landroid/graphics/Bitmap;
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DecodeThumbTask][doInBackground] pre set thumbnail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/htc/album/AlbumUtility/Camera_Util;->compressToMiniThumbnail(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;

    .line 1805
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DecodeThumbTask][doInBackground] set thumbnail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1810
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #s:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1811
    .restart local v1       #ex:Ljava/lang/Exception;
    iput-object v10, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;

    .line 1812
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[HTCAlbum][DecodeThumbTask][doInBackground]: MODE_URI decode NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1809
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_7
    :try_start_4
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[HTCAlbum][DecodeThumbTask][doInBackground]:mDetailParams.getThumbnail() == DetailDlgParams.UNKNOWN"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1817
    :cond_8
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[HTCAlbum][DecodeThumbTask][doInBackground]: Unknown mode, Neither MODE_IIMAGE nor MODE_URI"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    invoke-virtual {p0, v8}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->cancel(Z)Z

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1612
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1683
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[DecodeThumbTask][onCancelled][+]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mIsCancelUpdate:Z

    .line 1685
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[DecodeThumbTask][onCancelled][-]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 1693
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DecodeThumbTask][onPostExecute][+]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-boolean v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mIsCancelUpdate:Z

    if-eqz v2, :cond_0

    .line 1697
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DecodeThumbTask][onPostExecute]: cancel !!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    :goto_0
    return-void

    .line 1704
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 1706
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DecodeThumbTask][onPostExecute] prepare to set image."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/htc/opensense2/album/util/BitmapUtil2;->isUsableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1709
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1710
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DecodeThumbTask][onPostExecute] isUsableBitmap and setted."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    :goto_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1723
    .local v1, showMainView:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1724
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    .end local v1           #showMainView:Landroid/view/animation/AlphaAnimation;
    :goto_2
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DecodeThumbTask][onPostExecute][-]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1714
    :cond_1
    :try_start_1
    const-string v2, "[DetailsViewHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DecodeThumbTask][onPostExecute] curImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curImage.isDrm() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1716
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1720
    :goto_3
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DecodeThumbTask][onPostExecute] imageView setted."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[HTCAlbum][DecodeThumbTask][onPostExecute]: setImageResource NG !"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v2, "[DetailsViewHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1718
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f02001d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1727
    :cond_3
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[HTCAlbum][DecodeThumbTask][onPostExecute]: imageView is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1612
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1649
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[DecodeThumbTask][onPreExecute][+]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mMode:I

    if-ne v0, v3, :cond_2

    .line 1653
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-nez v0, :cond_1

    .line 1655
    :cond_0
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[HTCAlbum][DecodeThumbTask][onPreExecute]: init MODE_IIMAGE NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v0, "[DetailsViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mMode = MODE_IIMAGE] mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imageView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->cancel(Z)Z

    .line 1679
    :cond_1
    :goto_0
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[DecodeThumbTask][onPreExecute][-]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    return-void

    .line 1662
    :cond_2
    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1664
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    if-nez v0, :cond_1

    .line 1666
    :cond_3
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[HTCAlbum][DecodeThumbTask][onPreExecute]: init MODE_URI NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string v0, "[DetailsViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mMode == MODE_URI] mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imageView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->imageView:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDetailParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->cancel(Z)Z

    goto :goto_0

    .line 1675
    :cond_4
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[HTCAlbum][DecodeThumbTask][onPreExecute]: init NG but shouldn\'t run to here !, Unknown mMode. Neither MODE_IIMAGE nor MODE_URI"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->cancel(Z)Z

    goto :goto_0
.end method
