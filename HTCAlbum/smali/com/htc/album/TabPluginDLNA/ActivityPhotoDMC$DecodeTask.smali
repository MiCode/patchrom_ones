.class public Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;
.super Landroid/os/AsyncTask;
.source "ActivityPhotoDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodeTask"
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
.field final RESULT_FAIL:I

.field final RESULT_SUCCESS:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHandle:Landroid/os/Handler;

.field private mIndex:I

.field mIsCancel:Z

.field mIsException:Z

.field private mUri:Landroid/net/Uri;

.field private nMode:I

.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;Landroid/os/Handler;ILandroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter "handler"
    .parameter "index"
    .parameter "uri"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2934
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2919
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->RESULT_SUCCESS:I

    .line 2920
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->RESULT_FAIL:I

    .line 2922
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->nMode:I

    .line 2924
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 2925
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mUri:Landroid/net/Uri;

    .line 2926
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mHandle:Landroid/os/Handler;

    .line 2927
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIndex:I

    .line 2929
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIsException:Z

    .line 2930
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIsCancel:Z

    .line 2935
    iput p5, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->nMode:I

    .line 2936
    iput-object p4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mUri:Landroid/net/Uri;

    .line 2937
    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mHandle:Landroid/os/Handler;

    .line 2938
    iput p3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIndex:I

    .line 2939
    return-void
.end method

.method private decodeModeLocal(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "uri"

    .prologue
    const/16 v12, 0x12c

    const/4 v7, 0x0

    .line 3017
    const/4 v2, 0x0

    .line 3018
    .local v2, cpClient:Landroid/content/ContentProviderClient;
    const/4 v1, 0x0

    .line 3021
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "content://dlna/images"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3023
    const-string v8, "ActivityPhotoDMC"

    const-string v9, "[GetThumb]: No provider..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    :goto_0
    return-object v7

    .line 3028
    :cond_0
    const/4 v0, 0x0

    .line 3029
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v8, "r"

    invoke-virtual {v2, p1, v8}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3031
    const-string v8, "ActivityPhotoDMC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    const/4 v6, 0x0

    .line 3033
    .local v6, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3035
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3036
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3037
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3039
    const-string v8, "ActivityPhotoDMC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: image dimension: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    const/4 v4, 0x0

    .line 3043
    .local v4, nDecodeSize:I
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v8, v12, :cond_3

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v8, v12, :cond_3

    .line 3045
    const/16 v4, 0x12c

    .line 3052
    :goto_1
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    invoke-virtual {v8, v5, v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v8

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3053
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3054
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3055
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3057
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3059
    const-string v8, "ActivityPhotoDMC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: image decoded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    .end local v4           #nDecodeSize:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3072
    .end local v6           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 3073
    const/4 v2, 0x0

    move-object v7, v1

    .line 3075
    goto/16 :goto_0

    .line 3049
    .restart local v4       #nDecodeSize:I
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v4, 0x400

    goto :goto_1

    .line 3066
    .end local v4           #nDecodeSize:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 3067
    .local v3, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;

    iget-object v8, v8, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3068
    const-string v8, "ActivityPhotoDMC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KA>>> [PhotoDMC][DecodeTask][decodeModeLocal]: thumb failed (using default):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2966
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIsCancel:Z

    if-eqz v1, :cond_0

    .line 2968
    iput-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 2969
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 2986
    :goto_0
    return-object v1

    .line 2972
    :cond_0
    iget v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->nMode:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->nMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2974
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->decodeModeLocal(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 2986
    :goto_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 2976
    :cond_2
    iget v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->nMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 2978
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2979
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 2983
    .end local v0           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iput-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2916
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 2943
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIndex:I

    return v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 2959
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIsCancel:Z

    .line 2961
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 2992
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 2994
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mHandle:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2996
    const-string v1, "ActivityPhotoDMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> [PhotoDMC][DecodeTask]: Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " decode success. Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mHandle:Landroid/os/Handler;

    const v2, 0x220120

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2998
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2999
    iget v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIndex:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3000
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3013
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 3005
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mHandle:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3007
    const-string v1, "ActivityPhotoDMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> [PhotoDMC][DecodeTask]: Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " decode Fail ! Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mHandle:Landroid/os/Handler;

    const v2, 0x220130

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3009
    .restart local v0       #msg:Landroid/os/Message;
    iget v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIndex:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3010
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2916
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2949
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2950
    :cond_0
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIsCancel:Z

    .line 2952
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mHandle:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 2953
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC$DecodeTask;->mIsCancel:Z

    .line 2954
    :cond_2
    return-void
.end method
