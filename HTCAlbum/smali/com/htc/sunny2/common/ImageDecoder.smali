.class public Lcom/htc/sunny2/common/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;,
        Lcom/htc/sunny2/common/ImageDecoder$STATE;
    }
.end annotation


# static fields
.field public static final DECODE_FLAG_ALLOW_EXIF_THUMB:I = 0x10

.field public static final DECODE_FLAG_ALLOW_LOAD_ITERATE:I = 0x40

.field public static final DECODE_FLAG_ALLOW_SPMO:I = 0x20

.field public static final DECODE_FLAG_BITMAP_COLOR_DEPTH:I = 0x400

.field public static final DECODE_FLAG_DECODE_SOURCE_WIDTH_HEIGHT:I = 0x1000

.field public static final DECODE_FLAG_NO_PROGRESSIVE_JPEG:I = 0x100

.field public static final DECODE_FLAG_SCALE_FOR_3D:I = 0x1

.field public static final DECODE_FLAG_SCALE_TO_FILL:I = 0x4

.field public static final DECODE_FLAG_SCALE_TO_FIT:I = 0x2

.field public static final DECODE_FLAG_SIDE_BY_SIDE:I = 0x200

.field public static final DEFAULT_COLOR_DEPTH:I = -0x1

.field private static final LTAG:Ljava/lang/String;


# instance fields
.field private decodeHandle:I

.field private mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

.field private mDecodeFlags:I

.field private mFilePath:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mIsProgressiveJpeg:Z

.field private mIsSideBySide:Z

.field private mMimeType:Ljava/lang/String;

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mPhotoHeight:I

.field private mPhotoWidth:I

.field private outputSunnyBitmap:I

.field private outputSunnyTexture:I

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

.field private toSunnyTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 61
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 64
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 65
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 66
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 68
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 69
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 72
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    .line 73
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 74
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    .line 76
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 78
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 84
    return-void
.end method

.method private adjustWidthHeightFromSource()V
    .locals 9

    .prologue
    .line 1107
    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_0

    .line 1109
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 1110
    .local v4, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1111
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1112
    .local v2, is:Ljava/io/InputStream;
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    .line 1137
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 1115
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1116
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1117
    if-eqz v4, :cond_3

    .line 1118
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1127
    :goto_1
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1128
    .local v6, width:I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1129
    .local v1, height:I
    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    if-gt v6, v7, :cond_2

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    if-le v1, v7, :cond_0

    .line 1130
    :cond_2
    iput v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 1131
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1133
    .end local v1           #height:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #width:I
    :catch_0
    move-exception v0

    .line 1134
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1119
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    if-eqz v5, :cond_4

    .line 1120
    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1121
    :cond_4
    if-eqz v2, :cond_5

    .line 1122
    const/4 v7, 0x0

    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1124
    :cond_5
    sget-object v7, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v8, "[ImageDecoder][adjustWidthHeightFromSource] Image source is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private closeMemberParcelFileDescriptor()V
    .locals 2

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1040
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1046
    :cond_0
    return-void

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private doDecode(J)Z
    .locals 5
    .parameter "ticks"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 939
    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v3, :cond_0

    .line 941
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - null decodeHandle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 979
    :goto_0
    return v1

    .line 946
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v0

    .line 948
    .local v0, rs:I
    if-nez v0, :cond_1

    move v1, v2

    .line 950
    goto :goto_0

    .line 952
    :cond_1
    if-ne v0, v2, :cond_4

    .line 954
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 955
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 957
    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 959
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - decode finish, but null bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 964
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    if-eqz v2, :cond_3

    .line 966
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 971
    :cond_3
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 977
    :cond_4
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDecode() NG - decodeIterate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method private doLoad(J)Z
    .locals 8
    .parameter "ticks"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 859
    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v5, :cond_0

    .line 861
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "doLoad() NG - null decodeHandle"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 863
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 933
    :goto_0
    return v3

    .line 867
    :cond_0
    const/4 v2, -0x1

    .line 868
    .local v2, rs:I
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_1

    .line 870
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFilePathIterate(IJ)I

    move-result v2

    .line 895
    :goto_1
    if-nez v2, :cond_4

    move v3, v4

    .line 897
    goto :goto_0

    .line 872
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_2

    .line 875
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFDIterate(IJ)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 880
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_3

    .line 883
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadInputStreamIterate(IJ)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    .line 884
    :catch_1
    move-exception v0

    .line 885
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 890
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doLoad() NG - unknow state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 899
    :cond_4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_9

    .line 901
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 902
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 903
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSource()V

    .line 904
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v5, :cond_5

    .line 905
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v5, p0, v6, v7}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V

    .line 908
    :cond_5
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 909
    const-string v5, "image/mpo"

    iget-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 911
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v1

    .line 912
    .local v1, mpoPhotoCount:I
    if-lez v1, :cond_8

    .line 914
    iget-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v5, :cond_7

    .line 915
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    .line 925
    .end local v1           #mpoPhotoCount:I
    :cond_6
    :goto_2
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto/16 :goto_0

    .line 917
    .restart local v1       #mpoPhotoCount:I
    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_2

    .line 922
    :cond_8
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 930
    .end local v1           #mpoPhotoCount:I
    :cond_9
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doLoad() NG - loadIterate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 932
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto/16 :goto_0
.end method

.method private doMakeTexture(J)Z
    .locals 4
    .parameter "ticks"

    .prologue
    const/4 v3, 0x0

    .line 1012
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    if-nez v0, :cond_0

    .line 1014
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - null sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 1034
    :goto_0
    return v3

    .line 1019
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    if-nez v0, :cond_1

    .line 1021
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - null texture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1026
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1028
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - setup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1033
    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method public static heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 24
    .parameter "options"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    .line 1058
    .local v19, w:I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1060
    .local v11, h:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1061
    .local v4, candidateW:I
    int-to-float v0, v11

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1063
    .local v3, candidateH:I
    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidateW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " candidateH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1067
    .local v2, candidate:I
    if-nez v2, :cond_0

    .line 1068
    const/16 v20, 0x1

    .line 1103
    :goto_0
    return v20

    .line 1070
    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_1

    .line 1071
    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    div-int v20, v19, v2

    move/from16 v0, v20

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1072
    add-int/lit8 v2, v2, -0x1

    .line 1075
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_2

    .line 1076
    move/from16 v0, p2

    if-le v11, v0, :cond_2

    div-int v20, v11, v2

    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 1077
    add-int/lit8 v2, v2, -0x1

    .line 1086
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    .line 1087
    .local v16, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    .line 1088
    .local v9, currentHeap:J
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    .line 1089
    .local v12, leftMemory:J
    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "current Heap "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " left memory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-wide/16 v17, 0x0

    .line 1092
    .local v17, totalPixels:J
    const/4 v15, 0x3

    .line 1093
    .local v15, resampleTryCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/4 v14, 0x2

    .line 1094
    .local v14, pixelBytes:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 1096
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1097
    div-int v20, v19, v2

    move/from16 v0, v20

    int-to-long v7, v0

    .line 1098
    .local v7, curW:J
    div-int v20, v11, v2

    move/from16 v0, v20

    int-to-long v5, v0

    .line 1099
    .local v5, curH:J
    mul-long v20, v7, v5

    int-to-long v0, v14

    move-wide/from16 v22, v0

    mul-long v17, v20, v22

    .line 1100
    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidate "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " curW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", curH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    cmp-long v20, v17, v12

    if-lez v20, :cond_4

    add-int/lit8 v15, v15, -0x1

    if-gtz v15, :cond_3

    :cond_4
    move/from16 v20, v2

    .line 1103
    goto/16 :goto_0

    .line 1093
    .end local v5           #curH:J
    .end local v7           #curW:J
    .end local v14           #pixelBytes:I
    :cond_5
    const/4 v14, 0x4

    goto :goto_1
.end method

.method private loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 11
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 270
    const-string v1, "image/webp"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    move/from16 v0, p5

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/htc/sunny2/common/ImageDecoder;->loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 273
    .local v9, result:Landroid/graphics/Bitmap;
    if-nez v9, :cond_0

    .line 275
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToSunnyTexture() NG - loadWebpFromFilePath fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 277
    const/4 v1, 0x0

    .line 393
    .end local v9           #result:Landroid/graphics/Bitmap;
    :goto_0
    return v1

    .line 280
    .restart local v9       #result:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 281
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 283
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 284
    iput-object v9, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 285
    const/4 v1, 0x1

    goto :goto_0

    .line 288
    .end local v9           #result:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 289
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v1, :cond_2

    .line 291
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - decodeBegin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 293
    const/4 v1, 0x0

    goto :goto_0

    .line 296
    :cond_2
    and-int/lit8 v1, p7, 0x40

    if-eqz v1, :cond_3

    const/4 v7, 0x1

    .line 297
    .local v7, isIterator:Z
    :goto_1
    const/4 v10, -0x1

    .line 298
    .local v10, rs:I
    iput-object p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 299
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 300
    const-string v1, "image/jps"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 302
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_5

    .line 303
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 310
    :goto_3
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 313
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 315
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 317
    const/4 v1, 0x0

    goto :goto_0

    .line 296
    .end local v7           #isIterator:Z
    .end local v10           #rs:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 299
    .restart local v7       #isIterator:Z
    .restart local v10       #rs:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 305
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_3

    .line 319
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v10

    .line 364
    :cond_7
    :goto_4
    if-eqz v10, :cond_e

    .line 366
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromFilePathToBitmap() NG - loadFromFilePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 368
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 321
    :cond_8
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 325
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 328
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_9

    .line 330
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 332
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 334
    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v10

    .line 336
    if-nez v7, :cond_7

    .line 338
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v8

    .line 339
    .local v8, mpoPhotoCount:I
    if-lez v8, :cond_b

    .line 341
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_a

    .line 342
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    goto :goto_4

    .line 344
    :cond_a
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_4

    .line 349
    :cond_b
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v8           #mpoPhotoCount:I
    :cond_c
    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 355
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_d

    .line 357
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 359
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 361
    :cond_d
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v10

    goto/16 :goto_4

    .line 371
    :cond_e
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->isProgressiveJpeg(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 372
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    if-ne v1, v2, :cond_f

    .line 373
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_f

    .line 374
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 375
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 380
    :cond_f
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 382
    if-eqz v7, :cond_10

    .line 383
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 393
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 385
    :cond_10
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 386
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 387
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSource()V

    .line 388
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v1, :cond_11

    .line 389
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v1, p0, v2, v3}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V

    .line 391
    :cond_11
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_5
.end method

.method private loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z
    .locals 9
    .parameter "inputStream"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 537
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 538
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v0, :cond_0

    .line 540
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - decodeBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 542
    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 545
    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - setupDecodeParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 549
    const/4 v0, 0x0

    goto :goto_0

    .line 552
    :cond_1
    and-int/lit8 v0, p6, 0x40

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 553
    .local v7, isIterator:Z
    :goto_1
    const/4 v8, -0x1

    .line 555
    .local v8, rs:I
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 559
    :goto_2
    if-eqz v8, :cond_3

    .line 561
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromInputStream() NG - loadFromInputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 563
    const/4 v0, 0x0

    goto :goto_0

    .line 552
    .end local v7           #isIterator:Z
    .end local v8           #rs:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 556
    .restart local v7       #isIterator:Z
    .restart local v8       #rs:I
    :catch_0
    move-exception v6

    .line 557
    .local v6, e:Ljava/lang/OutOfMemoryError;
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 565
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 567
    if-eqz v7, :cond_4

    .line 568
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 579
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 570
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 571
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 572
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSource()V

    .line 573
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v0, p0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V

    .line 576
    :cond_5
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_3
.end method

.method private loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z
    .locals 12
    .parameter "parcelFileDescriptor"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 413
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 415
    .local v8, fileDescriptor:Ljava/io/FileDescriptor;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 416
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v1, :cond_0

    .line 418
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFileDescriptor() NG - decodeBegin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 420
    const/4 v1, 0x0

    .line 520
    :goto_0
    return v1

    .line 422
    :cond_0
    and-int/lit8 v1, p7, 0x40

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    .line 423
    .local v9, isIterator:Z
    :goto_1
    const/4 v11, -0x1

    .line 424
    .local v11, rs:I
    iput-object p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 425
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 426
    const-string v1, "image/jps"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 428
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_3

    .line 429
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 436
    :goto_3
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 439
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 441
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 443
    const/4 v1, 0x0

    goto :goto_0

    .line 422
    .end local v9           #isIterator:Z
    .end local v11           #rs:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 425
    .restart local v9       #isIterator:Z
    .restart local v11       #rs:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 431
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_3

    .line 446
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 500
    :goto_4
    if-eqz v11, :cond_b

    .line 502
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromFileDescriptor() NG - loadFromFileDescriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 504
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 447
    :catch_0
    move-exception v7

    .line 448
    .local v7, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 451
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 455
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 458
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 460
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 462
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 465
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I

    move-result v11

    .line 468
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v10

    .line 469
    .local v10, mpoPhotoCount:I
    if-lez v10, :cond_8

    .line 471
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_7

    .line 472
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 481
    .end local v10           #mpoPhotoCount:I
    :catch_1
    move-exception v7

    .line 482
    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 474
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .restart local v10       #mpoPhotoCount:I
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_4

    .line 479
    :cond_8
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .end local v10           #mpoPhotoCount:I
    :cond_9
    move-object v1, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 486
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_a

    .line 488
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFileDescriptor() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 490
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 494
    :cond_a
    :try_start_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result v11

    goto/16 :goto_4

    .line 495
    :catch_2
    move-exception v7

    .line 496
    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 507
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 508
    if-eqz v9, :cond_c

    .line 509
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 520
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 511
    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 512
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 513
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v1, :cond_d

    .line 514
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v1, p0, v2, v3}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V

    .line 516
    :cond_d
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 517
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_5
.end method

.method private loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "filePath"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 94
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 95
    iput-boolean v2, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 96
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 99
    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v9, v2

    .line 100
    .local v9, sourceLandscape:Z
    :goto_0
    div-int v3, p3, p4

    if-eqz v3, :cond_2

    move v8, v2

    .line 101
    .local v8, preferLandscape:Z
    :goto_1
    if-eq v8, v9, :cond_0

    .line 102
    move v10, p3

    .line 103
    .local v10, temp:I
    move p3, p4

    .line 104
    move p4, v10

    .line 106
    .end local v10           #temp:I
    :cond_0
    invoke-static {v7, p3, p4}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 107
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 108
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, result:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 112
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, p2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .end local v0           #result:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #preferLandscape:Z
    .end local v9           #sourceLandscape:Z
    :cond_1
    move v9, v1

    .line 99
    goto :goto_0

    .restart local v9       #sourceLandscape:Z
    :cond_2
    move v8, v1

    .line 100
    goto :goto_1
.end method

.method private setupDecodeParameters(IIIII)Z
    .locals 6
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "requireColorDepth"
    .parameter "decodeFlags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 636
    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v4, :cond_0

    .line 638
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "setupDecodeParameters() NG - null decodeHandle"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_0
    return v2

    .line 642
    :cond_0
    iput p5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    .line 644
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    move-result v0

    .line 645
    .local v0, rs:I
    if-eqz v0, :cond_1

    .line 647
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setDegree "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p2, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    move-result v0

    .line 652
    if-eqz v0, :cond_2

    .line 654
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setPreferSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 658
    :cond_2
    const/4 v1, 0x0

    .line 659
    .local v1, scaleType:I
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_4

    .line 660
    const/4 v1, 0x1

    .line 664
    :cond_3
    :goto_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    move-result v0

    .line 665
    if-eqz v0, :cond_5

    .line 667
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setScaleType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 661
    :cond_4
    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_3

    .line 662
    const/4 v1, 0x2

    goto :goto_1

    .line 671
    :cond_5
    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_6

    .line 673
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromExifFirst(IZ)I

    move-result v0

    .line 674
    if-eqz v0, :cond_6

    .line 676
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromExifFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 681
    :cond_6
    and-int/lit8 v4, p5, 0x20

    if-eqz v4, :cond_7

    .line 683
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    move-result v0

    .line 684
    if-eqz v0, :cond_7

    .line 686
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromSPMOFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    :cond_7
    const/4 v4, -0x1

    if-eq p4, v4, :cond_8

    and-int/lit16 v4, p5, 0x400

    if-eqz v4, :cond_8

    .line 693
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    move-result v0

    .line 694
    if-eqz v0, :cond_8

    .line 696
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setBitmapColorDepth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 701
    goto/16 :goto_0
.end method


# virtual methods
.method doConvertToSunnyBitmap(J)Z
    .locals 3
    .parameter "ticks"

    .prologue
    const/4 v2, 0x0

    .line 985
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 987
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - null bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 1007
    :goto_0
    return v2

    .line 992
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    if-nez v0, :cond_1

    .line 994
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - null sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 999
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1001
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - set sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1006
    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method public free()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 706
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 707
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 709
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 710
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 712
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 714
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 717
    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 720
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-eqz v1, :cond_2

    .line 722
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 723
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 727
    :cond_1
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 730
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 731
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 732
    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 733
    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 734
    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 735
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    .line 736
    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 737
    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 738
    return-void
.end method

.method public getFullPhotoHeight()I
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    return v0
.end method

.method public getFullPhotoWidth()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    return v0
.end method

.method public isFree()Z
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProgressiveJpeg()Z
    .locals 1

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    return v0
.end method

.method public iterate(J)Z
    .locals 6
    .parameter "ticks"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, p1

    .line 760
    .local v0, timeLimit:J
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_1

    .line 762
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "iterate() NG - not setup"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    :goto_0
    return v2

    .line 767
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_3

    .line 768
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doLoad(J)Z

    move-result v4

    if-ne v4, v3, :cond_3

    move v2, v3

    .line 770
    goto :goto_0

    .line 776
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_4

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doDecode(J)Z

    move-result v4

    if-ne v4, v3, :cond_4

    move v2, v3

    .line 780
    goto :goto_0

    .line 786
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_6

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_5

    move v2, v3

    .line 790
    goto :goto_0

    .line 793
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doConvertToSunnyBitmap(J)Z

    move-result v4

    if-ne v4, v3, :cond_6

    move v2, v3

    .line 795
    goto :goto_0

    .line 801
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_8

    .line 803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_7

    move v2, v3

    .line 805
    goto :goto_0

    .line 808
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doMakeTexture(J)Z

    move-result v4

    if-ne v4, v3, :cond_8

    move v2, v3

    .line 810
    goto :goto_0

    .line 816
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v3, v4, :cond_0

    .line 823
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v3, v4, :cond_0

    goto :goto_0
.end method

.method public loadFromFilePathToBitmap(Lcom/htc/sunny2/IMediaData;IIII)Z
    .locals 8
    .parameter "mediaItem"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 257
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, filePath:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, mimeType:Ljava/lang/String;
    const/4 v6, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 1
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 265
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromFilePathToSunnyTexture(Lcom/htc/sunny2/IMediaData;IILjava/lang/String;IIII)Z
    .locals 14
    .parameter "mediaItem"
    .parameter "outputSunnyBitmap"
    .parameter "outputSunnyTexture"
    .parameter "filePath"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 120
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 122
    :cond_0
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - zero parameter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 124
    const/4 v4, 0x0

    .line 250
    :goto_0
    return v4

    .line 127
    :cond_1
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, mimeType:Ljava/lang/String;
    const-string v4, "image/webp"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/sunny2/common/ImageDecoder;->loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 132
    .local v12, result:Landroid/graphics/Bitmap;
    if-nez v12, :cond_2

    .line 134
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - loadWebpFromFilePath fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 136
    const/4 v4, 0x0

    goto :goto_0

    .line 139
    :cond_2
    move/from16 v0, p2

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 140
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 142
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 143
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 148
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 149
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 150
    iput-object v12, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 151
    const/4 v4, 0x1

    goto :goto_0

    .line 154
    .end local v12           #result:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 155
    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v4, :cond_4

    .line 157
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - decodeBegin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 159
    const/4 v4, 0x0

    goto :goto_0

    .line 165
    :cond_4
    const/4 v13, 0x5

    .line 166
    .local v13, rs:I
    if-eqz v10, :cond_7

    const-string v4, "image/jps"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 168
    move/from16 v0, p8

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_5

    .line 169
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 176
    :goto_1
    and-int/lit8 p8, p8, -0x11

    .line 179
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_6

    .line 181
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 183
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 171
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_1

    .line 185
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    .line 231
    :goto_2
    if-eqz v13, :cond_d

    .line 233
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromFilePathToSunnyTexture() NG - loadFromFilePath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 235
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 187
    :cond_7
    if-eqz v10, :cond_b

    const-string v4, "image/mpo"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 192
    and-int/lit8 p8, p8, -0x11

    .line 195
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_8

    .line 197
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 199
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 201
    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    .line 204
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v11

    .line 205
    .local v11, mpoPhotoCount:I
    if-lez v11, :cond_a

    .line 207
    move/from16 v0, p8

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_9

    .line 208
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    goto :goto_2

    .line 210
    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_2

    .line 215
    :cond_a
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 221
    .end local v11           #mpoPhotoCount:I
    :cond_b
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_c

    .line 223
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 225
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 228
    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 238
    :cond_d
    move/from16 v0, p2

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 239
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 241
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 242
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 247
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 248
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 250
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public loadFromInputStreamToBitmap(Ljava/io/InputStream;IIII)Z
    .locals 7
    .parameter "inputStream"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 526
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z
    .locals 1
    .parameter "inputStream"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 532
    invoke-direct/range {p0 .. p6}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromInputStreamToTexture(Ljava/io/InputStream;IIIIII)Z
    .locals 9
    .parameter "inputStream"
    .parameter "outputSunnyBitmap"
    .parameter "outputSunnyTexture"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 586
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 587
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v0, :cond_0

    .line 589
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - decodeBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 591
    const/4 v0, 0x0

    .line 631
    :goto_0
    return v0

    .line 594
    :cond_0
    const/4 v4, -0x1

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - setupDecodeParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 598
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    :cond_1
    and-int/lit8 v0, p7, 0x40

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 602
    .local v7, isIterator:Z
    :goto_1
    const/4 v8, -0x1

    .line 604
    .local v8, rs:I
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 608
    :goto_2
    if-eqz v8, :cond_3

    .line 610
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromInputStream() NG - loadFromInputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 612
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    .end local v7           #isIterator:Z
    .end local v8           #rs:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 605
    .restart local v7       #isIterator:Z
    .restart local v8       #rs:I
    :catch_0
    move-exception v6

    .line 606
    .local v6, e:Ljava/lang/OutOfMemoryError;
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 615
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 617
    if-eqz v7, :cond_4

    .line 618
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 624
    :goto_3
    iput p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 625
    iput p3, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 627
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 628
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 631
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 620
    :cond_4
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_3
.end method

.method public loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;IIII)Z
    .locals 8
    .parameter "parcelFileDescriptor"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 400
    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z
    .locals 1
    .parameter "parcelFileDescriptor"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 407
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 743
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    .line 746
    :cond_0
    return-void
.end method

.method public setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    .line 88
    return-void
.end method

.method public setPreferSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1053
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 1054
    return-void
.end method

.method public succeeded()Z
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeOutBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 839
    .local v0, output:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 841
    return-object v0
.end method
