.class public Lcom/htc/album/AlbumMain/ActivityMainDropList;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "ActivityMainDropList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumMain/ActivityMainDropList$1;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainDropList"

.field private static final mPanelManager:Lcom/htc/album/AlbumMain/ActivityPanelManager;


# instance fields
.field private final INVALID_VALUE:I

.field private final LAST_FOCUSED_TAB_RES:Ljava/lang/String;

.field private mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

.field private mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

.field private mDropDownButtonClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;

.field private mIntent:Landroid/content/Intent;

.field private mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

.field protected mLastFocusedIndex:I

.field private mRestoredFocusedTab:Ljava/lang/String;

.field private mTabLaunchResource:Ljava/lang/String;

.field private mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

.field private mbCheckLaunchDMC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/htc/album/AlbumMain/ActivityPanelManager;

    invoke-direct {v0}, Lcom/htc/album/AlbumMain/ActivityPanelManager;-><init>()V

    sput-object v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mPanelManager:Lcom/htc/album/AlbumMain/ActivityPanelManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    .line 35
    iput v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->INVALID_VALUE:I

    .line 36
    const-string v0, "last_focused_tab"

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->LAST_FOCUSED_TAB_RES:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    .line 39
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    .line 40
    iput v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    .line 43
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    .line 577
    return-void
.end method

.method public static PanelManager()Lcom/htc/album/AlbumMain/ActivityPanelManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mPanelManager:Lcom/htc/album/AlbumMain/ActivityPanelManager;

    return-object v0
.end method

.method static synthetic access$000(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/AlbumMain/AdapterDropList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/opensense/plugin/TabPlugin;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->openDropListItem(Lcom/htc/opensense/plugin/TabPlugin;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/TabPluginCtrl/TabOrderManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onCustomizePluginList()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/AlbumMain/ActivityMainDropList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onUpdateDropList(Z)V

    return-void
.end method

.method private getTabIndex(Ljava/lang/String;)I
    .locals 9
    .parameter "szTabRes"

    .prologue
    .line 527
    const/4 v3, -0x1

    .line 529
    .local v3, nTabIndex:I
    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-nez v6, :cond_0

    .line 531
    const-string v6, "ActivityMainDropList"

    const-string v7, "[HTCAlbum][ActivityMainDropList][getTabIndex]: no adapter..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 572
    .end local v3           #nTabIndex:I
    .local v4, nTabIndex:I
    :goto_0
    return v4

    .line 535
    .end local v4           #nTabIndex:I
    .restart local v3       #nTabIndex:I
    :cond_0
    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v6}, Lcom/htc/album/AlbumMain/AdapterDropList;->getCount()I

    move-result v0

    .line 536
    .local v0, nCount:I
    const/4 v5, 0x0

    .line 538
    .local v5, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const-string v1, ""

    .line 544
    .local v1, nFocusedTabRes:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 545
    move-object v1, p1

    .line 553
    :goto_1
    const-string v6, "ActivityMainDropList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ActivityMainDropList][getTabIndex]: Find: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    if-nez v1, :cond_3

    move v4, v3

    .line 555
    .end local v3           #nTabIndex:I
    .restart local v4       #nTabIndex:I
    goto :goto_0

    .line 548
    .end local v4           #nTabIndex:I
    .restart local v3       #nTabIndex:I
    :cond_1
    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 549
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    goto :goto_1

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    goto :goto_1

    .line 557
    :cond_3
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_2
    if-le v0, v2, :cond_6

    .line 559
    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v6, v2}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v5, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v5       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v5, :cond_5

    .line 557
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 564
    :cond_5
    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 566
    move v3, v2

    .line 567
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    .line 568
    const-string v6, "ActivityMainDropList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ActivityMainDropList][getTabIndex]: Bingo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v4, v3

    .line 572
    .end local v3           #nTabIndex:I
    .restart local v4       #nTabIndex:I
    goto :goto_0
.end method

.method private initializeSourceList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 470
    .local v0, actTop:Landroid/app/Activity;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 472
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    .line 474
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    if-nez v2, :cond_1

    .line 475
    new-instance v2, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    invoke-direct {v2, p0, v4}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V

    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    if-nez v2, :cond_2

    .line 481
    new-instance v2, Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    .line 486
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->enableDropList()V

    .line 491
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onCustomizePluginList()V

    .line 492
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onUpdateDropList(Z)V

    .line 495
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 497
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    const-string v3, "tab_default"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, tabdefault:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 499
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    .line 503
    .end local v1           #tabdefault:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 501
    .restart local v1       #tabdefault:Ljava/lang/String;
    :cond_4
    iput-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    goto :goto_0
.end method

.method private launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    .locals 7
    .parameter "plugin"
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 143
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: no package name..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v4, "ActivityMainDropList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: 1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v1, bundleArg:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isTabMediaServer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: dlna service..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    const-string v5, "browse_info"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    const-string v4, "browse_info"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v4, v1, v5}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 178
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/helper/UserProfilingLog;->logSourceSwitch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    const/4 v2, 0x0

    .line 164
    .local v2, bundleSocial:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 165
    .local v3, intenteSocial:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "social_bundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_1

    .line 168
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: social bundle..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v4, "social_intent"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #intenteSocial:Landroid/content/Intent;
    check-cast v3, Landroid/content/Intent;

    .line 170
    .restart local v3       #intenteSocial:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 172
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: social intent..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "social_intent"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method private onAutoLaunch()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-direct {p0, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getTabIndex(Ljava/lang/String;)I

    move-result v6

    .line 522
    .local v6, nTabIndex:I
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    const/4 v2, -0x1

    if-ne v2, v6, :cond_0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 523
    const-string v0, "ActivityMainDropList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainDropList][onAutoLaunch]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void

    :cond_0
    move v3, v6

    .line 522
    goto :goto_0
.end method

.method private onCustomizePluginList()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->reorderPlugins(Landroid/content/Context;)V

    .line 507
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->removeDisabledPlugins(Landroid/content/Context;)V

    .line 508
    return-void
.end method

.method private onUpdateDropList(Z)V
    .locals 4
    .parameter "bIsSynced"

    .prologue
    .line 511
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->getOrderedPluginList()Ljava/util/List;

    move-result-object v0

    .line 512
    .local v0, listPlugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1, v0, p1}, Lcom/htc/album/AlbumMain/AdapterDropList;->setAdapterList(Ljava/util/List;Z)V

    .line 515
    const-string v1, "ActivityMainDropList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainDropList][onUpdateDropList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_0
    return-void
.end method

.method private openDropListItem(Lcom/htc/opensense/plugin/TabPlugin;)V
    .locals 3
    .parameter "plugin"

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 128
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isTabLocalAlbum(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 131
    .local v0, childIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    .line 138
    .end local v0           #childIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private prepareCameraMode()V
    .locals 3

    .prologue
    .line 324
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    :cond_2
    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v1

    .line 337
    .local v1, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v2, :cond_0

    .line 340
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    .end local v1           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->onPrepareFullscreenMode()V

    goto :goto_0
.end method


# virtual methods
.method public enableDropList()V
    .locals 8

    .prologue
    .line 430
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v4, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][enableDropList]: Begin..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/4 v5, 0x1

    new-instance v6, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V

    .line 436
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iget-object v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 437
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iget-object v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 439
    const/4 v4, -0x1

    iget v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    if-eq v4, v5, :cond_2

    .line 441
    const/4 v2, 0x0

    .line 444
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    iget v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_1
    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, szName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v4, :cond_2

    .line 456
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 457
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    .line 461
    .end local v2           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    .end local v3           #szName:Ljava/lang/String;
    :cond_2
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][enableDropList]: End..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    .restart local v2       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :catch_0
    move-exception v1

    .line 448
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][enableDropList]: no plugin..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstance"

    .prologue
    .line 267
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onCreate]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 269
    new-instance v0, Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/AlbumMain/AdapterDropList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    .line 270
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterDropList;->onCreate()V

    .line 271
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->initializeSourceList()V

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 276
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onCreate]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public onDelayedSourceList()V
    .locals 2

    .prologue
    .line 377
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onDelayedSourceList]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isSynced()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    if-nez v0, :cond_0

    .line 383
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onDelayedSourceList]: threadReqMediaList..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    .line 385
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->start()V

    .line 387
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 311
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onDestroy]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterDropList;->onDestroy()V

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    .line 320
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDestroy()V

    .line 321
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 415
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 421
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onMessage(Landroid/os/Message;)Z

    .line 423
    :goto_0
    return v0

    .line 418
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onDelayedSourceList()V

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1456
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "newIntent"

    .prologue
    const/4 v2, 0x0

    .line 182
    const-string v1, "ActivityMainDropList"

    const-string v3, "[HTCAlbum][ActivityMainDropList][onNewIntent]: Begin"

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->setIntent(Landroid/content/Intent;)V

    .line 186
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-nez v1, :cond_1

    .line 188
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onNewIntent]: skip..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 194
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 195
    .local v7, actTop:Landroid/app/Activity;
    if-nez v7, :cond_2

    move-object v7, p0

    .line 196
    :cond_2
    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    .line 201
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->prepareCameraMode()V

    .line 203
    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->checkAndLaunchDMC(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 205
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    const-string v3, "tab_default"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, tabdefault:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    .line 214
    .end local v11           #tabdefault:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a002d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    .line 219
    :cond_4
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 221
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterDropList;->getCount()I

    move-result v8

    .line 222
    .local v8, count:I
    const/4 v10, 0x0

    .line 223
    .local v10, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_2
    if-ge v4, v8, :cond_8

    .line 225
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1, v4}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v10, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v10       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v10, :cond_7

    .line 223
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 211
    .end local v4           #nIndex:I
    .end local v8           #count:I
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    .restart local v11       #tabdefault:Ljava/lang/String;
    :cond_6
    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    goto :goto_1

    .line 227
    .end local v11           #tabdefault:Ljava/lang/String;
    .restart local v4       #nIndex:I
    .restart local v8       #count:I
    .restart local v10       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_7
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    const-wide/16 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 263
    .end local v4           #nIndex:I
    .end local v8           #count:I
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_8
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    goto/16 :goto_0

    .line 236
    :cond_9
    const/4 v10, 0x0

    .line 237
    .restart local v10       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    move-object v10, v0

    .line 241
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_4
    if-eqz v10, :cond_0

    .line 253
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v1, :cond_a

    .line 255
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 258
    :cond_a
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onItemClick]: back to default... "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, v10, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_3

    .line 243
    :catch_0
    move-exception v9

    .line 245
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onNewIntent]: no plugin or plugin.getActivityIntent() fali"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onPause]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPause()V

    .line 292
    iput-boolean v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    .line 296
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromMainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onPause]: Finish by called from main activity."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/album/helper/SyncControlManager;->syncAllServices(Landroid/content/Context;Z)V

    .line 302
    iget v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v1, :cond_1

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v0       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v0, :cond_2

    .line 308
    .end local v0           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_1
    :goto_0
    return-void

    .line 306
    .restart local v0       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 406
    const-string v0, "last_focused_tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    .line 408
    const-string v0, "ActivityMainDropList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainDropList][onRestoreInstanceState]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onResume]: Begin..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onResume()V

    .line 283
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/album/helper/SyncControlManager;->syncAllServices(Landroid/content/Context;Z)V

    .line 285
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onResume]: End..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onResumeFragment()V
    .locals 3

    .prologue
    .line 355
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onResumeFragment]: Begin..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isSynced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    const/16 v0, 0x1456

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onPostMessage(ILjava/lang/Object;I)V

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onAutoLaunch()V

    .line 367
    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    if-nez v0, :cond_1

    .line 369
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->checkAndLaunchDMC(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->prepareCameraMode()V

    .line 373
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onResumeFragment]: End..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 390
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 392
    :cond_0
    const-string v1, "last_focused_tab"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    const/4 v0, 0x0

    .line 397
    .local v0, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v0       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    .line 401
    const-string v1, "last_focused_tab"

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "ActivityMainDropList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainDropList][onSaveInstanceState]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartFragment()V
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->prepareCameraMode()V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    .line 350
    return-void
.end method

.method public setDropDownButtonClickListener(Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mDropDownButtonClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;

    .line 67
    return-void
.end method
