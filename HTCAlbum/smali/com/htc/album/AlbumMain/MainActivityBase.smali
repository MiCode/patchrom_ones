.class public Lcom/htc/album/AlbumMain/MainActivityBase;
.super Landroid/app/Activity;
.source "MainActivityBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;


# instance fields
.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mActionBarBackkeyListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 122
    new-instance v0, Lcom/htc/album/AlbumMain/MainActivityBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/MainActivityBase$1;-><init>(Lcom/htc/album/AlbumMain/MainActivityBase;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected enableSourceContentPadding(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 139
    return-void
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 89
    :goto_0
    return-object v1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 80
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 82
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstance"

    .prologue
    .line 28
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MainActivityBase;->requestWindowFeature(I)Z

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 31
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected onHandleActionBarBarLayoutChange()V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 147
    .local v0, nOrientation:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 35
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 36
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->enableActionBarUpdate()Z

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onEnableActionBarBackButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onEnableActionBarAppButton()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onUpdateActionBarTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onUpdateActionBarSecondaryTitle()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, ""

    return-object v0
.end method
