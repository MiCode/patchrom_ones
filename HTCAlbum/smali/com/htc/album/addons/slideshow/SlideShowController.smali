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

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "SlideShowController"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->TAG:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    .line 29
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mFromXml:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    .line 403
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController$1;-><init>(Lcom/htc/album/addons/slideshow/SlideShowController;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 70
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    .line 71
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->initFloatingWindow()V

    .line 72
    iput-boolean p2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 74
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 75
    return-void
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 186
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    const v1, 0x20800b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    goto :goto_0

    .line 192
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
    .line 351
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    return v0
.end method

.method public addButton(Landroid/content/Context;IIII)V
    .locals 4
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 468
    .local v0, button:Lcom/htc/widget/HtcRimButton;
    sparse-switch p3, :sswitch_data_0

    .line 492
    :goto_0
    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 493
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 494
    return-void

    .line 471
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 472
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 473
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 474
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    .line 477
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 478
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 479
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 480
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    .line 483
    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 484
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 485
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 486
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    .line 468
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

    .line 335
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 336
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v1

    .line 341
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

    .line 346
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doPause(Z)V
    .locals 1
    .parameter "doCallback"

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 205
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPauseTarget()V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 209
    return-void
.end method

.method protected doPauseResume()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 260
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPauseTarget()V

    .line 279
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 281
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 274
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPlayTarget()Z

    goto :goto_0
.end method

.method public doPlay(Z)V
    .locals 1
    .parameter "doCallback"

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 217
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPlayTarget()Z

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 221
    return-void
.end method

.method public enableNextBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 231
    return-void
.end method

.method public enablePrevBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 226
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 246
    :cond_0
    return-void
.end method

.method protected initControllerView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    .line 118
    const v0, 0x7f090030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    .line 119
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 120
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 121
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 122
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    .line 123
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 124
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 125
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    .line 128
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 129
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 130
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 132
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installPrevNextListeners()V

    .line 133
    return-void
.end method

.method protected initFloatingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 96
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mWindowManager:Landroid/view/WindowManager;

    .line 97
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 98
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f03003a

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    .line 100
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 101
    .local v0, footer:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 102
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SLIDESHOW_FOOTER_HEIGHT:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getFooterBarBackground(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 106
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->initControllerView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->setFocusable(Z)V

    .line 110
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->setFocusableInTouchMode(Z)V

    .line 111
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->setDescendantFocusability(I)V

    .line 112
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->requestFocus()Z

    .line 113
    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 114
    return-void
.end method

.method protected installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 426
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 418
    goto :goto_0

    :cond_3
    move v1, v2

    .line 424
    goto :goto_1
.end method

.method public relayoutByOrientation(I)V
    .locals 0
    .parameter "nOrientation"

    .prologue
    .line 317
    return-void
.end method

.method public setControllerEventListener(Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    .line 499
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "next"
    .parameter "prev"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 440
    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    .line 443
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installPrevNextListeners()V

    .line 447
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show(I)V

    .line 153
    return-void
.end method

.method public show(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 175
    return-void
.end method

.method public updateController()V
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    goto :goto_0
.end method
