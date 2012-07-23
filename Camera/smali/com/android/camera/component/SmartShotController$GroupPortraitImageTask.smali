.class Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;
.super Lcom/android/camera/imaging/SaveImageTask;
.source "SmartShotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/SmartShotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupPortraitImageTask"
.end annotation


# instance fields
.field private final exifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_screen:Lcom/scalado/base/Image;

.field final synthetic this$0:Lcom/android/camera/component/SmartShotController;

.field private final uiRotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/SmartShotController;Lcom/scalado/base/Image;Ljava/util/Hashtable;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter
    .parameter "screen"
    .parameter
    .parameter "nRotation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scalado/base/Image;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/rotate/UIRotation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p3, exifTags:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->this$0:Lcom/android/camera/component/SmartShotController;

    .line 118
    invoke-virtual {p1}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;)V

    .line 119
    iput-object p2, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->m_screen:Lcom/scalado/base/Image;

    .line 120
    iput-object p3, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->exifTags:Ljava/util/Hashtable;

    .line 121
    iput-object p4, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->uiRotation:Lcom/android/camera/rotate/UIRotation;

    .line 122
    return-void
.end method


# virtual methods
.method protected onSaveImageToFile(Lcom/android/camera/io/Path;)V
    .locals 13
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v8, 0x0

    .line 157
    .local v8, outputStream:Lcom/scalado/stream/FileStream;
    :try_start_0
    new-instance v9, Lcom/scalado/stream/FileStream;

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v9, v11, v12}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .end local v8           #outputStream:Lcom/scalado/stream/FileStream;
    .local v9, outputStream:Lcom/scalado/stream/FileStream;
    :try_start_1
    iget-object v11, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v12, "Decode Group portrait picture"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v11, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->m_screen:Lcom/scalado/base/Image;

    invoke-direct {v0, v11}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 161
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    invoke-virtual {v0}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    .line 162
    .local v6, imageSize:Lcom/scalado/base/Size;
    new-instance v10, Lcom/scalado/caps/Session;

    invoke-direct {v10, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 172
    .local v10, session:Lcom/scalado/caps/Session;
    new-instance v1, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v1, v9, v6}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 173
    .local v1, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/high16 v11, 0x3f80

    invoke-virtual {v1, v11}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    .line 174
    invoke-virtual {v10, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v7

    .line 175
    .local v7, iterator:Lcom/scalado/base/Iterator;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/scalado/base/Iterator;->step(I)F

    .line 176
    invoke-virtual {v7}, Lcom/scalado/base/Iterator;->done()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 184
    if-eqz v9, :cond_3

    .line 185
    invoke-virtual {v9}, Lcom/scalado/stream/FileStream;->close()V

    move-object v8, v9

    .line 190
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .end local v1           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v6           #imageSize:Lcom/scalado/base/Size;
    .end local v7           #iterator:Lcom/scalado/base/Iterator;
    .end local v9           #outputStream:Lcom/scalado/stream/FileStream;
    .end local v10           #session:Lcom/scalado/caps/Session;
    .restart local v8       #outputStream:Lcom/scalado/stream/FileStream;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v4, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 191
    .local v4, exif:Landroid/media/ExifInterface;
    iget-object v11, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->exifTags:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 192
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 195
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #exif:Landroid/media/ExifInterface;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 197
    :goto_2
    return-void

    .line 178
    :catch_1
    move-exception v3

    .line 180
    .local v3, ex:Ljava/lang/Throwable;
    :goto_3
    :try_start_3
    iget-object v11, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v12, "Cannot save rotated Group portrait image"

    invoke-static {v11, v12, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    if-eqz v8, :cond_0

    .line 185
    invoke-virtual {v8}, Lcom/scalado/stream/FileStream;->close()V

    goto :goto_0

    .line 184
    .end local v3           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v8, :cond_1

    .line 185
    invoke-virtual {v8}, Lcom/scalado/stream/FileStream;->close()V

    :cond_1
    throw v11

    .line 193
    .restart local v4       #exif:Landroid/media/ExifInterface;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 184
    .end local v4           #exif:Landroid/media/ExifInterface;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #outputStream:Lcom/scalado/stream/FileStream;
    .restart local v9       #outputStream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9           #outputStream:Lcom/scalado/stream/FileStream;
    .restart local v8       #outputStream:Lcom/scalado/stream/FileStream;
    goto :goto_4

    .line 178
    .end local v8           #outputStream:Lcom/scalado/stream/FileStream;
    .restart local v9       #outputStream:Lcom/scalado/stream/FileStream;
    :catch_2
    move-exception v3

    move-object v8, v9

    .end local v9           #outputStream:Lcom/scalado/stream/FileStream;
    .restart local v8       #outputStream:Lcom/scalado/stream/FileStream;
    goto :goto_3

    .end local v8           #outputStream:Lcom/scalado/stream/FileStream;
    .restart local v0       #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .restart local v1       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v6       #imageSize:Lcom/scalado/base/Size;
    .restart local v7       #iterator:Lcom/scalado/base/Iterator;
    .restart local v9       #outputStream:Lcom/scalado/stream/FileStream;
    .restart local v10       #session:Lcom/scalado/caps/Session;
    :cond_3
    move-object v8, v9

    .end local v9           #outputStream:Lcom/scalado/stream/FileStream;
    .restart local v8       #outputStream:Lcom/scalado/stream/FileStream;
    goto :goto_0
.end method
