.class public Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;
.super Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
.source "ImageGetterPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentDecodeHandler:I

.field mCurrentIdx:I

.field mDecodeFlow:I

.field mFirstVisibleIndex:I

.field mItemCount:I

.field mLastVisibleIndex:I

.field mMedialist:Lcom/htc/sunny2/IMediaList;

.field mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

.field mTextures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const-string v0, "ImageGetterPreparator"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    .line 39
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public bind(ILcom/htc/sunny2/IMediaList;I)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"

    .prologue
    .line 77
    if-eqz p2, :cond_0

    .line 78
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunny2/IMediaList;

    .line 79
    invoke-interface {p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mItemCount:I

    .line 81
    :cond_0
    return-void
.end method

.method public deInit()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public freeOutOfRange(III)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 44
    return-void
.end method

.method public get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "inValue"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailImage(ILcom/htc/sunny2/IMediaData;)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "index"
    .parameter "mediaData"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method public getThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "index"
    .parameter "mediaData"
    .parameter "bkgTextureId"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "inValue"

    .prologue
    .line 219
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V
    .locals 0
    .parameter "context"
    .parameter "params"

    .prologue
    .line 214
    return-void
.end method

.method public iterate(J)V
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v8, 0x4

    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 84
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    if-ne v5, v11, :cond_2

    .line 85
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mFirstVisibleIndex:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mLastVisibleIndex:I

    if-gt v5, v6, :cond_1

    .line 86
    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 87
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 108
    :goto_0
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    packed-switch v5, :pswitch_data_0

    .line 192
    :goto_1
    return-void

    .line 91
    :cond_0
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 97
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mFirstVisibleIndex:I

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    .line 112
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mContext:Landroid/content/Context;

    const v6, 0x7f020025

    invoke-static {v5, v6}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 113
    .local v1, fail:Lcom/htc/sunny2/Texture;
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    iget-object v5, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v5, :cond_3

    .line 116
    iget-object v5, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    const/4 v7, 0x0

    invoke-interface {v5, v9, v6, v7}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 119
    :cond_3
    iput v10, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    .line 120
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    goto :goto_1

    .line 123
    .end local v1           #fail:Lcom/htc/sunny2/Texture;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    invoke-virtual {v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    .line 124
    iput v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    .line 127
    :pswitch_2
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    move-result v3

    .line 128
    .local v3, res:I
    if-eqz v3, :cond_4

    .line 129
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    .line 132
    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    const/16 v7, 0xae

    const/16 v8, 0xae

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    move-result v3

    .line 133
    if-eqz v3, :cond_5

    .line 134
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    .line 137
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromExifFirst(IZ)I

    move-result v3

    .line 138
    if-eqz v3, :cond_6

    .line 139
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    .line 143
    :cond_6
    iput v11, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    .line 146
    .end local v3           #res:I
    :pswitch_3
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunny2/IMediaList;

    if-nez v5, :cond_7

    .line 147
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    .line 151
    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunny2/IMediaList;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    invoke-interface {v5, v6}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 152
    .local v2, item:Lcom/htc/sunny2/IMediaData;
    if-nez v2, :cond_8

    .line 153
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    .line 157
    :cond_8
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    .line 158
    .restart local v3       #res:I
    if-eqz v3, :cond_9

    .line 159
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    .line 163
    :cond_9
    iput v8, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    .line 166
    .end local v2           #item:Lcom/htc/sunny2/IMediaData;
    .end local v3           #res:I
    :pswitch_4
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v3

    .line 167
    .restart local v3       #res:I
    if-nez v3, :cond_a

    .line 168
    iput v8, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    .line 170
    :cond_a
    if-ne v3, v10, :cond_b

    .line 171
    const/4 v5, 0x5

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    .line 174
    :cond_b
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    .line 178
    .end local v3           #res:I
    :pswitch_5
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    .line 181
    .local v4, t:Lcom/htc/sunny2/Texture;
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    iget-object v5, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v5, :cond_c

    .line 184
    iget-object v5, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    const/4 v7, 0x0

    invoke-interface {v5, v9, v6, v7}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 187
    :cond_c
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    .line 188
    iput v10, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public loadRange(IIIJ)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"
    .parameter "restrictTime"

    .prologue
    .line 46
    return-void
.end method

.method public notifyDataItemChanged(II)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIdx"

    .prologue
    .line 42
    return-void
.end method

.method public notifyDataItemChanged(III)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "flag"

    .prologue
    .line 208
    return-void
.end method

.method public pausePreparator()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public queryThumbnailTexture(I)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "index"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method public refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;
    .locals 1
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"
    .parameter "isAutoReleaseTexture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunny2/IMediaList;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetDecodeDirection()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public resumePreparator()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0
    .parameter "numColumn"

    .prologue
    .line 68
    return-void
.end method

.method public setDecodeDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 72
    return-void
.end method

.method public setVisibleRange(III)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    .line 48
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mFirstVisibleIndex:I

    .line 49
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mLastVisibleIndex:I

    .line 50
    return-void
.end method

.method public unbind(I)V
    .locals 3
    .parameter "mediaListIdx"

    .prologue
    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunny2/IMediaList;

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mItemCount:I

    if-ge v0, v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/Texture;

    .line 55
    .local v1, t:Lcom/htc/sunny2/Texture;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v1           #t:Lcom/htc/sunny2/Texture;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 58
    return-void
.end method
