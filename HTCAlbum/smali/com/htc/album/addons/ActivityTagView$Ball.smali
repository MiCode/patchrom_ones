.class public Lcom/htc/album/addons/ActivityTagView$Ball;
.super Landroid/view/View;
.source "ActivityTagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/ActivityTagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ball"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private r:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FFII)V
    .locals 2
    .parameter "context"
    .parameter "x"
    .parameter "y"
    .parameter "r"
    .parameter "color"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 209
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->mPaint:Landroid/graphics/Paint;

    .line 213
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iput p2, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->x:F

    .line 215
    iput p3, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->y:F

    .line 216
    iput p4, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->r:I

    .line 217
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    iget v0, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->x:F

    iget v1, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->y:F

    iget v2, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    return-void
.end method

.method public setBallPos(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 220
    iput p1, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->x:F

    .line 221
    iput p2, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->y:F

    .line 222
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView$Ball;->invalidate()V

    .line 223
    return-void
.end method
