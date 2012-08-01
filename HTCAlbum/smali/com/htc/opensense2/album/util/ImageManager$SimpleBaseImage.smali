.class public abstract Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleBaseImage"
.end annotation


# instance fields
.field protected bCorrupt:Z

.field protected mGifFrameCount:I

.field private mSelected:Z

.field private mSortBase:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7613
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7616
    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    .line 7617
    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSelected:Z

    .line 7787
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 7854
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 7707
    const/4 v0, 0x0

    return v0
.end method

.method public commitChanges()V
    .locals 1

    .prologue
    .line 7647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 9
    .parameter "another"

    .prologue
    const/4 v7, 0x0

    .line 7759
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getSortBase()J

    move-result-wide v4

    .line 7760
    .local v4, mySortBase:J
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v1

    .line 7762
    .local v1, anotherSortBase:J
    cmp-long v8, v4, v1

    if-nez v8, :cond_2

    .line 7763
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 7764
    .local v3, myFull:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 7766
    .local v0, anotherFull:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 7780
    .end local v0           #anotherFull:Ljava/lang/String;
    .end local v3           #myFull:Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 7770
    .restart local v0       #anotherFull:Ljava/lang/String;
    .restart local v3       #myFull:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .local v6, result:I
    move v7, v6

    .line 7776
    goto :goto_0

    .line 7780
    .end local v0           #anotherFull:Ljava/lang/String;
    .end local v3           #myFull:Ljava/lang/String;
    .end local v6           #result:I
    :cond_2
    cmp-long v8, v4, v1

    if-lez v8, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    cmp-long v8, v4, v1

    if-eqz v8, :cond_0

    const/4 v7, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7613
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public fileCorrupted()V
    .locals 1

    .prologue
    .line 7633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    .line 7634
    return-void
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 7651
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 7655
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 7659
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 7663
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 7892
    const/4 v0, 0x0

    return v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 7667
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 7877
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7675
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7805
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 7823
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7809
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 7885
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 7816
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 7900
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 7830
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7844
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 7851
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public getDisplayMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7837
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7695
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 7713
    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 7679
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 7683
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 7687
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7908
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7896
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7699
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 7703
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSortBase()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    .line 7789
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 7790
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 7798
    :goto_0
    return-wide v0

    .line 7791
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 7794
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 7795
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDateModified()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 7796
    :cond_1
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 7797
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDateAdded()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 7798
    :cond_2
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7691
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 7717
    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 7721
    const/4 v0, 0x0

    return v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 7904
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 7642
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    return v0
.end method

.method public isFakeForLoading()Z
    .locals 1

    .prologue
    .line 7912
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 7859
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->isGif()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7860
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 7861
    new-instance v0, Landroid/webkit/GIFImageParser;

    invoke-direct {v0}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 7862
    .local v0, parser:Landroid/webkit/GIFImageParser;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    .line 7863
    invoke-virtual {v0}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    .line 7865
    .end local v0           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    if-le v2, v1, :cond_1

    .line 7869
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 7725
    const/4 v0, 0x1

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 7629
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSelected:Z

    return v0
.end method

.method public onRemove()V
    .locals 1

    .prologue
    .line 7729
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resetFileCorrupted()V
    .locals 1

    .prologue
    .line 7637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    .line 7638
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 7733
    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 7737
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 7710
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 1
    .parameter "isPrivate"

    .prologue
    .line 7741
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 7745
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPicasaId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 7749
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 7752
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 7622
    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSelected:Z

    .line 7623
    return-void
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 7755
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
