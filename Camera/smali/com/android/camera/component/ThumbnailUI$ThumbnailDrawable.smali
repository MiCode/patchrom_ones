.class final Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ThumbnailUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThumbnailDrawable"
.end annotation


# instance fields
.field private final m_ThumbnailBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/ThumbnailUI;Landroid/content/res/Resources;)V
    .locals 3
    .parameter
    .parameter "res"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    .line 89
    const v0, 0x7f020046

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    .line 90
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    const v1, 0x7f0b00cb

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 91
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    const v1, 0x7f0b00cc

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 92
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const v2, 0x7f0b00cd

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 93
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const v2, 0x7f0b00ce

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 94
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .local v1, srcRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 110
    .local v0, paint:Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 112
    .end local v0           #paint:Landroid/graphics/Paint;
    .end local v1           #srcRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
