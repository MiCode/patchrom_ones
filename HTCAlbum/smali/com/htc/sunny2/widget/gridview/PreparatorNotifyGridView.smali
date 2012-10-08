.class public Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
.super Lcom/htc/sunny2/widget/gridview/GridView;
.source "PreparatorNotifyGridView.java"

# interfaces
.implements Lcom/htc/sunny2/Preparator$UpdateListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PreparatorNotifyGridView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "context"
    .parameter "sContext"
    .parameter "itemPrototype"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 41
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->notifyMediaDataInvalidate(I)V

    .line 42
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 4
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 27
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 28
    .local v0, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 29
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    :goto_0
    return-void

    .line 31
    .restart local v0       #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_0
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "PreparatorNotifyGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFail] Set file corrupted, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    .line 36
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->notifyMediaDataInvalidate(I)V

    goto :goto_0
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 22
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->notifyMediaDataInvalidate(I)V

    .line 23
    return-void
.end method
