.class Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;
.super Ljava/lang/Object;
.source "FullFilmView.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripDataGetter"
.end annotation


# instance fields
.field mList:Lcom/htc/sunny2/IMediaList;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 1
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunny2/IMediaList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-void
.end method


# virtual methods
.method public getMediaData(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "index"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_0

    .line 1325
    const/4 v0, 0x0

    .line 1327
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaDataCount()I
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_0

    .line 1334
    const/4 v0, 0x0

    .line 1336
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMediaTexture(I)Lcom/htc/sunny2/Texture;
    .locals 4
    .parameter "index"

    .prologue
    .line 1348
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/Preparator;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 1349
    .local v0, pre:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    if-nez v0, :cond_1

    .line 1350
    const/4 v2, 0x0

    .line 1367
    :cond_0
    :goto_0
    return-object v2

    .line 1352
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1354
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 1355
    .local v1, texture:Lcom/htc/sunny2/Texture;
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 1356
    .local v2, textureHQ:Lcom/htc/sunny2/Texture;
    if-nez v2, :cond_0

    move-object v2, v1

    .line 1362
    goto :goto_0

    .line 1367
    .end local v1           #texture:Lcom/htc/sunny2/Texture;
    .end local v2           #textureHQ:Lcom/htc/sunny2/Texture;
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    goto :goto_0
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;)V
    .locals 0
    .parameter "mediaList"

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunny2/IMediaList;

    .line 1319
    return-void
.end method
