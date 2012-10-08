.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
.source "ParamsPreparator4CarMode.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;-><init>()V

    .line 14
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mDimension:I

    .line 15
    return-void
.end method

.method public static spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMaxTextureCount()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSpecialMode()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
