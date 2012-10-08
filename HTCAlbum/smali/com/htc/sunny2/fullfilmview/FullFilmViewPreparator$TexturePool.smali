.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TexturePool"
.end annotation


# instance fields
.field private mTexturePool:[Lcom/htc/sunny2/Texture;

.field private textureCounts:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V
    .locals 3
    .parameter
    .parameter "textureCacheSize"

    .prologue
    const/4 v2, 0x0

    .line 235
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    .line 233
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    .line 236
    new-array v1, p2, [Lcom/htc/sunny2/Texture;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aput-object v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 231
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    return v0
.end method


# virtual methods
.method public get()Lcom/htc/sunny2/Texture;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aget-object v1, v3, v0

    .line 246
    .local v1, reusableTexture:Lcom/htc/sunny2/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aput-object v2, v3, v0

    .line 247
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    .line 252
    .end local v1           #reusableTexture:Lcom/htc/sunny2/Texture;
    :goto_1
    return-object v1

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 252
    goto :goto_1
.end method

.method public put(Lcom/htc/sunny2/Texture;)Z
    .locals 2
    .parameter "textureHandle"

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunny2/Texture;

    aput-object p1, v1, v0

    .line 259
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    .line 261
    const/4 v1, 0x1

    .line 264
    :goto_1
    return v1

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
