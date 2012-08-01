.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.super Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;
.source "SceneOnlinePhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase",
        "<",
        "Lcom/htc/album/SocialNetwork/LivePhotoAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_ONLINE_THUMBNAIL_VIEW:I = 0x1

.field private static final HEADER_BAR_ONLINE_THUMBNAIL_VIEW:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "SceneOnlinePhotoThumbnail"


# instance fields
.field protected mAnimationState:I

.field protected mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

.field protected mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentPickerMode:I

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

.field private mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

.field protected mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

.field private mIsDeleteAll:Z

.field private mIsFirstClick:Z

.field private mIsFooterbarVisible:Z

.field protected mIsNewAdapter:Z

.field private mIsNoListAndFirstUpdate:Z

.field private mIsPluginDelete:Z

.field private mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mLoadingText:Ljava/lang/String;

.field private mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mOldDmr:Ljava/lang/String;

.field private mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field private mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mScrollState:I

.field protected mShareIntent:Landroid/content/Intent;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mShareSelection:I

.field protected mTriggerDeleteAnim:Z

.field private mUpdateHeaderThumbnail:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    .line 113
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareSelection:I

    .line 114
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 115
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 116
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 118
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mScrollState:I

    .line 120
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 121
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    .line 122
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    .line 123
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mTriggerDeleteAnim:Z

    .line 124
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    .line 125
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    .line 126
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 127
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 128
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 129
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 130
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    .line 131
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z

    .line 132
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    .line 133
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    .line 134
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mUpdateHeaderThumbnail:Z

    .line 135
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 136
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v5, v5, v5}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 139
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 168
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 1138
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAnimationState:I

    .line 2094
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2144
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/view/Vector3F;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method private createAsyncPickerTask()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1996
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    invoke-virtual {v0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->cancel(Z)Z

    .line 1997
    :cond_0
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    .line 1998
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1999
    return-void
.end method

.method private doRequestPickerList(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v0, :cond_0

    .line 1948
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    packed-switch v0, :pswitch_data_0

    .line 1958
    const-string v0, "SceneOnlinePhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoThumbnail][doRequestPickerList] unknow picker mode..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    :goto_0
    return-void

    .line 1951
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createAsyncPickerTask()V

    goto :goto_0

    .line 1955
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->postPluginPickerResult()V

    goto :goto_0

    .line 1964
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createAsyncPickerTask()V

    goto :goto_0

    .line 1948
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enableNoPhotoListPage(Z)V
    .locals 6
    .parameter "bEnable"

    .prologue
    .line 1742
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1743
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1755
    :goto_0
    return-void

    .line 1745
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnablePageLoading(Z)V

    .line 1747
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    .line 1749
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1750
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPageLoadingLayout()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 1752
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v4, 0x7f090066

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1753
    .local v2, progressBar:Landroid/widget/ProgressBar;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private getFirstValidPos()I
    .locals 1

    .prologue
    .line 2243
    const/4 v0, 0x0

    return v0
.end method

.method private launchDMRPicker()V
    .locals 6

    .prologue
    .line 2250
    const/4 v1, 0x0

    .line 2265
    .local v1, itemPosition:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2267
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2269
    const/4 v2, 0x3

    const/16 v3, 0x1398

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 2276
    :cond_0
    return-void
.end method

.method private launchUploadEditor(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v7, 0x0

    .line 2002
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2004
    :cond_0
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][launchUploadEditor]: NG ! List is 0 or NULL ! "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    :goto_0
    return-void

    .line 2008
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 2010
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][launchUploadEditor]: mSceneBundle is null "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2016
    :cond_2
    invoke-virtual {p0, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    .line 2018
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2019
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    .local v2, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2023
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2024
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "service_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2025
    .local v3, szService:Ljava/lang/String;
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][onNewAdapter]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    const-string v4, "photo_list"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2028
    const-string v4, "upload_editor_live"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2029
    const-string v4, "scene_identifier"

    const-string v5, "SceneOnlinePhotoThumbnail"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][ScenePhotoTagEditor]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "ScenePhotoTagEditor"

    invoke-interface {v4, v1, v5, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 9
    .parameter "newDMR"

    .prologue
    .line 2212
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 2238
    :cond_0
    :goto_0
    return-void

    .line 2214
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2215
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 2217
    .local v7, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getFirstValidPos()I

    move-result v4

    .line 2219
    .local v4, pos:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v2, "album_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2220
    .local v3, strFolderName:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2221
    const-string v3, ""

    .line 2223
    :cond_2
    const/4 v1, -0x1

    if-eq v4, v1, :cond_0

    .line 2226
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v8

    .line 2228
    .local v8, nPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v8, :cond_0

    .line 2230
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2232
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCOnlinePhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_0

    .line 2236
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCOnlinePhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private onDelete(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 959
    .local p1, pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteMultipleMedia(Ljava/util/ArrayList;)V

    .line 960
    return-void
.end method

.method private onItemClicked(I)Z
    .locals 14
    .parameter "index"

    .prologue
    .line 1508
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v10, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1510
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1512
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1516
    .local v4, mediaIntent:Landroid/content/Intent;
    :try_start_0
    const-string v10, "dmc_mode"

    const/4 v11, 0x2

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1521
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1524
    .local v2, bundleOnline:Landroid/os/Bundle;
    const-string v10, "service_name"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1525
    .local v6, strServiceName:Ljava/lang/String;
    const-string v10, "service_url"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1527
    .local v7, strServiceURL:Ljava/lang/String;
    if-eqz v6, :cond_0

    if-nez v7, :cond_1

    .line 1529
    :cond_0
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1530
    .local v5, sceneIntent:Landroid/content/Intent;
    const-string v10, "service_name"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1531
    .local v8, szService:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1532
    .local v9, szServiceUrl:Ljava/lang/String;
    const-string v10, "service_name"

    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1535
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v9, v10, v11

    .line 1536
    const-string v10, "tab_default"

    const v11, 0x7f0a002f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    :goto_0
    const-string v10, "service_url"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    .end local v5           #sceneIntent:Landroid/content/Intent;
    .end local v8           #szService:Ljava/lang/String;
    .end local v9           #szServiceUrl:Ljava/lang/String;
    :cond_1
    const-string v10, "index_id"

    invoke-virtual {v2, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1552
    const-string v10, "dmc_bundle"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1555
    const-string v10, "com.htc.video"

    const-string v11, "com.htc.video.ViewVideo"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getVideoUri()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "Video/mp4"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const-string v10, "output_link"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1559
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 1581
    .end local v2           #bundleOnline:Landroid/os/Bundle;
    .end local v4           #mediaIntent:Landroid/content/Intent;
    .end local v6           #strServiceName:Ljava/lang/String;
    .end local v7           #strServiceURL:Ljava/lang/String;
    :goto_1
    const/4 v10, 0x1

    :goto_2
    return v10

    .line 1538
    .restart local v2       #bundleOnline:Landroid/os/Bundle;
    .restart local v4       #mediaIntent:Landroid/content/Intent;
    .restart local v5       #sceneIntent:Landroid/content/Intent;
    .restart local v6       #strServiceName:Ljava/lang/String;
    .restart local v7       #strServiceURL:Ljava/lang/String;
    .restart local v8       #szService:Ljava/lang/String;
    .restart local v9       #szServiceUrl:Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1540
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v9, v10, v11

    .line 1541
    const-string v10, "tab_default"

    const v11, 0x7f0a0030

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1561
    .end local v2           #bundleOnline:Landroid/os/Bundle;
    .end local v5           #sceneIntent:Landroid/content/Intent;
    .end local v6           #strServiceName:Ljava/lang/String;
    .end local v7           #strServiceURL:Ljava/lang/String;
    .end local v8           #szService:Ljava/lang/String;
    .end local v9           #szServiceUrl:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1563
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "SceneOnlinePhotoThumbnail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can not launch view player. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1545
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #bundleOnline:Landroid/os/Bundle;
    .restart local v5       #sceneIntent:Landroid/content/Intent;
    .restart local v6       #strServiceName:Ljava/lang/String;
    .restart local v7       #strServiceURL:Ljava/lang/String;
    .restart local v8       #szService:Ljava/lang/String;
    .restart local v9       #szServiceUrl:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v10, "service_url"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_0

    .line 1568
    .end local v2           #bundleOnline:Landroid/os/Bundle;
    .end local v4           #mediaIntent:Landroid/content/Intent;
    .end local v5           #sceneIntent:Landroid/content/Intent;
    .end local v6           #strServiceName:Ljava/lang/String;
    .end local v7           #strServiceURL:Ljava/lang/String;
    .end local v8           #szService:Ljava/lang/String;
    .end local v9           #szServiceUrl:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v10, :cond_5

    const/4 v10, 0x0

    goto :goto_2

    .line 1570
    :cond_5
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1571
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "index_id"

    invoke-virtual {v1, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1572
    const-string v10, "refresh_by_delete"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1573
    const-string v10, "refresh_by_delete_all"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1574
    const-string v10, "my_live_album"

    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v12, "my_live_album"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1578
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v11, "SceneOnlinePhotoFullscreen"

    const/4 v12, 0x0

    invoke-interface {v10, v1, v11, v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    .line 317
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 318
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAnimationState:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAnimationState:I

    if-ne v1, v2, :cond_2

    .line 323
    :cond_1
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 326
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 331
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 328
    :pswitch_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onOpenSenseControlButtonClick(I)Z
    .locals 14
    .parameter "nBtnId"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 914
    const/4 v1, 0x0

    .line 915
    .local v1, bResult:Z
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v10, :cond_0

    move v2, v1

    .line 955
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 918
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    const/4 v8, 0x0

    .line 919
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v6, 0x0

    .local v6, i:I
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v9

    .local v9, size:I
    :goto_1
    if-ge v6, v9, :cond_1

    .line 921
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v10, v6}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v3

    .line 923
    .local v3, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v10

    if-ne v10, p1, :cond_2

    .line 925
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v10, v3, v13, v12}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 926
    const/4 v1, 0x1

    .end local v3           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    :cond_1
    move v2, v1

    .line 955
    .restart local v2       #bResult:I
    goto :goto_0

    .line 929
    .end local v2           #bResult:I
    .restart local v3       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    :cond_2
    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v8

    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    check-cast v8, Ljava/util/ArrayList;

    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v8, :cond_5

    .line 931
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 933
    .local v0, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v10

    if-ne v10, p1, :cond_3

    .line 935
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v10, v0, v13, v12}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 937
    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v10

    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v11}, Lcom/htc/album/helper/ShareMenuManager;->getPluginButtonID()I

    move-result v11

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v10}, Lcom/htc/album/helper/ShareMenuManager;->getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 942
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 943
    .local v4, context:Landroid/content/Context;
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v10}, Lcom/htc/album/helper/ShareMenuManager;->getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v5

    .line 944
    .local v5, footer:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 945
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v10, v5, v12}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    .line 946
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v10, v4, v0}, Lcom/htc/album/helper/ShareMenuManager;->onSocialPluginShareClick(Landroid/content/Context;Lcom/htc/opensense/album/plugin/CommandBarButton;)V

    .line 949
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #footer:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_4
    const/4 v1, 0x1

    .line 919
    .end local v0           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private onPreparePhoneOptionsMenu4DLNA(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 785
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 802
    .local v0, context:Landroid/content/Context;
    goto :goto_0
.end method

.method private onRefresh(Z)V
    .locals 4
    .parameter "bEnableLoading"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1924
    if-eqz p1, :cond_0

    .line 1925
    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v1, 0x4e28

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1927
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 2037
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2040
    .local v1, scrollState:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v0, 0x4f4e

    .line 2044
    .local v0, adapterScrollState:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v0, v4, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setScrollState(III)V

    .line 2050
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mScrollState:I

    if-ne v2, v1, :cond_2

    .line 2064
    :goto_1
    return-void

    .line 2040
    .end local v0           #adapterScrollState:I
    :cond_1
    const/16 v0, 0x4f4d

    goto :goto_0

    .line 2053
    .restart local v0       #adapterScrollState:I
    :cond_2
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mScrollState:I

    .line 2055
    packed-switch v1, :pswitch_data_0

    .line 2061
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onScrolling()V

    goto :goto_1

    .line 2058
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onScrollIdle()V

    goto :goto_1

    .line 2055
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onShare(I)V
    .locals 4
    .parameter "selection"

    .prologue
    .line 964
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoThumbnail][onShare]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareSelection:I

    .line 966
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 967
    .local v0, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    const/4 v1, 0x0

    .line 969
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSourceInfo()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v1, :cond_0

    .line 971
    invoke-virtual {p0, p1, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShareAlbumLink(ILjava/lang/Object;)V

    .line 973
    :cond_0
    return-void
.end method

.method private onShareLink(Ljava/lang/Object;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 976
    if-nez p1, :cond_1

    .line 989
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 979
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    .line 980
    .local v1, szUrl:Ljava/lang/String;
    const/4 v0, 0x0

    .line 981
    .local v0, szLink:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, szWebLink:Ljava/lang/String;
    move-object v3, p1

    .line 983
    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 984
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 985
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object v2, v1

    .line 987
    :goto_1
    if-eqz v2, :cond_0

    .line 988
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x2040219

    invoke-virtual {v3, v4, v5, v2}, Lcom/htc/album/helper/MenuManager;->gotoShareLink(Landroid/content/Context;ILjava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 985
    goto :goto_1
.end method

.method private onUICmdDeletePicker(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1890
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 1902
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    .line 1905
    :goto_0
    return-void

    .line 1893
    :pswitch_0
    const v0, 0x7f0a0010

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_0

    .line 1896
    :pswitch_1
    invoke-virtual {p0, v2, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1897
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    .line 1898
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    .line 1899
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    goto :goto_0

    .line 1890
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onUICmdMultiPicker(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 1908
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 1918
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    .line 1921
    :goto_0
    return-void

    .line 1911
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 1914
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 1915
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_0

    .line 1908
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onUICmdRefresh(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1871
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 1884
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    .line 1887
    :cond_0
    :goto_0
    return-void

    .line 1874
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 1877
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    goto :goto_0

    .line 1880
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 1871
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private postPluginPickerResult()V
    .locals 10

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1970
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1974
    .local v3, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1975
    .local v0, aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, size:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 1977
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1978
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1975
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1981
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 1983
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "SceneOnlinePhotoThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create photo id list failed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1988
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1989
    .local v5, msg:Landroid/os/Message;
    const v7, 0x10300001

    iput v7, v5, Landroid/os/Message;->what:I

    .line 1990
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1991
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v7, v5}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onUIHandlerMessage(Landroid/os/Message;)V

    .line 1993
    .end local v5           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private prepareLoadingText(I)V
    .locals 2
    .parameter "nResID"

    .prologue
    .line 2098
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2100
    .local v0, activity:Landroid/app/Activity;
    if-nez p1, :cond_0

    .line 2102
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onGetLoadingMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    .line 2108
    :goto_0
    return-void

    .line 2106
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 895
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[showShare] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 898
    :cond_0
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[showShare]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :cond_1
    :goto_0
    return-void

    .line 902
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 903
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    move-result v1

    .line 905
    .local v1, result:Z
    if-nez v1, :cond_1

    .line 907
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[showShare]can\'t show share bubble"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1401
    const-string v0, "LivePhotoAdapter"

    return-object v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 1053
    const/4 v0, 0x1

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 1769
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading(ZI)V
    .locals 3
    .parameter "bShow"
    .parameter "nResID"

    .prologue
    .line 1934
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1935
    invoke-direct {p0, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->prepareLoadingText(I)V

    .line 1937
    :cond_0
    const-string v0, "SceneOnlinePhotoThumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][enableProgressLoading]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 1939
    return-void
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 1930
    const/4 v0, 0x1

    return v0
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 2067
    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 7

    .prologue
    .line 713
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, szText:Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 738
    .end local v2           #szText:Ljava/lang/String;
    .local v3, szText:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 717
    .end local v3           #szText:Ljava/lang/String;
    .restart local v2       #szText:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "service_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, szServiceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v4, :cond_1

    .line 719
    move-object v2, v1

    :goto_1
    move-object v3, v2

    .line 738
    .end local v2           #szText:Ljava/lang/String;
    .restart local v3       #szText:Ljava/lang/String;
    goto :goto_0

    .line 722
    .end local v3           #szText:Ljava/lang/String;
    .restart local v2       #szText:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 723
    .local v0, activity:Landroid/app/Activity;
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 725
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 727
    :cond_2
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 729
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 733
    :cond_3
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][getHeaderSubtitle]: Not support services "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v2, ""

    goto :goto_1
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 687
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, szText:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 706
    .end local v1           #szText:Ljava/lang/String;
    .local v2, szText:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 691
    .end local v2           #szText:Ljava/lang/String;
    .restart local v1       #szText:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 693
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v1

    .line 694
    .end local v1           #szText:Ljava/lang/String;
    .restart local v2       #szText:Ljava/lang/String;
    goto :goto_0

    .line 696
    .end local v2           #szText:Ljava/lang/String;
    .restart local v1       #szText:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 697
    .local v0, nCount:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "album_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 698
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_3

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    :cond_3
    if-nez v1, :cond_4

    .line 704
    const-string v1, ""

    :cond_4
    move-object v2, v1

    .line 706
    .end local v1           #szText:Ljava/lang/String;
    .restart local v2       #szText:Ljava/lang/String;
    goto :goto_0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1758
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1759
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 1765
    :cond_0
    :goto_0
    return-object v1

    .line 1761
    :cond_1
    const/4 v1, 0x0

    .line 1762
    .local v1, strMessage:Ljava/lang/String;
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-ne v2, v3, :cond_0

    .line 1763
    const v2, 0x7f0a0045

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    return-object v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onBackPressed()Z

    .line 763
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 338
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    packed-switch p1, :pswitch_data_0

    .line 388
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 389
    .local v1, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 391
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "OnActivityResult: pass to data plugin"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIActivityResult(IILandroid/content/Intent;)V

    .line 394
    .end local v1           #plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    :cond_1
    return-void

    .line 346
    .restart local v0       #activity:Landroid/app/Activity;
    :pswitch_0
    invoke-static {v0, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 348
    const-string v3, "DMR"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, selectDMR:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 351
    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "directmode"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 356
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "directmode"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    :cond_2
    if-eqz v2, :cond_0

    .line 361
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1398
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1022
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return v3

    .line 1025
    :cond_1
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onBackPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1027
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    move v3, v4

    .line 1028
    goto :goto_0

    .line 1031
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1032
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1035
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1038
    const-string v3, "dmc_bundle"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1039
    .local v2, nBundle:Landroid/os/Bundle;
    const-string v3, "refresh_by_delete_all"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1040
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneOnlineFolder"

    invoke-interface {v3, v2, v5, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .end local v2           #nBundle:Landroid/os/Bundle;
    :goto_1
    move v3, v4

    .line 1047
    goto :goto_0

    .line 1044
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_1
.end method

.method public onBindAdapter()V
    .locals 5

    .prologue
    .line 1332
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onBindAdapter()V

    .line 1333
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 1335
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    .line 1336
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1338
    new-instance v2, Lcom/htc/album/helper/OnlineDeleteManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/htc/album/helper/OnlineDeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;)V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 1340
    :cond_0
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2073
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2079
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2085
    const/4 v0, 0x0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 1092
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 1125
    :goto_0
    return v5

    .line 1094
    :cond_0
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v4, v5, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 1096
    .local v4, position:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 1097
    .local v1, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    if-eqz v1, :cond_2

    .line 1099
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v3

    .line 1101
    .local v3, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v3, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1, p1, v4, v5}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onContextItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1104
    .end local v3           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1106
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 1107
    .local v2, objSelected:Ljava/lang/Object;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    .line 1109
    .local v2, objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1121
    const-string v5, "SceneOnlinePhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][onContextItemSelected] Unsupported context menu operation."

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    .end local v2           #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 1112
    .restart local v2       #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onItemSelected(I)Z

    goto :goto_2

    .line 1115
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShareLink(Ljava/lang/Object;)V

    goto :goto_2

    .line 1118
    :sswitch_2
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local v2           #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v0, v2, v5}, Lcom/htc/album/helper/MenuManager;->launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Bundle;)V

    goto :goto_2

    .line 1109
    :sswitch_data_0
    .sparse-switch
        0x7f090079 -> :sswitch_0
        0x7f09008d -> :sswitch_1
        0x7f09008f -> :sswitch_2
    .end sparse-switch
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v2, 0x1

    .line 852
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v1, :cond_1

    .line 854
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    const/4 v0, 0x0

    .line 859
    .local v0, bResult:Z
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onOpenSenseControlButtonClick(I)Z

    move-result v0

    if-eq v2, v0, :cond_0

    .line 862
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 864
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V

    goto :goto_0

    .line 868
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 886
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 871
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onBackPressed()Z

    goto :goto_0

    .line 874
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->launchDMRPicker()V

    goto :goto_0

    .line 877
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    goto :goto_0

    .line 880
    :sswitch_4
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_0

    .line 883
    :sswitch_5
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_0

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x6 -> :sswitch_3
        0xa -> :sswitch_4
        0x10 -> :sswitch_2
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 1187
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1188
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1191
    :cond_0
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v0, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1063
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 646
    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v4, :cond_0

    .line 647
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 678
    :goto_0
    return-object v1

    .line 649
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 651
    :cond_1
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][onCreateFooterBar]: "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v1, 0x0

    goto :goto_0

    .line 655
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 656
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableRightFooter()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 658
    .local v1, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 660
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    goto :goto_0

    .line 665
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v6, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v3

    check-cast v3, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 669
    .local v3, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v4, 0x2

    invoke-virtual {v1, v0, v6, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 671
    const/16 v4, 0xa

    invoke-virtual {v1, v0, v6, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 672
    const/16 v4, 0x11

    invoke-virtual {v1, v0, v6, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 674
    .local v2, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v4, 0x6

    const v5, 0x7f0a0116

    invoke-virtual {v2, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 2133
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/OnlineDeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 2134
    .local v0, dlg:Z
    if-ne v1, v0, :cond_0

    .line 2135
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1438
    const-string v8, "SceneOnlinePhotoThumbnail"

    const-string v9, "[HTCAlbum][SceneOnlinePhotoThumbnail][onCreateScene]: ..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v3

    .line 1442
    .local v3, gridview:Lcom/htc/sunny2/widget/gridview/GridView;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1443
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1444
    const-string v8, "SceneOnlinePhotoThumbnail"

    const-string v9, "Activity is null"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    .line 1487
    .end local v3           #gridview:Lcom/htc/sunny2/widget/gridview/GridView;
    :goto_0
    return-object v3

    .line 1447
    .restart local v3       #gridview:Lcom/htc/sunny2/widget/gridview/GridView;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1450
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1451
    .local v2, extraBundle:Landroid/os/Bundle;
    const/4 v5, -0x1

    .line 1452
    .local v5, nLimit:I
    if-eqz v2, :cond_1

    .line 1453
    const-string v8, "max_pick"

    invoke-virtual {v2, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1454
    :cond_1
    if-eq v10, v5, :cond_2

    .line 1456
    iput v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    .line 1457
    iput-boolean v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    .line 1460
    :cond_2
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v3, v8}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 1462
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 1463
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 1465
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 1470
    const/4 v6, 0x0

    .line 1471
    .local v6, nTop:I
    const/4 v4, 0x0

    .line 1472
    .local v4, nBottom:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1474
    invoke-static {v1, v12}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v6

    .line 1484
    :goto_1
    invoke-virtual {v3, v11, v6, v11, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 1485
    invoke-virtual {p0, v3, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1479
    :cond_3
    invoke-static {v1, v12}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070039

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int v6, v8, v9

    .line 1482
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    goto :goto_1
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 1503
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1492
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 1493
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 1494
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onDestroyScene()V

    .line 1495
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 2140
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 2141
    .local v0, dlg:Z
    if-ne v1, v0, :cond_0

    .line 2142
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1301
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 1303
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewList()Z

    move-result v0

    .line 1304
    .local v0, bEnableScrollCache:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v2, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v2, :cond_2

    .line 1306
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 1307
    .local v1, cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    .line 1309
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v2, :cond_2

    .line 1311
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCacheHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1312
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v2, p0, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 1313
    :cond_0
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCacheFooter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1314
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v2, p0, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 1315
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    invoke-virtual {v3, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->setHeaderControlStatusListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V

    .line 1319
    .end local v1           #cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1328
    :goto_0
    return-void

    .line 1325
    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createFooterBar(IZ)V

    goto :goto_0
.end method

.method public onErrorNoList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1695
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][onErrorNoList]: ..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const/4 v1, 0x0

    .line 1698
    .local v1, isPhotoListSizeChanged:Z
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-nez v3, :cond_0

    .line 1700
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    .line 1701
    const/4 v1, 0x1

    .line 1704
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1705
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 1739
    :cond_1
    :goto_0
    return-void

    .line 1707
    :cond_2
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z

    if-eq v5, v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    if-ne v5, v3, :cond_4

    .line 1709
    :cond_3
    invoke-virtual {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 1711
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1712
    .local v2, nBundle:Landroid/os/Bundle;
    const-string v3, "refresh_by_delete_all"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1713
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SceneOnlineFolder"

    invoke-interface {v3, v2, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1717
    .end local v2           #nBundle:Landroid/os/Bundle;
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 1718
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v3, p0, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 1720
    invoke-virtual {p0, v6, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1721
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1723
    if-ne v5, v1, :cond_5

    .line 1725
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1726
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1734
    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    if-ne v5, v3, :cond_1

    .line 1736
    iput-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 1737
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v4, 0x4e28

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 1730
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->invalidateControlBars()V

    goto :goto_1
.end method

.method protected onGetLoadingMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2120
    const-string v1, ""

    .line 2121
    .local v1, szLoading:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2127
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2128
    return-object v1
.end method

.method protected onGetNormalFooterId()I
    .locals 1

    .prologue
    .line 2111
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetNormalHeaderId()I
    .locals 1

    .prologue
    .line 2115
    const/4 v0, 0x2

    return v0
.end method

.method protected onItemSelected(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1587
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onItemSelected(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 1606
    :cond_0
    :goto_0
    return v2

    .line 1589
    :cond_1
    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    if-eqz v4, :cond_0

    .line 1590
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 1592
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v1, Lcom/htc/album/Animation/animationSetGridview;

    .line 1593
    .local v1, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v1, p1, v2}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 1596
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1598
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v2, :cond_3

    .line 1600
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, p1, v2}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onThumbItemClicked(ILjava/lang/String;)Z

    .line 1601
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    :goto_2
    move v2, v3

    .line 1606
    goto :goto_0

    .line 1600
    :cond_2
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1604
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onItemClicked(I)Z

    goto :goto_2
.end method

.method public onLeaveScene()V
    .locals 0

    .prologue
    .line 1372
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onLeaveScene()V

    .line 1373
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1774
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1867
    :goto_0
    return v1

    .line 1776
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    .line 1778
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_3
    :goto_1
    :sswitch_0
    move v1, v3

    .line 1867
    goto :goto_0

    .line 1781
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onErrorNoList()V

    goto :goto_1

    .line 1784
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onSyncList(Landroid/os/Message;)V

    goto :goto_1

    .line 1787
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_1

    .line 1790
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onSyncAlbumInfo()V

    goto :goto_1

    .line 1793
    :sswitch_5
    const v2, 0x7f0a00cb

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_1

    .line 1796
    :sswitch_6
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_1

    .line 1799
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->doRequestPickerList(Landroid/os/Message;)V

    goto :goto_1

    .line 1803
    :sswitch_8
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1804
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    if-ne v2, v4, :cond_4

    .line 1806
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->launchUploadEditor(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1808
    :cond_4
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    if-ne v2, v1, :cond_5

    .line 1810
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onDelete(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1812
    :cond_5
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 1819
    :sswitch_9
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_1

    .line 1825
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1826
    .local v0, nBackBmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 1828
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mUpdateHeaderThumbnail:Z

    .line 1829
    const-string v1, "SceneOnlinePhotoThumbnail"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][requestDecodeHeaderPhoto] Decode -"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1832
    .end local v0           #nBackBmp:Landroid/graphics/Bitmap;
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onUICmdRefresh(Landroid/os/Message;)V

    goto :goto_1

    .line 1835
    :sswitch_c
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 1836
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onItemClicked(I)Z

    goto :goto_1

    .line 1839
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onUICmdDeletePicker(Landroid/os/Message;)V

    goto :goto_1

    .line 1842
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onUICmdMultiPicker(Landroid/os/Message;)V

    goto :goto_1

    .line 1845
    :sswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_1

    .line 1848
    :sswitch_10
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_3

    .line 1850
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setLastVisibleIndex(I)V

    .line 1851
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onVerifyImageStatus(I)V

    goto/16 :goto_1

    .line 1855
    :sswitch_11
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto/16 :goto_1

    .line 1858
    :sswitch_12
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto/16 :goto_1

    .line 1861
    :sswitch_13
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1862
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    .line 1863
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    goto/16 :goto_1

    .line 1778
    :sswitch_data_0
    .sparse-switch
        0x2730 -> :sswitch_5
        0x2731 -> :sswitch_6
        0x2761 -> :sswitch_1
        0x276a -> :sswitch_9
        0x4e42 -> :sswitch_7
        0x4e45 -> :sswitch_0
        0x4e47 -> :sswitch_10
        0x4e87 -> :sswitch_4
        0x4e88 -> :sswitch_2
        0x4ea1 -> :sswitch_8
        0x4ea4 -> :sswitch_a
        0x4f4f -> :sswitch_3
        0x5079 -> :sswitch_f
        0x10200001 -> :sswitch_b
        0x10200002 -> :sswitch_c
        0x10200006 -> :sswitch_e
        0x10200007 -> :sswitch_d
        0x10200008 -> :sswitch_13
        0x10200009 -> :sswitch_11
        0x10300002 -> :sswitch_12
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 10
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1406
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 1407
    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    .line 1408
    new-instance v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 1409
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 1410
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataRequest(Ljava/lang/Object;)V

    .line 1411
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const-string v6, "from_albumhost"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setInternal(Z)V

    .line 1412
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onCreate()V

    .line 1414
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v3

    .line 1415
    .local v3, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v4, "service_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 1417
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateThumbPhotoListPlugin()Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1420
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, pid:Ljava/lang/String;
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create opensense data plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v4, v0, v6, v1}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createThumbPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 1423
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    .line 1425
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.htc.vmm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1426
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->disableListRecycle()V

    .line 1429
    .end local v1           #pid:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-virtual {v4, v6, v5, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 1432
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onResume()V

    .line 1433
    invoke-virtual {p0, v9, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1434
    return-void

    .end local v0           #dataplugin:Ljava/lang/String;
    :cond_1
    move-object v0, v5

    .line 1417
    goto :goto_0
.end method

.method public onNotifyUpdateComplete()V
    .locals 0

    .prologue
    .line 1615
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 805
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v2, :cond_1

    .line 806
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 847
    :cond_0
    :goto_0
    return v0

    .line 808
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onOpenSenseControlButtonClick(I)Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 814
    const/16 v2, 0x28

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 816
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V

    .end local v0           #bResult:Z
    :goto_1
    move v0, v1

    .line 847
    goto :goto_0

    .line 820
    .restart local v0       #bResult:Z
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 829
    :sswitch_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_1

    .line 823
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    goto :goto_1

    .line 826
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_1

    .line 832
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->launchDMRPicker()V

    goto :goto_1

    .line 840
    .end local v0           #bResult:Z
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 843
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->launchDMRPicker()V

    goto :goto_1

    .line 820
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x10 -> :sswitch_3
        0x7f090081 -> :sswitch_2
        0x7f09008e -> :sswitch_1
    .end sparse-switch

    .line 840
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1392
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPause()V

    .line 1394
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 1397
    :cond_0
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1167
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    .line 1183
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPhaseInScreenControl(I)V

    .line 1184
    return-void

    .line 1173
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-ne v1, v0, :cond_1

    .line 1175
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    .line 1176
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableNoPhotoListPage(Z)V

    goto :goto_0

    .line 1180
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1153
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    .line 1163
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPhaseOutScreenControl(I)V

    .line 1164
    return-void

    .line 1159
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-ne v2, v0, :cond_1

    .line 1160
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnablePageLoading(Z)V

    .line 1161
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method public onPrepareAnimation(I)Z
    .locals 3
    .parameter "nAnimState"

    .prologue
    .line 1141
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAnimationState:I

    .line 1142
    const/4 v1, 0x0

    .line 1143
    .local v1, bResult:Z
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPrepareAnimation(I)Z

    move-result v1

    .line 1144
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 1145
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 1146
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    .line 1148
    :cond_0
    return v1
.end method

.method public onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1068
    check-cast p3, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 1070
    .local v2, nPos:I
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 1071
    .local v1, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    if-eqz v1, :cond_1

    .line 1073
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v3

    .line 1074
    .local v3, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, p1, v2, v4}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onPrepareContextMenu(Landroid/view/Menu;ILjava/lang/String;)Z

    move-result v4

    .line 1086
    .end local v3           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_1
    return v4

    .line 1074
    .restart local v3       #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1077
    .end local v3           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1078
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1080
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x15000

    invoke-static {v4, p1, v5}, Lcom/htc/album/helper/MenuManager;->showPhotoMenuOnline(Landroid/app/Activity;Landroid/view/Menu;I)V

    .line 1086
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 766
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 768
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v0, :cond_0

    .line 769
    const/4 v0, 0x0

    .line 781
    :goto_0
    return v0

    .line 772
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 775
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPrepareTabletOptionsMenu(Landroid/view/Menu;)V

    .line 781
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 779
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPreparePhoneOptionsMenu4DLNA(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method protected onPrepareTabletOptionsMenu(Landroid/view/Menu;)V
    .locals 31
    .parameter "menu"

    .prologue
    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 524
    .local v13, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v5

    .line 525
    .local v5, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    const-string v28, "opensense_pugin"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerMode()I

    move-result v27

    if-nez v27, :cond_8

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    new-instance v27, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct/range {v27 .. v27}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 532
    const/4 v9, 0x0

    .line 533
    .local v9, barSize:I
    const/4 v14, 0x0

    .local v14, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v25

    .local v25, size:I
    :goto_1
    move/from16 v0, v25

    if-ge v14, v0, :cond_3

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    add-int/lit8 v9, v9, 0x1

    .line 533
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 535
    :cond_3
    const/16 v27, 0x1

    move/from16 v0, v27

    if-lt v9, v0, :cond_0

    const/16 v27, 0x3

    move/from16 v0, v27

    if-gt v9, v0, :cond_0

    .line 537
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v15, v0, [[I

    const/16 v27, 0x0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, -0x1

    aput v30, v28, v29

    aput-object v28, v15, v27

    const/16 v27, 0x1

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x2

    aput v30, v28, v29

    aput-object v28, v15, v27

    const/16 v27, 0x2

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    aput-object v28, v15, v27

    const/16 v27, 0x3

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_1

    aput-object v28, v15, v27

    .line 538
    .local v15, indexTable:[[I
    aget-object v11, v15, v9

    .line 540
    .local v11, btnIndexTable:[I
    const/16 v22, 0x1

    .line 541
    .local v22, nActionButtonID:I
    const/16 v23, 0x0

    .local v23, nIndex:I
    array-length v0, v11

    move/from16 v25, v0

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v27, v0

    aget v28, v11, v23

    invoke-virtual/range {v27 .. v28}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v10

    .line 544
    .local v10, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 547
    .local v26, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v26, :cond_4

    .line 549
    const/16 v24, 0x0

    .local v24, nSubIndex:I
    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 551
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 552
    .local v12, button:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 549
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 557
    .end local v12           #button:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v24           #nSubIndex:I
    :cond_4
    const/16 v27, 0x13

    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 559
    const/16 v27, 0x0

    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v28

    const/16 v29, 0x0

    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v16

    .line 560
    .local v16, item:Landroid/view/MenuItem;
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 561
    .local v7, bBtnIconBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    .line 562
    new-instance v27, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v27

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 568
    :cond_5
    :goto_4
    const/16 v27, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 541
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v16           #item:Landroid/view/MenuItem;
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 564
    .restart local v7       #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .restart local v16       #item:Landroid/view/MenuItem;
    :cond_7
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 565
    .local v8, bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_5

    .line 566
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_4

    .line 573
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v9           #barSize:I
    .end local v10           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v11           #btnIndexTable:[I
    .end local v14           #i:I
    .end local v15           #indexTable:[[I
    .end local v16           #item:Landroid/view/MenuItem;
    .end local v22           #nActionButtonID:I
    .end local v23           #nIndex:I
    .end local v25           #size:I
    .end local v26           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_8
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    const-string v28, "flag_genuine"

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-nez v27, :cond_a

    .line 578
    :cond_9
    const/16 v27, 0x1

    const v28, 0x7f09008e

    const/16 v29, 0x0

    const v30, 0x7f0a0116

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    .line 579
    .local v19, itemRefresh:Landroid/view/MenuItem;
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 581
    .end local v19           #itemRefresh:Landroid/view/MenuItem;
    :cond_a
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "my_live_album"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 595
    const/16 v27, 0x1

    const v28, 0x7f09008e

    const/16 v29, 0x0

    const v30, 0x7f0a0116

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    .line 596
    .restart local v19       #itemRefresh:Landroid/view/MenuItem;
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 601
    const/16 v27, 0x0

    const/16 v28, 0x28

    const/16 v29, 0x0

    const v30, 0x7f0a0114

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v21

    .line 602
    .local v21, menuShare:Landroid/view/SubMenu;
    const/16 v27, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 603
    .local v20, itemShare:Landroid/view/MenuItem;
    invoke-static {v13}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 604
    const/16 v27, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 607
    .local v6, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v27, v0

    const/16 v28, 0x28

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move/from16 v2, v28

    invoke-virtual {v0, v6, v1, v2}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDropList(Landroid/content/Context;Landroid/view/SubMenu;I)Z

    .line 612
    const/16 v27, 0x0

    const v28, 0x7f090081

    const/16 v29, 0x0

    const v30, 0x7f0a0115

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    .line 613
    .local v17, itemDelete:Landroid/view/MenuItem;
    invoke-static {v13}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v27

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 614
    const/16 v27, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 619
    const/16 v27, 0x0

    const/16 v28, 0xa

    const/16 v29, 0x0

    const v30, 0x7f0a0124

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 620
    .local v18, itemEdit:Landroid/view/MenuItem;
    invoke-static {v13}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Edit_Dark_Rest(Landroid/content/Context;)I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 621
    const/16 v27, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 628
    .end local v6           #activity:Landroid/app/Activity;
    .end local v17           #itemDelete:Landroid/view/MenuItem;
    .end local v18           #itemEdit:Landroid/view/MenuItem;
    .end local v19           #itemRefresh:Landroid/view/MenuItem;
    .end local v20           #itemShare:Landroid/view/MenuItem;
    .end local v21           #menuShare:Landroid/view/SubMenu;
    :cond_b
    const/16 v27, 0x1

    const v28, 0x7f09008e

    const/16 v29, 0x0

    const v30, 0x7f0a0116

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    .line 629
    .restart local v19       #itemRefresh:Landroid/view/MenuItem;
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 634
    const/16 v27, 0x0

    const/16 v28, 0x28

    const/16 v29, 0x0

    const v30, 0x7f0a0114

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v21

    .line 635
    .restart local v21       #menuShare:Landroid/view/SubMenu;
    const/16 v27, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 636
    .restart local v20       #itemShare:Landroid/view/MenuItem;
    invoke-static {v13}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 637
    const/16 v27, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 640
    .restart local v6       #activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v27, v0

    const/16 v28, 0x28

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move/from16 v2, v28

    invoke-virtual {v0, v6, v1, v2}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDropList(Landroid/content/Context;Landroid/view/SubMenu;I)Z

    goto/16 :goto_0

    .line 537
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 18
    .parameter "footer"

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    invoke-super/range {p0 .. p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 431
    .local v2, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "opensense_pugin"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_b

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v1, :cond_0

    .line 435
    new-instance v1, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct {v1}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 438
    const/4 v9, 0x0

    .line 439
    .local v9, barSize:I
    const/4 v13, 0x0

    .local v13, i:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v16

    .local v16, size:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v1, v13}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    add-int/lit8 v9, v9, 0x1

    .line 439
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 441
    :cond_4
    const/4 v1, 0x1

    if-lt v9, v1, :cond_5

    const/4 v1, 0x3

    if-le v9, v1, :cond_8

    .line 443
    :cond_5
    const-string v1, "SceneOnlinePhotoThumbnail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][onRefreshFooterBar] Plug-in button size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    .line 445
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    .line 452
    :goto_2
    invoke-super/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onHandleActionBarBarLayoutChange()V

    .line 453
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    if-eqz v1, :cond_0

    .line 455
    const/4 v1, 0x4

    new-array v14, v1, [[I

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    aput-object v3, v14, v1

    const/4 v1, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    aput-object v3, v14, v1

    const/4 v1, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    aput-object v3, v14, v1

    const/4 v1, 0x3

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    aput-object v3, v14, v1

    .line 456
    .local v14, indexTable:[[I
    aget-object v11, v14, v9

    .line 458
    .local v11, btnIndexTable:[I
    const/4 v13, 0x0

    array-length v0, v11

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    aget v3, v11, v13

    invoke-virtual {v1, v3}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v10

    .line 461
    .local v10, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    const/4 v1, 0x0

    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v12

    check-cast v12, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 463
    .local v12, footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 465
    .local v7, bBtnIconBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_9

    .line 466
    invoke-virtual {v12, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 472
    :cond_6
    :goto_4
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 473
    .local v17, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v17, :cond_7

    .line 475
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_a

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v1, v3, v0}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v12}, Lcom/htc/album/modules/ui/widget/FooterButton;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/album/helper/ShareMenuManager;->setPluginButtonID(I)V

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v1, v12}, Lcom/htc/album/helper/ShareMenuManager;->setPluginFooterButton(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v3}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    .line 482
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->enableShareDataPlugin(Z)V

    .line 458
    :cond_7
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 449
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v10           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v11           #btnIndexTable:[I
    .end local v12           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v14           #indexTable:[[I
    .end local v17           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    .line 450
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 468
    .restart local v7       #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v11       #btnIndexTable:[I
    .restart local v12       #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .restart local v14       #indexTable:[[I
    :cond_9
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 469
    .local v8, bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    .line 470
    invoke-virtual {v12, v8}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 485
    .end local v8           #bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v17       #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v0, v17

    invoke-virtual {v1, v12, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    goto :goto_5

    .line 489
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v9           #barSize:I
    .end local v10           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v11           #btnIndexTable:[I
    .end local v12           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v13           #i:I
    .end local v14           #indexTable:[[I
    .end local v16           #size:I
    .end local v17           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-eq v1, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "flag_genuine"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_d

    .line 491
    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0116

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_0

    .line 493
    :cond_d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "my_live_album"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v1, v3, :cond_e

    .line 495
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v15

    check-cast v15, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 499
    .local v15, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v1, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 501
    const/4 v1, 0x0

    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 503
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0116

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_0

    .line 507
    .end local v15           #shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_e
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v15

    check-cast v15, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 508
    .restart local v15       #shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v15}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    .line 509
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0116

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_0

    .line 455
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1376
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onResume()V

    .line 1377
    const/4 v0, 0x0

    .line 1378
    .local v0, albumSnManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    .line 1379
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v0

    .line 1381
    :cond_0
    const/4 v1, 0x0

    .line 1382
    .local v1, bIsAccountActive:Z
    if-eqz v0, :cond_1

    .line 1383
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    .line 1385
    :cond_1
    if-nez v1, :cond_2

    .line 1387
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onBackPressed()Z

    .line 1389
    :cond_2
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1344
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->cancel(Z)Z

    .line 1345
    :cond_0
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    .line 1347
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->cancel(Z)Z

    .line 1348
    :cond_1
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    .line 1350
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setVisibility(Z)V

    .line 1351
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 1353
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 1356
    :cond_2
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    .line 1209
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 1210
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 1211
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 1213
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setUIHandler(Landroid/os/Handler;)V

    .line 1214
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v7, :cond_0

    .line 1216
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v6

    .line 1217
    .local v6, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v7, "service_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 1219
    .local v5, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateThumbPhotoListPlugin()Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 1222
    const-string v7, "user_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1223
    .local v4, pid:Ljava/lang/String;
    const-string v7, "SceneOnlinePhotoThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create opensense data plugin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v7, v1, v8, v4}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createThumbPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 1225
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1228
    :goto_1
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v7, :cond_0

    .line 1240
    .end local v1           #dataplugin:Ljava/lang/String;
    .end local v4           #pid:Ljava/lang/String;
    .end local v5           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v6           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_0
    const/4 v8, 0x1

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v7, v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    move-result v7

    if-ne v8, v7, :cond_1

    .line 1242
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->notifyUpdateDataPlugin()V

    .line 1245
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/gridview/GridView;->setVisibility(Z)V

    .line 1248
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v8, 0x2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 1252
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    .line 1254
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-virtual {v7, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 1255
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onVerifyImageStatus(I)V

    .line 1257
    const/4 v3, 0x0

    .line 1258
    .local v3, nIsListChanged:Z
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    .line 1260
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v9, "refresh_by_delete"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-ne v7, v3, :cond_7

    .line 1262
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "refresh_by_delete"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1263
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1264
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->invalidateControlBars()V

    .line 1273
    :cond_2
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1284
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1285
    .local v0, activity:Landroid/app/Activity;
    instance-of v7, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v7, :cond_4

    move-object v2, v0

    .line 1287
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 1288
    .local v2, msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1289
    const/16 v7, 0x272c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v2, v7, v8, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    .line 1291
    .end local v2           #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setFirstVisibleIndex(I)V

    .line 1292
    const/16 v7, 0x4e47

    invoke-virtual {p0, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRemoveMessage(I)V

    .line 1293
    const/16 v7, 0x4e47

    const/4 v8, 0x0

    const/16 v9, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 1294
    return-void

    .line 1219
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #nIsListChanged:Z
    .restart local v5       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v6       #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1227
    .restart local v1       #dataplugin:Ljava/lang/String;
    .restart local v4       #pid:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createControlBar(II)V

    goto/16 :goto_1

    .line 1266
    .end local v1           #dataplugin:Ljava/lang/String;
    .end local v4           #pid:Ljava/lang/String;
    .end local v5           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v6           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .restart local v3       #nIsListChanged:Z
    :cond_7
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v9, "refresh_by_delete_all"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_2

    .line 1268
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "refresh_by_delete_all"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1269
    const/16 v7, 0x2761

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_2

    .line 1279
    :cond_8
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mUpdateHeaderThumbnail:Z

    if-eq v7, v8, :cond_9

    const/4 v7, 0x1

    if-ne v7, v3, :cond_3

    .line 1280
    :cond_9
    const/16 v7, 0x4e45

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_3
.end method

.method public onShareAlbumLink(ILjava/lang/Object;)V
    .locals 6
    .parameter "selection"
    .parameter "object"

    .prologue
    .line 992
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 994
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 995
    .local v2, szUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 996
    .local v1, szLink:Ljava/lang/String;
    const/4 v3, 0x0

    .line 998
    .local v3, szWebLink:Ljava/lang/String;
    instance-of v4, p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v4, :cond_3

    .line 1000
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][onShareLink]: WrapperPhoto"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p2

    .line 1001
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 1002
    check-cast p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 1003
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move-object v3, v2

    .line 1011
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v4, v0, p1, v3}, Lcom/htc/album/helper/ShareMenuManager;->onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V

    .line 1012
    return-void

    :cond_2
    move-object v3, v1

    .line 1003
    goto :goto_0

    .line 1006
    .restart local p2
    :cond_3
    instance-of v4, p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v4, :cond_1

    .line 1008
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][onShareLink]: WrapperAlbum"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    check-cast p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getWebLink()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onSyncAlbumInfo()V
    .locals 1

    .prologue
    .line 1691
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareSelection:I

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V

    .line 1692
    return-void
.end method

.method public onSyncList(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1618
    const/4 v5, 0x0

    .line 1619
    .local v5, isPhotoListSizeChanged:Z
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-ne v9, v6, :cond_3

    .line 1621
    iput-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    .line 1622
    const/4 v5, 0x1

    .line 1632
    :cond_0
    :goto_0
    const-string v6, "SceneOnlinePhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoThumbnail][onSyncList]:..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    if-ne v9, v6, :cond_4

    .line 1635
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_1

    .line 1636
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v6, p0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 1637
    :cond_1
    invoke-virtual {p0, v10, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1674
    :goto_1
    if-ne v9, v5, :cond_2

    .line 1676
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1677
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-ne v9, v6, :cond_7

    .line 1687
    :cond_2
    :goto_2
    invoke-virtual {p0, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnablePageLoading(Z)V

    .line 1688
    return-void

    .line 1624
    :cond_3
    if-eqz p1, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v9, v6, :cond_0

    .line 1626
    const/4 v5, 0x1

    goto :goto_0

    .line 1641
    :cond_4
    invoke-virtual {p0, v10, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1642
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mTriggerDeleteAnim:Z

    if-ne v9, v6, :cond_6

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    if-ne v6, v9, :cond_6

    .line 1644
    const-string v6, "SceneOnlinePhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoThumbnail][onSyncList]: prepare delete animation..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [I

    .line 1646
    .local v0, delete:[I
    const/4 v3, 0x0

    .line 1647
    .local v3, idx:I
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1648
    .local v1, i:Ljava/lang/Integer;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v3

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_3

    .line 1651
    .end local v1           #i:Ljava/lang/Integer;
    :cond_5
    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsDeleteAnimation:Z

    .line 1653
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v7, 0x0

    new-instance v8, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$3;

    invoke-direct {v8, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$3;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    invoke-virtual {v6, v0, v7, v8}, Lcom/htc/sunny2/widget/gridview/GridView;->startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 1671
    .end local v0           #delete:[I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #idx:I
    :goto_4
    iput-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mTriggerDeleteAnim:Z

    goto :goto_1

    .line 1669
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_4

    .line 1683
    :cond_7
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->invalidateControlBars()V

    goto :goto_2
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1361
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 1362
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 1363
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    .line 1365
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->release()V

    .line 1366
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 1368
    :cond_0
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onUnbindAdapter()V

    .line 1369
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    .line 752
    .local v0, szText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    .line 754
    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 744
    .local v0, szText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    .line 746
    return-object v0
.end method

.method public requestDecodeHeaderPhoto()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 398
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 414
    :goto_0
    return v3

    .line 400
    :cond_1
    const/4 v0, 0x0

    .line 401
    .local v0, nContext:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    move v3, v4

    goto :goto_0

    .line 403
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v1

    .line 404
    .local v1, nPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v1, :cond_3

    move v3, v4

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, nPhotoPath:Ljava/lang/String;
    if-nez v2, :cond_4

    move v3, v4

    goto :goto_0

    .line 409
    :cond_4
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][requestDecodeHeaderPhoto] Decode +"

    invoke-static {v3, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    invoke-virtual {v3, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->cancel(Z)Z

    .line 411
    :cond_5
    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    invoke-direct {v3, p0, v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    .line 412
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    new-array v6, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v3, v5

    .line 414
    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 1204
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1132
    const-string v0, "SceneOnlinePhotoThumbnail"

    return-object v0
.end method

.method public setCurrentPickerMode(I)V
    .locals 1
    .parameter "pickerMode"

    .prologue
    .line 2089
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 2090
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    .line 2091
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 2092
    return-void
.end method
