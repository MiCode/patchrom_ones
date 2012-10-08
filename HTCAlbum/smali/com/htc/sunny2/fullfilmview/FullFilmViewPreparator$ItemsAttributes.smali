.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ItemsAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    }
.end annotation


# instance fields
.field private itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

.field private itemsCount:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "FullFilmViewPreparator.ItemsAttributes"

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .line 62
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aput-object v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0           #i:I
    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    .line 80
    return-void
.end method

.method public isFileCacheNotSaved(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 148
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileCacheNotSaved NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    :goto_0
    return v1

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 153
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 156
    iget-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    goto :goto_0
.end method

.method public isOffLineDecode(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 122
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffLineDecode NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    :goto_0
    return v1

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 127
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 130
    iget-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    goto :goto_0
.end method

.method public isTextureDirty(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 96
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTextureDirty NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    :goto_0
    return v1

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    .line 101
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-eqz v0, :cond_1

    .line 104
    iget-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->textureDirty:Z

    goto :goto_0
.end method

.method public reset(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "itemsCount"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 67
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    .line 69
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    new-array v0, v0, [Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .line 70
    return-void
.end method

.method public setFileCacheNotSaved(IZ)V
    .locals 4
    .parameter "index"
    .parameter "fileCacheNotSaved"

    .prologue
    .line 135
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFileCacheNotSaved NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 140
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 141
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    .line 142
    .restart local v0       #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 144
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    goto :goto_0
.end method

.method public setOffLineDecode(IZ)V
    .locals 4
    .parameter "index"
    .parameter "offLineDecode"

    .prologue
    .line 109
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffLineDecode NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 114
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 115
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    .line 116
    .restart local v0       #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 118
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    goto :goto_0
.end method

.method public setTextureDirty(IZ)V
    .locals 4
    .parameter "index"
    .parameter "dirty"

    .prologue
    .line 83
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTextureDirty NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    .line 88
    .local v0, attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    if-nez v0, :cond_2

    .line 89
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    .end local v0           #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    .line 90
    .restart local v0       #attrs:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    .line 92
    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->textureDirty:Z

    goto :goto_0
.end method
