.class Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;
.super Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;
.source "ImageProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PartialIImageImpl"
.end annotation


# instance fields
.field public dataPath:Ljava/lang/String;

.field public degreesRetated:I

.field public displayName:Ljava/lang/String;

.field public imageUri:Landroid/net/Uri;

.field public isDrm:Z

.field public mimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 820
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0, p1}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;-><init>(Lcom/htc/album/helper/ImageProcessManager;)V

    .line 812
    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 813
    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 814
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 815
    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 816
    iput-boolean v2, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->isDrm:Z

    .line 817
    iput v2, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->degreesRetated:I

    .line 822
    return-void
.end method


# virtual methods
.method public collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
    .locals 0
    .parameter "srcImageList"

    .prologue
    .line 997
    return-void
.end method

.method public expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    .locals 1
    .parameter "index"
    .parameter "destImageList"

    .prologue
    .line 990
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 810
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 839
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 862
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->getDataPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->degreesRetated:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 916
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 830
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 881
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->getDataPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaSourceType()I
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 848
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method public is3D()Z
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public isBestBurstPhoto()Z
    .locals 1

    .prologue
    .line 1002
    const/4 v0, 0x0

    return v0
.end method

.method public isBurstPhoto()Z
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->isDrm:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public isFakeForLoading()Z
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    return v0
.end method

.method public setAsBestBurstPhoto()V
    .locals 0

    .prologue
    .line 1009
    return-void
.end method

.method public setAsBurstPhoto(IZ)V
    .locals 0
    .parameter "favoriteFieldValue"
    .parameter "forceUpdate"

    .prologue
    .line 973
    return-void
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 887
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 954
    return-void
.end method
