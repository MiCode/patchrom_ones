.class public Lcom/htc/album/addons/slideshow/SlideShowController;
.super Landroid/widget/FrameLayout;
.source "SlideShowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;
    }
.end annotation


# static fields
.field private static final CONTROL_BAR_SHOW_DURATION:I = 0xbb8

.field public static final GO_BACK_TYPE_DEFAULT:I = 0x0

.field protected static final MSG_FADE_OUT:I = 0x1

.field protected static final MSG_RESET_TO_3D_SBS_STATUS:I = 0x5

.field protected static final MSG_SHOW_PROGRESS:I = 0x2

.field protected static final MSG_UPDATE_BUTTON:I = 0x3


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field protected mContext:Landroid/app/Activity;

.field protected mDecor:Landroid/view/View;

.field protected mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

.field protected mFromXml:Z

.field private mIsPlaying:Z

.field protected mListenersSet:Z

.field protected mNextButton:Lcom/htc/widget/HtcRimButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field protected mPauseButton:Lcom/htc/widget/HtcRimButton;

.field protected mPauseListener:Landroid/view/View$OnClickListener;

.field protected mPrevButton:Lcom/htc/widget/HtcRimButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field protected mRoot:Landroid/view/View;

.field protected mShowing:Z

.field protected mWindow:Landroid/view/Window;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "isPlaying"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "SlideShowController"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->TAG:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    .line 26
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 50
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mFromXml:Z

    .line 52
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 59
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    .line 387
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController$1;-><init>(Lcom/htc/album/addons/slideshow/SlideShowController;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 67
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    .line 68
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->initFloatingWindow()V

    .line 69
    iput-boolean p2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 71
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 72
    return-void
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 170
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 172
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    const v1, 0x20800b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    const v1, 0x20800bb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public IsPlaying()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    return v0
.end method

.method public addButton(Landroid/content/Context;IIII)V
    .locals 6
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    const v5, 0x2080013

    const v4, 0x2080012

    const v3, 0x2080011

    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, button:Lcom/htc/widget/HtcRimButton;
    sparse-switch p3, :sswitch_data_0

    .line 470
    :goto_0
    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 471
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 472
    return-void

    .line 455
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 456
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    goto :goto_0

    .line 459
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 460
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    const v1, 0x2080014

    const v2, 0x2080015

    const v3, 0x2080016

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    goto :goto_0

    .line 463
    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 464
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    goto :goto_0

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0x4f

    const/16 v4, 0x3e

    const/4 v1, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 320
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v1

    .line 325
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    .line 330
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doPause(Z)V
    .locals 1
    .parameter "doCallback"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 189
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPauseTarget()V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 193
    return-void
.end method

.method protected doPauseResume()V
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 244
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPauseTarget()V

    .line 263
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 265
    return-void

    .line 257
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 258
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPlayTarget()Z

    goto :goto_0
.end method

.method public doPlay(Z)V
    .locals 1
    .parameter "doCallback"

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 201
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPlayTarget()Z

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 205
    return-void
.end method

.method public enableNextBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 215
    return-void
.end method

.method public enablePrevBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 210
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 230
    :cond_0
    return-void
.end method

.method protected initControllerView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    .line 108
    const v0, 0x7f090030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    .line 109
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 110
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    .line 111
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    .line 114
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installPrevNextListeners()V

    .line 117
    return-void
.end method

.method protected initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mWindowManager:Landroid/view/WindowManager;

    .line 94
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f03003a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShowController;->initControllerView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->setFocusable(Z)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->setFocusableInTouchMode(Z)V

    .line 101
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShowController;->setDescendantFocusability(I)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->requestFocus()Z

    .line 103
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 104
    return-void
.end method

.method protected installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 410
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 402
    goto :goto_0

    :cond_3
    move v1, v2

    .line 408
    goto :goto_1
.end method

.method public relayoutByOrientation(I)V
    .locals 0
    .parameter "nOrientation"

    .prologue
    .line 301
    return-void
.end method

.method public setControllerEventListener(Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    .line 477
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "next"
    .parameter "prev"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 424
    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    .line 427
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installPrevNextListeners()V

    .line 431
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show(I)V

    .line 137
    return-void
.end method

.method public show(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 159
    return-void
.end method

.method public updateController()V
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    goto :goto_0
.end method
