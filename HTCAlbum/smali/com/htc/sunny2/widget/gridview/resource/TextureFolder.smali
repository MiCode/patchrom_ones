.class public Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;
.super Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
.source "TextureFolder.java"


# static fields
.field public static final NAME_TEXTURE_SELECTED:Ljava/lang/String; = "NAME_TEXTURE_SELECTED"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "bkResid"
    .parameter "selectorId"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;-><init>()V

    .line 12
    invoke-static {p1, p2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 13
    .local v0, bkgTexture:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    invoke-static {p1, p3, v2, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 16
    .local v1, selectorTexture:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_SELECTED"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    .line 21
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/Texture;

    .line 23
    .local v1, t:Lcom/htc/sunny2/Texture;
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 26
    .end local v1           #t:Lcom/htc/sunny2/Texture;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 27
    return-void
.end method
