.class public final Lcom/android/camera/widget/FocusAnimationView;
.super Landroid/widget/ImageView;
.source "FocusAnimationView.java"


# instance fields
.field private m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private m_FocusFail:I

.field private m_FocusSucess:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 17
    const v0, 0x7f02002c

    iput v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusSucess:I

    .line 18
    const v0, 0x7f020029

    iput v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusFail:I

    .line 27
    return-void
.end method


# virtual methods
.method public showFocusFail()V
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusFail:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FocusAnimationView;->setImageResource(I)V

    .line 54
    return-void
.end method

.method public showFocusSucess()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusSucess:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FocusAnimationView;->setImageResource(I)V

    .line 51
    return-void
.end method

.method public startFocus()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f020083

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FocusAnimationView;->setImageResource(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/widget/FocusAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 37
    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->invalidateSelf()V

    .line 40
    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 41
    return-void
.end method

.method public stopFocus()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 47
    return-void
.end method
