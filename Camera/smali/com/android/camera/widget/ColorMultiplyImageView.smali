.class public Lcom/android/camera/widget/ColorMultiplyImageView;
.super Landroid/widget/ImageView;
.source "ColorMultiplyImageView.java"


# instance fields
.field private m_ApplyColorMultiplication:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method static synthetic access$001(Lcom/android/camera/widget/ColorMultiplyImageView;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public final applyColorMultiplication(Z)V
    .locals 0
    .parameter "apply"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/camera/widget/ColorMultiplyImageView;->m_ApplyColorMultiplication:Z

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/widget/ColorMultiplyImageView;->invalidate()V

    .line 31
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-boolean v1, p0, Lcom/android/camera/widget/ColorMultiplyImageView;->m_ApplyColorMultiplication:Z

    if-nez v1, :cond_0

    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/camera/widget/ColorMultiplyImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/camera/widget/ColorMultiplyImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/camera/widget/ColorMultiplyImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/camera/widget/ColorMultiplyImageView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView$1;-><init>(Lcom/android/camera/widget/ColorMultiplyImageView;Landroid/graphics/Canvas;)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/camera/widget/ColorMultiplyRenderer;->render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
