.class public Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "ActivityMainWriteComment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainWriteComment"


# instance fields
.field private final FOOTER_BAR_ONLINE_WRITE_COMMENTS:I

.field private mEditText:Lcom/htc/widget/HtcEditText;

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

.field private mEnableCommentBtn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->FOOTER_BAR_ONLINE_WRITE_COMMENTS:I

    .line 41
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    .line 44
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onWriteComment()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    return v0
.end method

.method private initPageComponents()V
    .locals 5

    .prologue
    const v1, 0x7f030006

    const v4, 0x2020005

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 68
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const v0, 0x2090004

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setContentView(I)V

    .line 71
    invoke-static {p0, v1}, Lcom/htc/album/picker/PickerConstants;->addBodyToEWL(Landroid/app/Activity;I)Lcom/htc/widget/EditWindowLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    .line 80
    :goto_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setupFooterButtons(I)V

    .line 83
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020004

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 84
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020007

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 85
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, v4, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 86
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    new-instance v1, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V

    invoke-virtual {v0, v4, v1}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x20402e5

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setCenterButtonLabel(I)V

    .line 95
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 107
    :goto_1
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcEditText;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    .line 108
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setMode(I)V

    .line 109
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    new-instance v1, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 140
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setContentView(I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 100
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v3, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onHandleActionBarBarLayoutChange()V

    .line 104
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onWriteComment()V
    .locals 4

    .prologue
    .line 193
    const-string v2, "ActivityMainWriteComment"

    const-string v3, "[HTCAlbum][ActivitymainWriteComment][onClick]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, szComment:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "comment_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setResult(ILandroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->finish()V

    .line 202
    return-void
.end method

.method private setEditPadding(II)V
    .locals 3
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 280
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 281
    .local v0, editLayout:Landroid/widget/RelativeLayout;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 282
    return-void
.end method


# virtual methods
.method public RelayoutPageView()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public enableCommentBtn(Z)V
    .locals 2
    .parameter "enableBtn"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    .line 144
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020005

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    goto :goto_0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 154
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onHandleActionBarBarLayoutChange()V

    .line 155
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onWriteComment()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->initPageComponents()V

    .line 51
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onHandleActionBarBarLayoutChange()V

    .line 53
    return-void
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 218
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 219
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->enableRightFooter()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 220
    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Note_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20402e5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 222
    return-object v0
.end method

.method protected onHandleActionBarBarLayoutChange()V
    .locals 5

    .prologue
    .line 257
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v2, 0x0

    .line 262
    .local v2, rightPadding:I
    const/4 v0, 0x0

    .line 263
    .local v0, bottomPadding:I
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 264
    .local v1, nOrientation:I
    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    .line 267
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v2

    .line 275
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setEditPadding(II)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    .line 272
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 63
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2
    .parameter "footer"

    .prologue
    .line 227
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 228
    .local v0, btnComment:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->RelayoutPageView()V

    .line 59
    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
