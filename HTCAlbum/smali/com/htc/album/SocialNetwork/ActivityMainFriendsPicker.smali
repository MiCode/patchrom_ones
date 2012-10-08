.class public Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;
.source "ActivityMainFriendsPicker.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;


# static fields
.field private static final FOOTER_BAR_LIVE_FRIEND_PICKER_VIEW:I = 0x14

.field private static final HEADER_BAR_LIVE_FRIEND_PICKER_VIEW:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainFriendsPicker"


# instance fields
.field private mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 51
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    return-object v0
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 3
    .parameter "nLayoutType"

    .prologue
    .line 234
    const-string v0, "ActivityMainFriendsPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainFriendsPicker][RelayoutPageView]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method protected createAdapter()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setDataRequest(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method protected createListView()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][createListView]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewFriends;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    .line 229
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onCreate()V

    goto :goto_0
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public initPageComponents()V
    .locals 9

    .prologue
    const v8, 0x7f0a002e

    const v4, 0x7f03002a

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 149
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const v3, 0x2090004

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->setContentView(I)V

    .line 152
    invoke-static {p0, v4}, Lcom/htc/album/picker/PickerConstants;->addBodyToEWL(Landroid/app/Activity;I)Lcom/htc/widget/EditWindowLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    .line 159
    :goto_0
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->initPageComponents()V

    .line 165
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v3, v7}, Lcom/htc/widget/EditWindowLayout;->setupFooterButtons(I)V

    .line 168
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v4, 0x20401ee

    invoke-virtual {v3, v4}, Lcom/htc/widget/EditWindowLayout;->setLeftButtonLabel(I)V

    .line 169
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v4, 0x2020004

    new-instance v5, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$1;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 174
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Lcom/htc/widget/EditWindowLayout;->setRightButtonLabel(I)V

    .line 175
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v4, 0x2020007

    new-instance v5, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 180
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v3}, Lcom/htc/widget/EditWindowLayout;->initEditTitleBarStyle()V

    .line 181
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v3, v8}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(I)V

    .line 204
    :goto_1
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->setContentView(I)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v3, :cond_2

    .line 187
    new-instance v3, Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 188
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    .line 191
    :cond_2
    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 192
    .local v2, viewRoot:Landroid/view/ViewGroup;
    const v3, 0x7f09003c

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 193
    .local v0, contentView:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v3, v2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 194
    const v3, 0x7f09003a

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 195
    .local v1, mainViewWrapper:Landroid/view/ViewGroup;
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v6, v6, v3, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 201
    :goto_2
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 202
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v4, 0x14

    invoke-virtual {v3, v7, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    goto :goto_1

    .line 198
    :cond_3
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v6, v6, v6, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onHandleActionBarBarLayoutChange()V

    .line 77
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 78
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 80
    .local v0, mainViewWrapper:Landroid/view/ViewGroup;
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 86
    .end local v0           #mainViewWrapper:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local v0       #mainViewWrapper:Landroid/view/ViewGroup;
    :cond_1
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
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
    .line 316
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onConfirm()V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onCancel()V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onCreate]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 70
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onHandleActionBarBarLayoutChange()V

    .line 71
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onCreate]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 302
    const-string v3, "ActivityMainFriendsPicker"

    const-string v4, "[HtcAlbum][ActivityMainFriendsPicker][onCreateFooterBar]  "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 306
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 307
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 308
    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0001

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 310
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 292
    const-string v1, "ActivityMainFriendsPicker"

    const-string v2, "[HtcAlbum][ActivityMainFriendsPicker][onCreateHeaderBar]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 297
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onDestroy()V

    .line 122
    :cond_2
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x2738

    const/4 v3, 0x0

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 282
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    .line 285
    :goto_0
    :sswitch_0
    return-void

    .line 272
    :sswitch_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 275
    :sswitch_2
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 278
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mLoadingText:Ljava/lang/String;

    .line 279
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_3
        0x274f -> :sswitch_1
        0x2750 -> :sswitch_2
        0x2761 -> :sswitch_0
        0x4e84 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_0
    return v0

    .line 251
    :pswitch_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v1, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onConfirm()V

    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v1, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onCancel()V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 102
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 380
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 91
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->getMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->enableSourceContentPadding(Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public setActivityTitle()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public syncExternalRequest()V
    .locals 4

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    const-string v2, "service_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 141
    :cond_1
    :goto_0
    const-string v1, "ActivityMainFriendsPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainFriendsPicker][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "ActivityMainFriendsPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainFriendsPicker][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    return-void

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method
