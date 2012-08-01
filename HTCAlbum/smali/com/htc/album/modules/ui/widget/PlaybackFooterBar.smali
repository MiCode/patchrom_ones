.class public Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;
.super Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
.source "PlaybackFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/GalleryFooterBar",
        "<",
        "Lcom/htc/widget/HtcFooter;",
        "Lcom/htc/album/modules/ui/widget/PlayerControllerButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "slideshowFooterLayout"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;-><init>(Landroid/content/Context;I)V

    .line 22
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, button:Lcom/htc/widget/HtcRimButton;
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v1, Lcom/htc/widget/HtcRimButton;

    .line 31
    .restart local v1       #button:Lcom/htc/widget/HtcRimButton;
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 32
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090032

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v1, Lcom/htc/widget/HtcRimButton;

    .line 33
    .restart local v1       #button:Lcom/htc/widget/HtcRimButton;
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 34
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v1, Lcom/htc/widget/HtcRimButton;

    .line 35
    .restart local v1       #button:Lcom/htc/widget/HtcRimButton;
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 38
    const v2, 0x7f030012

    if-ne v2, p2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 41
    .local v0, btn:Lcom/htc/widget/HtcFooterButton;
    if-eqz v0, :cond_0

    .line 43
    new-instance v2, Lcom/htc/album/modules/ui/widget/FooterButton;

    const/16 v3, 0x11

    const/4 v4, 0x3

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;-><init>(Lcom/htc/widget/HtcFooterButton;III)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 44
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    const v3, 0x7f0a0117

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextResource(I)V

    .line 45
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    iget-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 46
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    iget-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 47
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->getButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 48
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v2, v6}, Lcom/htc/album/modules/ui/widget/FooterButton;->lockBubbleExpandDirection(I)V

    .line 52
    .end local v0           #btn:Lcom/htc/widget/HtcFooterButton;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 53
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 19
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v0

    return-object v0
.end method

.method public addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;
    .locals 5
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 70
    .local v0, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/album/modules/ui/widget/PlayerControllerButton;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->getMaxButtonCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    move-object v1, v2

    .line 82
    :goto_0
    return-object v1

    .line 73
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v1

    .line 74
    .local v1, newButton:Lcom/htc/album/modules/ui/widget/PlayerControllerButton;
    if-nez v1, :cond_2

    move-object v1, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    goto :goto_0
.end method

.method public doCenterControlPanel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 152
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v4, Lcom/htc/widget/HtcFooter;

    const v5, 0x7f09002f

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 153
    .local v2, ly:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_0

    .line 155
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v4, Lcom/htc/widget/HtcFooter;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 156
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 159
    .local v1, fSizeSize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 160
    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v4, 0x6

    .line 161
    .local v3, nOffset:I
    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 164
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #fSizeSize:Landroid/graphics/Point;
    .end local v3           #nOffset:I
    :cond_0
    return-void
.end method

.method public findRimButton(I)Lcom/htc/widget/HtcRimButton;
    .locals 3
    .parameter "id"

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, button:Lcom/htc/widget/HtcRimButton;
    sparse-switch p1, :sswitch_data_0

    .line 141
    :goto_0
    return-object v0

    .line 128
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 129
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    goto :goto_0

    .line 131
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 132
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    goto :goto_0

    .line 134
    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 135
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    goto :goto_0

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x3

    return v0
.end method

.method public getMoreButton()Lcom/htc/album/modules/ui/widget/FooterButton;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    return-object v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 19
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;
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

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, button:Lcom/htc/widget/HtcRimButton;
    sparse-switch p3, :sswitch_data_0

    .line 109
    :goto_0
    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 112
    new-instance v1, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;-><init>(Lcom/htc/widget/HtcRimButton;III)V

    return-object v1

    .line 93
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 94
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    goto :goto_0

    .line 97
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 98
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    const v1, 0x2080014

    const v2, 0x2080015

    const v3, 0x2080016

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    goto :goto_0

    .line 101
    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 102
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V
    .locals 2
    .parameter "clickListener"
    .parameter "stateListener"

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/FooterButton;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setControlPanelEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 168
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    .line 169
    .local v0, btn:Lcom/htc/album/modules/ui/widget/ControlButton;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 172
    :cond_0
    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 176
    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 179
    :cond_2
    return-void
.end method
