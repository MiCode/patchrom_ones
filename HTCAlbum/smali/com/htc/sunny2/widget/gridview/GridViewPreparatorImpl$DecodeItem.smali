.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecodeItem"
.end annotation


# instance fields
.field protected mCacheSet:I

.field public mContentIdentifier:Ljava/lang/String;

.field public mContentIndex:I

.field public mSourceHeight:I

.field public mSourceWidth:I

.field public mSubIndex:I

.field public mTexture:Lcom/htc/sunny2/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V
    .locals 3
    .parameter
    .parameter "cacheSet"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2793
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2784
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2785
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    .line 2786
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 2787
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2788
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 2789
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 2791
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mCacheSet:I

    .line 2794
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mCacheSet:I

    .line 2795
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 1
    .parameter "cacheItem"

    .prologue
    .line 2819
    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2820
    iget-object v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 2821
    iget v0, p1, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 2822
    iget v0, p1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 2823
    iget v0, p1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    .line 2824
    return-void
.end method

.method public getScaleType()I
    .locals 1

    .prologue
    .line 2806
    const/4 v0, 0x4

    return v0
.end method

.method public getTargetHeight()I
    .locals 1

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2810
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2811
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 2812
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2813
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 2814
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 2815
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    .line 2816
    return-void
.end method
