.class public Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;
.super Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;
.source "MfFragmentMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfFragmentMainExpandBrowser"

.field protected static final timerSearchDeviceCode:I = 0x1


# instance fields
.field private mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

.field protected mChildAlreadyAppend:Z

.field protected mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

.field protected mCurStartIdx:J

.field private mDelayUpdateList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mErrorReason:Ljava/lang/String;

.field protected mErrorTitle:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsIdleUpdateList:Z

.field private mIsScrolling:Z

.field private mItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemRequested:Ljava/lang/Object;

.field private mLayoutEmptyView:Landroid/widget/RelativeLayout;

.field private mLayoutTitle:Landroid/widget/RelativeLayout;

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field private mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field protected mbDestroy:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutTitle:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 73
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 74
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    .line 75
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 77
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z

    .line 78
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    .line 79
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    .line 85
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 87
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemRequested:Ljava/lang/Object;

    .line 90
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    .line 91
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 402
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 417
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    .line 450
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 922
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 1076
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onLaunchMediaListPage()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onMessageHandler2(Landroid/os/Message;)V

    return-void
.end method

.method private expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    .locals 7
    .parameter "item"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 362
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->getChildrenCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 363
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 365
    :cond_0
    if-nez p1, :cond_2

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, serverID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, containerID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->IsContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 374
    invoke-virtual {p1, v4}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->setCancelled(Z)V

    .line 377
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    .line 378
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 380
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 381
    invoke-virtual {p0, v5, v6, v5, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->initBrowse(JJ)V

    .line 382
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 384
    :cond_3
    if-eqz v1, :cond_1

    .line 387
    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 388
    invoke-virtual {p1, v4}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->setCancelled(Z)V

    .line 391
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerImg:Ljava/lang/String;

    .line 394
    const-string v2, "0"

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 395
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 396
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 397
    invoke-virtual {p0, v5, v6, v5, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->initBrowse(JJ)V

    .line 398
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0
.end method

.method private onLaunchMediaListPage()V
    .locals 11

    .prologue
    .line 475
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v7, :cond_0

    .line 548
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 484
    iget-wide v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 485
    const-string v7, "MfFragmentMainExpandBrowser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onLaunchMediaListPage]cancelBrowse"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_1
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServiceDirectory()Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    move-result-object v6

    .line 490
    .local v6, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerInfo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 492
    .local v5, serverInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addCurrentPageInfo()V

    .line 494
    const-string v7, "MfFragmentMainExpandBrowser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLaunchMediaListPage : top:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bottom:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 498
    .local v2, bundleNew:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v1, bunBrowse:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 502
    const-string v7, "server_id"

    iget-object v8, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v7, "server_name"

    iget-object v8, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_2
    if-eqz v6, :cond_3

    .line 508
    const-string v7, "directory_info"

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 512
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 514
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_4

    instance-of v7, v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    if-eqz v7, :cond_4

    .line 516
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 517
    .local v4, parentIntent:Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 519
    const-string v7, "directmode"

    const-string v8, "directmode"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    .end local v4           #parentIntent:Landroid/content/Intent;
    :cond_4
    const-string v7, "browse_info"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 532
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 533
    const-class v7, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaListThumbnail;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 536
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 537
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "goto_scene"

    const-string v8, "SceneDlnaGridview"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v7, "dlna_bundle"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 540
    const-class v7, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 541
    const/high16 v7, 0x400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private onMessageHandler2(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1090
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1093
    :sswitch_0
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum] Update list when scroll idle."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    .line 1097
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum] Update children list"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    goto :goto_0

    .line 1103
    :sswitch_1
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "searching timeout ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 1106
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1090
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4ea5 -> :sswitch_0
    .end sparse-switch
.end method

.method private setBrowseDirectory(Ljava/util/LinkedList;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1116
    .local p1, serverList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-nez v18, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v16

    .line 1122
    .local v16, parentActivity:Landroid/app/Activity;
    if-eqz v16, :cond_0

    .line 1125
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1127
    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 1128
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_0

    .line 1131
    const-string v18, "com.htc.album.action.DLNA_BROWSE_DMS_RECOVERY"

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1134
    const-string v18, "browse_info"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1136
    .local v3, bunBrowse:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 1139
    const-string v18, "server_id"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    .line 1140
    const-string v18, "server_name"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1145
    const-string v18, "directory_info"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1147
    .local v10, directoryInfo:Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1149
    .local v9, dirInfoSize:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-lt v9, v0, :cond_0

    .line 1152
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v17

    .line 1154
    .local v17, serverCount:I
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1156
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 1158
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1160
    .local v15, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1162
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1167
    .end local v15           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1170
    const/4 v4, 0x0

    .line 1171
    .local v4, childSelectedID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1172
    .local v6, childSelectedName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1174
    .local v5, childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const/4 v13, 0x1

    .line 1175
    .local v13, index:I
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 1176
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 1178
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 1180
    :goto_2
    if-ge v13, v9, :cond_3

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 1184
    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "setBrowseDirectory: current container id invalid"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1234
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getCurrentPageInfo()V

    .line 1237
    :cond_4
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1156
    .end local v4           #childSelectedID:Ljava/lang/String;
    .end local v5           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v6           #childSelectedName:Ljava/lang/String;
    .end local v13           #index:I
    .restart local v15       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1188
    .end local v15           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v4       #childSelectedID:Ljava/lang/String;
    .restart local v5       #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v6       #childSelectedName:Ljava/lang/String;
    .restart local v13       #index:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 1190
    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "setBrowseDirectory: current item invalid"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1194
    :cond_7
    move v8, v13

    .line 1196
    .local v8, curBrowseCacheIndex:I
    add-int/lit8 v13, v13, 0x4

    .line 1197
    if-ge v13, v9, :cond_8

    .line 1199
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #childSelectedID:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1200
    .restart local v4       #childSelectedID:Ljava/lang/String;
    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #childSelectedName:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1203
    .restart local v6       #childSelectedName:Ljava/lang/String;
    :cond_8
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1204
    .local v7, childrenList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->queryRecoveryContentList(Ljava/lang/String;Ljava/util/LinkedList;)Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-result-object v5

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-lez v18, :cond_9

    .line 1209
    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/htc/widget/MoreExpandableHtcListView;->expandAndSetChildrenWithOutAnimation(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 1211
    const-string v18, "MfFragmentMainExpandBrowser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[setBrowseDirecotry]ExpandChild : Container: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addDirectoryInfo()V

    .line 1213
    add-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v18, v8, 0x3

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addPagesInfo(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :cond_9
    :goto_4
    if-eqz v4, :cond_3

    .line 1225
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 1226
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 1227
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1229
    const/4 v4, 0x0

    .line 1231
    goto/16 :goto_2

    .line 1214
    :catch_0
    move-exception v11

    .line 1215
    .local v11, e:Ljava/lang/Exception;
    const-string v18, "MfFragmentMainExpandBrowser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setBrowseDirectory error:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private startSearchingTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1065
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1066
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1067
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "startSearchingTimer"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method private stopSearchingTimer()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1073
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "stopSearchingTimer"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    return-void
.end method


# virtual methods
.method protected addChildrenToListView(Ljava/util/LinkedList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    const/4 v2, 0x1

    .line 962
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v0, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z

    if-eqz v0, :cond_2

    .line 967
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[addChildrenToListView]: keep list and delay update bcz scrolling..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    .line 970
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    goto :goto_0

    .line 974
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 976
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    if-nez v0, :cond_3

    .line 978
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 979
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 980
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "ListView: append chidlren"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 984
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method public addMenu(Landroid/view/Menu;III)V
    .locals 2
    .parameter "menu"
    .parameter "menuItemId"
    .parameter "menuItemTextId"
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 552
    if-nez p1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 556
    .local v0, item:Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 558
    invoke-interface {p1, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public collapseAll()V
    .locals 2

    .prologue
    .line 1040
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "Collpase to root"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 1043
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->collapseAll()V

    .line 1047
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 1048
    return-void
.end method

.method public enable2Pane()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public enableAccessCamera(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 122
    return-void
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 139
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public enableSourceContentPadding(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 146
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    .local v1, param:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 149
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 0
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 133
    return-void
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public goParentFolder()V
    .locals 3

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v1, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "Move to parent folder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v0

    .line 1059
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public initPageComponents(Landroid/view/View;)V
    .locals 7
    .parameter "viewRoot"

    .prologue
    const/4 v6, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 328
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 330
    .local v2, bundleArg:Landroid/os/Bundle;
    const v3, 0x7f090055

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 332
    const v3, 0x7f090054

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 333
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 334
    new-instance v3, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-direct {v3, v0, v4}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    .line 336
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 337
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    .line 338
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V

    .line 339
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    .line 340
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 341
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;Z)V

    .line 343
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 344
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    .line 345
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 350
    const-string v3, "browse_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #bundle:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 352
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_0
    if-eqz v1, :cond_1

    .line 354
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemRequested:Ljava/lang/Object;

    .line 358
    :cond_1
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 197
    return-void
.end method

.method protected onConnectionCancel()V
    .locals 2

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 704
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableDLNAControl(Z)V

    .line 172
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onCreate(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 189
    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->initPageComponents(Landroid/view/View;)V

    .line 191
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    .line 269
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onDestroy()V

    .line 271
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    .line 272
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 273
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 275
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method protected onErrorCommunication(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 999
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1000
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1003
    :cond_0
    const/4 v1, 0x0

    .line 1004
    .local v1, nErrorID:I
    const-string v2, "error_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1006
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainFolderBrowser][onErrorCommunication]: Error Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    packed-switch v1, :pswitch_data_0

    .line 1019
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1021
    const/16 v2, 0x272c

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1012
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    .line 1013
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    .line 1014
    const/16 v2, 0x40a

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    .line 1026
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    .line 1027
    const/16 v2, 0x272b

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
    .end packed-switch
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 708
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const/16 v20, 0x0

    .line 712
    .local v20, size:I
    const/16 v21, 0x0

    .line 716
    .local v21, tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 746
    :sswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onErrorCommunication(Landroid/os/Message;)V

    .line 747
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 719
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onContentUpdate(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;

    move-result-object v21

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    goto :goto_0

    .line 726
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v14

    check-cast v14, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 731
    .local v14, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-eqz v14, :cond_0

    .line 734
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->getChildrenCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onContentUpdateComplete(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;I)Ljava/util/LinkedList;

    move-result-object v21

    .line 735
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    .line 737
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbBrowseComplete:Z

    if-eqz v2, :cond_0

    .line 739
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 740
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->setCancelled(Z)V

    goto :goto_0

    .line 752
    .end local v14           #itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    .line 757
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 758
    .local v13, itemAdd:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    if-nez v13, :cond_2

    .line 760
    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "SYNC_SERVER_ADD: null!!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 765
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v11, v0, :cond_3

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    .line 768
    .local v19, serverID:Ljava/lang/String;
    iget-object v2, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 765
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 772
    .end local v19           #serverID:Ljava/lang/String;
    :cond_3
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_ADD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance v21, Ljava/util/LinkedList;

    .end local v21           #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 775
    .restart local v21       #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    iget-object v3, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v0, v20

    int-to-long v6, v0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->appendRoot(Ljava/util/LinkedList;)V

    .line 779
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto/16 :goto_0

    .line 785
    .end local v11           #i:I
    .end local v13           #itemAdd:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v2, :cond_4

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    .line 792
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerList()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 793
    .local v18, listServer:Ljava/util/List;
    if-nez v18, :cond_5

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    .line 800
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    .line 802
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_ADD_LIST: size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    if-nez v20, :cond_6

    .line 807
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 810
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->BlockingChangeRoot(Ljava/util/LinkedList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    .line 812
    :catch_0
    move-exception v10

    .line 814
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking change root : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_2

    .line 823
    .end local v10           #e:Ljava/lang/Exception;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    .line 825
    new-instance v21, Ljava/util/LinkedList;

    .end local v21           #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 827
    .restart local v21       #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 829
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 830
    .local v16, listItem:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    int-to-long v6, v11

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 827
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 833
    .end local v16           #listItem:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 835
    const/4 v9, 0x1

    .line 839
    .local v9, bRecovery:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->BlockingChangeRoot(Ljava/util/LinkedList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 847
    :goto_4
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adapter count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->removePagesInfo()V

    .line 851
    if-eqz v9, :cond_8

    .line 852
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->setBrowseDirectory(Ljava/util/LinkedList;)V

    .line 854
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto/16 :goto_0

    .line 841
    :catch_1
    move-exception v10

    .line 843
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking change root : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const/4 v9, 0x0

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_4

    .line 860
    .end local v9           #bRecovery:Z
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #i:I
    .end local v18           #listServer:Ljava/util/List;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    .line 865
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 866
    .local v15, itemRemove:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    if-nez v15, :cond_9

    .line 868
    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "SYNC_SERVER_REMOVE: null!!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 872
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 874
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    move/from16 v0, v20

    if-ge v11, v0, :cond_a

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    .line 877
    .restart local v19       #serverID:Ljava/lang/String;
    iget-object v2, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v11}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 884
    .end local v19           #serverID:Ljava/lang/String;
    :cond_a
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_REMOVE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 874
    .restart local v19       #serverID:Ljava/lang/String;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 889
    .end local v11           #i:I
    .end local v15           #itemRemove:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    .end local v19           #serverID:Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 890
    .local v12, item:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    if-eqz v12, :cond_0

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 893
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_6
    move/from16 v0, v20

    if-ge v11, v0, :cond_0

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 896
    .local v16, listItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-nez v16, :cond_d

    .line 898
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER: index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 901
    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    .line 902
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER server_id : index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 906
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v17

    .line 907
    .local v17, listItemId:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestServerThumbnail(Ljava/lang/String;)V

    .line 910
    :cond_f
    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 912
    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->SetImgPath(Ljava/lang/String;)V

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshUI()V

    .line 914
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :sswitch_data_0
    .sparse-switch
        0x2767 -> :sswitch_0
        0x4e98 -> :sswitch_3
        0x4e99 -> :sswitch_4
        0x4e9a -> :sswitch_5
        0x4e9b -> :sswitch_1
        0x4e9c -> :sswitch_2
        0x4e9d -> :sswitch_6
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 280
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum][ActivityExpandableListView][onNewIntent]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 591
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "[HTCAlbum][ExapandBrowser]onMenuItemSelected"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    .line 595
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 616
    :goto_0
    return v0

    .line 599
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onRefresh()V

    .line 600
    const/4 v0, 0x1

    .line 602
    goto :goto_0

    .line 605
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->goParentFolder()V

    .line 606
    const/4 v0, 0x1

    .line 608
    goto :goto_0

    .line 611
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->collapseAll()V

    .line 612
    const/4 v0, 0x1

    goto :goto_0

    .line 595
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008e -> :sswitch_0
        0x7f0a00c0 -> :sswitch_2
        0x7f0a00c1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onPause()V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 250
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 251
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const v6, 0x7f0a00c1

    const v5, 0x7f0a00c0

    const/4 v3, 0x0

    .line 565
    invoke-virtual {p0, p1, v6, v6, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    .line 566
    invoke-virtual {p0, p1, v5, v5, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    .line 567
    const v1, 0x7f09008e

    const v4, 0x204021a

    invoke-virtual {p0, p1, v1, v4, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    .line 569
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v1, :cond_1

    .line 572
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 573
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 574
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 576
    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_1

    .line 578
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 581
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_1
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "[HTCAlbum][ExapandBrowser]onPrepareOptionsMenu"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void

    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_2
    move v1, v3

    .line 574
    goto :goto_0

    :cond_3
    move v2, v3

    .line 578
    goto :goto_1
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 299
    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "onRefresh"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    .line 308
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v2, :cond_2

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v1

    .line 315
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 318
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 320
    .local v0, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->removeChildrenDirectoryInfo(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const v6, 0x7f0a0105

    const v5, 0x7f0a00b8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 200
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onResume()V

    .line 201
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 206
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->stopSearchingTimer()V

    .line 207
    const/16 v1, 0x272c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    .line 240
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableSourceSwitch(ZZ)V

    .line 241
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableSourceContentPadding(Z)V

    .line 242
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableAccessCamera(Z)V

    .line 244
    :cond_1
    return-void

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 224
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    .line 225
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 230
    .local v0, viewText:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    .line 234
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onStart()V

    .line 257
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onStop()V

    .line 263
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public paneRight()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public refreshServers()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->refreshServers()V

    .line 293
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 295
    return-void
.end method

.method protected refreshUI()V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->notifyDataSetChanged()V

    .line 995
    :cond_0
    return-void
.end method

.method protected showDialogErrorCommunication()V
    .locals 3

    .prologue
    .line 664
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    .line 665
    .local v0, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->setTitle(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->setMessage(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method protected showDialogNoAuthorization()V
    .locals 3

    .prologue
    .line 671
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;

    .line 672
    .local v0, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->setTitle(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->setMessage(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method protected showDialogNoConnection()V
    .locals 3

    .prologue
    .line 678
    new-instance v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    invoke-static {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    .line 696
    .local v0, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;
    const v1, 0x7f0a00c3

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->setTitle(Ljava/lang/String;)V

    .line 697
    const v1, 0x7f0a0104

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->setMessage(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public showEmptyView(Ljava/lang/String;Z)V
    .locals 6
    .parameter "text"
    .parameter "showProgressBar"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 621
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 643
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090066

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 625
    .local v0, progressbar:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_1

    .line 627
    if-eqz p2, :cond_3

    .line 628
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 634
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 635
    .local v1, viewText_1:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 639
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_2

    .line 640
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    .line 642
    :cond_2
    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "show empty view"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    .end local v1           #viewText_1:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public showListView()V
    .locals 2

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->stopSearchingTimer()V

    .line 649
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    .line 655
    :cond_1
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "show listview"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public showTitleProgression(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableDataSourceUpdating(Z)V

    .line 1036
    return-void
.end method
