.class public interface abstract Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;,
        Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;
    }
.end annotation


# virtual methods
.method public abstract activate()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
.end method

.method public abstract closeCursor()V
.end method

.method public abstract commitChanges()V
.end method

.method public abstract deactivate()V
.end method

.method public abstract getBucketIds()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
.end method

.method public abstract getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
.end method

.method public abstract getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
.end method

.method public abstract getImages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isReleased()Z
.end method

.method public abstract removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeImageAt(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeImages([I[I[I[I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
.end method

.method public abstract startRequery()Z
.end method
