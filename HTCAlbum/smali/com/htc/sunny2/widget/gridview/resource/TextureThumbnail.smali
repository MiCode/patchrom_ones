.class public Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;
.super Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
.source "TextureThumbnail.java"


# static fields
.field public static final NAME_TEXTUREE_3D:Ljava/lang/String; = "NAME_TEXTUREE_3D"

.field public static final NAME_TEXTUREE_ARROW_DOWN:Ljava/lang/String; = "NAME_TEXTUREE_ARROW_DOWN"

.field public static final NAME_TEXTUREE_BESTSHOT:Ljava/lang/String; = "NAME_TEXTUREE_BESTSHOT"

.field public static final NAME_TEXTUREE_BURSTSHOT:Ljava/lang/String; = "NAME_TEXTUREE_BURSTSHOT"

.field public static final NAME_TEXTUREE_DELETE:Ljava/lang/String; = "NAME_TEXTUREE_DELETE"

.field public static final NAME_TEXTUREE_DRM:Ljava/lang/String; = "NAME_TEXTUREE_DRM"

.field public static final NAME_TEXTUREE_DRM_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_DRM_CORRUPT"

.field public static final NAME_TEXTUREE_IMAGE_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_IMAGE_CORRUPT"

.field public static final NAME_TEXTUREE_INKED:Ljava/lang/String; = "NAME_TEXTUREE_INKED"

.field public static final NAME_TEXTUREE_PICKED:Ljava/lang/String; = "NAME_TEXTUREE_PICKED"

.field public static final NAME_TEXTUREE_PLAYABLE:Ljava/lang/String; = "NAME_TEXTUREE_PLAYABLE"

.field public static final NAME_TEXTUREE_SELECTED:Ljava/lang/String; = "NAME_TEXTUREE_SELECTED"

.field public static final NAME_TEXTUREE_UNPICKED:Ljava/lang/String; = "NAME_TEXTUREE_UNPICKED"

.field public static final NAME_TEXTUREE_VIDEO_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_VIDEO_CORRUPT"

.field public static final NAME_TEXTURE_BACKGROUND_DARK:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_DARK"

.field public static final NAME_TEXTURE_BACKGROUND_LIGHT:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_LIGHT"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;-><init>()V

    .line 20
    const-string v1, "TextureThumbnail"

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->LOG_TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, resid:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_DARK"

    const v3, 0x7f020003

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemHeight()I

    move-result v5

    invoke-static {p1, v3, v4, v5}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_LIGHT"

    const v3, 0x7f020002

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemHeight()I

    move-result v5

    invoke-static {p1, v3, v4, v5}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_DRM"

    const v3, 0x7f02002d

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_PLAYABLE"

    const v3, 0x208008b

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_IMAGE_CORRUPT"

    const v3, 0x7f020025

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_VIDEO_CORRUPT"

    const v3, 0x7f020023

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_DRM_CORRUPT"

    const v3, 0x7f02001f

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_ARROW_DOWN"

    const v3, 0x7f020020

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Checkbox_on(Landroid/content/Context;)I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_PICKED"

    invoke-static {p1, v0}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Checkbox_off(Landroid/content/Context;)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_UNPICKED"

    invoke-static {p1, v0}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GridViewSelector(Landroid/content/Context;)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemHeight()I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_DELETE"

    const v3, 0x20800f3

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_INKED"

    const v3, 0x7f02003b

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_BURSTSHOT"

    const v3, 0x7f020029

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_BESTSHOT"

    const v3, 0x7f020030

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_3D"

    const v3, 0x7f020027

    invoke-static {p1, v3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method


# virtual methods
.method protected getItemHeight()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method protected getItemWidth()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 123
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

    .line 125
    .local v1, t:Lcom/htc/sunny2/Texture;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 128
    .end local v1           #t:Lcom/htc/sunny2/Texture;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 129
    return-void
.end method
