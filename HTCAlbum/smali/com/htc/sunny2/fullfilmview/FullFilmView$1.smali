.class Lcom/htc/sunny2/fullfilmview/FullFilmView$1;
.super Ljava/lang/Object;
.source "FullFilmView.java"

# interfaces
.implements Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->createResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 4

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, offset:I
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v2, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 448
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v1

    .line 456
    :goto_0
    return v1

    .line 454
    :cond_0
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][mFilmstripScroller][ItemInfoGetter][getFirstVisibleItemOffset]null item"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x0

    .line 482
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemLength(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v2, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 432
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getWidth()I

    move-result v1

    .line 440
    :goto_0
    return v1

    .line 438
    :cond_0
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][mFilmstripScroller][ItemInfoGetter][getItemLength]null item"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemSpacing()I
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v0

    return v0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 5

    .prologue
    .line 462
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v4, v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getFirstVisiblePosition()I

    move-result v4

    sub-int v0, v3, v4

    .line 463
    .local v0, index:I
    const/4 v2, 0x0

    .line 464
    .local v2, offset:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 465
    .local v1, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    .line 473
    :goto_0
    return v2

    .line 471
    :cond_0
    const-string v3, "FullFilmView"

    const-string v4, "[HTCAlbum][FullFilmView][mFilmstripScroller][ItemInfoGetter][getLastVisibleItemOffset]null item"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTopBouncePosition()I
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public getViewPortLength()I
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I

    move-result v0

    return v0
.end method
