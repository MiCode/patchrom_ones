.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
.super Ljava/lang/Object;
.source "ParamsPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/IParamsPreparator;


# instance fields
.field protected mCacheSet:I

.field protected mDimension:I

.field private mEnableBorder:Z

.field private mEnableFileCache:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableFileCache:Z

    .line 10
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mDimension:I

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mCacheSet:I

    .line 12
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableBorder:Z

    .line 20
    return-void
.end method

.method public static spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;-><init>()V

    return-object v0
.end method


# virtual methods
.method public enableBorder()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableBorder:Z

    .line 79
    return-void
.end method

.method public enableFileCache()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableFileCache:Z

    .line 26
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 96
    const/high16 v0, -0x100

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mCacheSet:I

    return v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mDimension:I

    return v0
.end method

.method public getFileCacheSize()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x3e8

    return v0
.end method

.method public getMaxTextureCount()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x258

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xc8

    return v0
.end method

.method public getSpecialMode()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableBorder()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableBorder:Z

    return v0
.end method

.method public isEnableFileCache()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableFileCache:Z

    return v0
.end method

.method public setCacheSet(I)V
    .locals 0
    .parameter "nCacheSet"

    .prologue
    .line 37
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mCacheSet:I

    .line 38
    return-void
.end method

.method public setDimension(I)V
    .locals 0
    .parameter "nDimension"

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mDimension:I

    .line 34
    return-void
.end method
