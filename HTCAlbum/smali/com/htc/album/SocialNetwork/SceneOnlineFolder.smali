.class public Lcom/htc/album/SocialNetwork/SceneOnlineFolder;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlineFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemSelectedListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        "Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEADER_BAR_ONLINE_FOLDER_VIEW:I = 0x2711

.field protected static final LAYOUT_TYPE_LIST:I = 0x1

.field protected static final LAYOUT_TYPE_LOADING:I = 0x2

.field protected static final LAYOUT_TYPE_LOGIN:I = 0x0

.field protected static final LAYOUT_TYPE_UNKNOWN:I = -0x1

.field private static final LOGIN_BAR_ONLINE_FOLDER_VIEW:I = 0x2712

.field public static final LOG_TAG:Ljava/lang/String; = "SceneOnlineFolder"


# instance fields
.field protected mAnimationState:I

.field private mEnableTransition:Z

.field private mFirstActivity:Z

.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mISFromVMMPlugin:Z

.field private mIsExternal:Z

.field private mIsInAnimation:Z

.field private mIsReload:Z

.field private mItemSelected:I

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

.field private mLoginFirst:Z

.field private mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

.field private mReloadMode4Dropbox:Z

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 100
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mScrollState:I

    .line 102
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    .line 103
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    .line 105
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 106
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 107
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    .line 108
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    .line 109
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mItemSelected:I

    .line 110
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableTransitionCache4GridviewFolderList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mEnableTransition:Z

    .line 111
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mISFromVMMPlugin:Z

    .line 112
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mReloadMode4Dropbox:Z

    .line 113
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsReload:Z

    .line 115
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 1005
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    .line 1006
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsInAnimation:Z

    return-void
.end method

.method private RelayoutPageView(I)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 784
    packed-switch p1, :pswitch_data_0

    .line 793
    :goto_0
    return-void

    .line 787
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRelayoutPageLogin()V

    goto :goto_0

    .line 790
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRelayoutPageList()V

    goto :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V

    return-void
.end method

.method private getSocialIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1464
    const/4 v1, 0x0

    .line 1465
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1466
    .local v0, bundleArg:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1467
    const-string v2, "social_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #intent:Landroid/content/Intent;
    check-cast v1, Landroid/content/Intent;

    .line 1469
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method private onBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V
    .locals 4
    .parameter "dataIndex"
    .parameter "gridViewItem"
    .parameter "mediaData"

    .prologue
    .line 464
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mEnableTransition:Z

    if-nez v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ScreenCacheHandler][onBindMediaDataIRT]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 468
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 469
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setAlpha4FolderItem(IF)V

    .line 470
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setVisibility(Z)V

    .line 472
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    if-ne v1, v2, :cond_0

    .line 475
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mItemSelected:I

    if-ne v1, p1, :cond_0

    .line 480
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ScreenCacheHandler][onBindMediaDataIRT]: found..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 4
    .parameter "param"

    .prologue
    .line 485
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 486
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 489
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    check-cast p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    .end local p1
    invoke-direct {v2, v1, v3, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 493
    .local v2, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;

    invoke-direct {v3, p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 510
    return-object v2
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    .line 162
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 163
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    if-ne v1, v2, :cond_2

    .line 168
    :cond_1
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 171
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 176
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 173
    :pswitch_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onRelayoutPageList()V
    .locals 3

    .prologue
    .line 733
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    .line 735
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->setVisibility(I)V

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 738
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 741
    :cond_1
    return-void
.end method

.method private onRelayoutPageLogin()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 745
    iput-boolean v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    .line 747
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    if-nez v8, :cond_0

    .line 749
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 750
    .local v2, context:Landroid/content/Context;
    new-instance v8, Lcom/htc/album/SocialNetwork/LiveLoginBar;

    const/16 v9, 0x2712

    const v10, 0x7f03002f

    invoke-direct {v8, v9, v2, v10}, Lcom/htc/album/SocialNetwork/LiveLoginBar;-><init>(ILandroid/content/Context;I)V

    iput-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    .line 751
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 752
    .local v5, root:Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_0

    .line 754
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    .line 755
    .local v4, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x3

    const/16 v9, 0x2711

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 756
    invoke-static {v2, v11}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 757
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->setVisibility(I)V

    .line 761
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #param:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #root:Landroid/widget/RelativeLayout;
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v6

    .line 762
    .local v6, sceneIntent:Landroid/content/Intent;
    const-string v8, "login_btn_text"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, btnText:Ljava/lang/String;
    const-string v8, "login_btn_description"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, description:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f090068

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    .line 766
    .local v1, btnView:Lcom/htc/widget/HtcRimButton;
    if-eqz v1, :cond_1

    .line 768
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 769
    new-instance v8, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$3;

    invoke-direct {v8, p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$3;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    :cond_1
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f090067

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 779
    .local v7, tv:Landroid/widget/TextView;
    if-eqz v7, :cond_2

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    :cond_2
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 401
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 403
    .local v1, scrollState:I
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mScrollState:I

    if-ne v2, v1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 406
    :cond_0
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mScrollState:I

    .line 409
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v2, v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    if-eqz v2, :cond_2

    .line 411
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_1
    const/16 v0, 0x4f4e

    .line 415
    .local v0, adapterScrollState:I
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setScrollState(III)V

    .line 422
    .end local v0           #adapterScrollState:I
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 428
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onScrolling()V

    goto :goto_0

    .line 411
    :cond_3
    const/16 v0, 0x4f4d

    goto :goto_1

    .line 425
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onScrollIdle()V

    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onUICmdRefresh(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 435
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 448
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh(Z)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 438
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 441
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh(Z)V

    goto :goto_0

    .line 444
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    const-string v0, "AdapterOnlineFolder"

    return-object v0
.end method

.method public enableActionBarUpdate()Z
    .locals 3

    .prologue
    .line 1292
    const/4 v1, 0x0

    .line 1293
    .local v1, bResult:Z
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v2, :cond_2

    .line 1294
    :cond_0
    const/4 v1, 0x1

    .line 1308
    :cond_1
    :goto_0
    return v1

    .line 1297
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1299
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1300
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1301
    const/4 v1, 0x1

    goto :goto_0

    .line 1305
    .end local v0           #activity:Landroid/app/Activity;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enableHostPadding()Z
    .locals 4

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, bIsPadding:Z
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    if-eqz v1, :cond_0

    .line 726
    const/4 v0, 0x1

    .line 728
    :cond_0
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlineFolder][enableHostPadding] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 1445
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 1375
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 1084
    const/16 v0, 0xff

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1146
    const-string v2, ""

    .line 1150
    .local v2, nServiceName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1151
    .local v3, sceneIntent:Landroid/content/Intent;
    if-nez v3, :cond_0

    move-object v5, v2

    .line 1189
    :goto_0
    return-object v5

    .line 1153
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1154
    .local v0, activity:Landroid/app/Activity;
    const-string v5, "service_name"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1159
    const/4 v1, 0x0

    .line 1160
    .local v1, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    .end local v1           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    check-cast v1, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .restart local v1       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v1, :cond_1

    .line 1162
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v5, :cond_2

    .line 1163
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabName()Ljava/lang/String;

    move-result-object v2

    .line 1174
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    move-object v5, v2

    .line 1176
    goto :goto_0

    .line 1166
    :cond_2
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    .line 1167
    .local v4, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    if-eqz v4, :cond_3

    .line 1168
    invoke-virtual {v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/TabPluginRemote;

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 1169
    :cond_3
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v5, :cond_1

    .line 1170
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1178
    .end local v4           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_4
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1180
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1182
    :cond_5
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1184
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1188
    :cond_6
    const-string v5, "SceneOnlineFolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SceneOnlineFolder][getHeaderSubtitle]: Not support services "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v5, ""

    goto/16 :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1124
    const-string v0, ""

    .line 1126
    .local v0, nUserName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1127
    .local v1, sceneIntent:Landroid/content/Intent;
    if-nez v1, :cond_0

    move-object v2, v0

    .line 1136
    :goto_0
    return-object v2

    .line 1129
    :cond_0
    const-string v2, "user_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    const-string v2, ""

    if-eq v0, v2, :cond_1

    move-object v2, v0

    .line 1132
    goto :goto_0

    .line 1136
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1449
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1451
    .local v0, activity:Landroid/app/Activity;
    const-string v3, ""

    .line 1452
    .local v3, szServiceName:Ljava/lang/String;
    const-string v2, ""

    .line 1453
    .local v2, szLoading:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1454
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "service_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1455
    const-string v4, "service_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1458
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1460
    return-object v2
.end method

.method public isHostScene()Z
    .locals 4

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, bIsHost:Z
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-eqz v1, :cond_0

    .line 717
    const/4 v0, 0x1

    .line 719
    :cond_0
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlineFolder][isHostScene] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1279
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    const-string v1, "SceneOnlineFolder"

    const-string v2, "OnActivityResult: pass to data plugin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIActivityResult(IILandroid/content/Intent;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 1068
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onAnimationEnd(I)V

    .line 1070
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    move-result-object v0

    .line 1073
    .local v0, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    if-eqz v0, :cond_0

    .line 1074
    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;->onAnimationEnd(I)V

    .line 1077
    .end local v0           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsInAnimation:Z

    .line 1078
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 980
    const/4 v0, 0x0

    return v0
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 919
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onBindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    .line 921
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 922
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->invalidateControlBars()V

    .line 923
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1089
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1094
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1099
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 680
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 682
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 683
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 685
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 686
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsInAnimation:Z

    if-nez v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 690
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 693
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onConfigurationChanged] "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 695
    return-void
.end method

.method public onConfigurationChangedInBackground(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 698
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mEnableTransition:Z

    if-eqz v0, :cond_0

    .line 704
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 707
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onConfigurationChangedInBackground] "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 709
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    goto :goto_0
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1196
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1198
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1206
    :goto_0
    return-void

    .line 1202
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1198
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 5
    .parameter "nAnimState"

    .prologue
    .line 1027
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1029
    .local v0, animationBundle:Landroid/os/Bundle;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 1030
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1031
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 1032
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 1040
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v3, :cond_1

    .line 1042
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    move-result-object v2

    .line 1043
    .local v2, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    if-eqz v2, :cond_2

    .line 1045
    invoke-interface {v2, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;->onCreateAnimation(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1046
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1054
    .end local v2           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    :cond_1
    :goto_0
    return-object v0

    .line 1050
    .restart local v2       #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 514
    const-string v9, "SceneOnlineFolder"

    const-string v10, "[HTCAlbum][SceneOnlineFolder][onCreateScene]: ..."

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 516
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 518
    const-string v9, "SceneOnlineFolder"

    const-string v10, "[HTCAlbum][SceneOnlineFolder][onCreateScene]: null..."

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v8

    .line 563
    :goto_0
    return-object v2

    .line 521
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 523
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, v12}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v6

    .line 524
    .local v6, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 526
    .local v3, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v9

    invoke-direct {v2, v1, v9, v3}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 530
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;

    move-result-object v7

    .line 532
    .local v7, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;
    new-instance v9, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v9, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 533
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v8, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 534
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v8, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 535
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 537
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v8}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 538
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 543
    const/4 v5, 0x0

    .line 544
    .local v5, nTop:I
    const/4 v4, 0x0

    .line 545
    .local v4, nBottom:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 547
    invoke-static {v0, v11}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v11}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070036

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07002d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v5, v8

    .line 561
    :goto_1
    invoke-virtual {v2, v12, v5, v12, v4}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPadding(IIII)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-static {v0, v11}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v11}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v9

    add-int v5, v8, v9

    .line 557
    sget v8, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->TEXT_HEIGHT_SECOND:I

    mul-int/lit8 v4, v8, 0x2

    goto :goto_1
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 1011
    new-instance v1, Lcom/htc/album/Animation/animationSetFolderGridview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFolderGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 569
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 570
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyScene()V

    .line 571
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 2

    .prologue
    .line 1282
    const/4 v0, 0x0

    .line 1284
    .local v0, bResult:Z
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-eqz v1, :cond_0

    .line 1285
    const/4 v0, 0x1

    .line 1287
    :cond_0
    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 3

    .prologue
    .line 1254
    const/4 v1, 0x0

    .line 1255
    .local v1, bResult:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1256
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v2, :cond_1

    .line 1257
    const/4 v1, 0x1

    .line 1274
    :cond_0
    :goto_0
    return v1

    .line 1260
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1265
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-nez v2, :cond_0

    .line 1266
    const/4 v1, 0x1

    goto :goto_0

    .line 1270
    :cond_2
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-nez v2, :cond_0

    .line 1271
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 14
    .parameter "bundle"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 575
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v6

    .line 576
    .local v6, sceneIntent:Landroid/content/Intent;
    const-string v9, "login_btn_text"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    .line 577
    const-string v9, "from_outside"

    invoke-virtual {v6, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    .line 578
    const-string v9, "SceneOnlineFolder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 585
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 587
    invoke-virtual {p0, v11}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->setEnableControlBarAnimation(Z)V

    .line 589
    :cond_0
    iget-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-nez v9, :cond_1

    .line 591
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 599
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-eqz v9, :cond_9

    .line 601
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 602
    .local v0, activity:Landroid/app/Activity;
    new-instance v9, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 604
    const-string v9, "service_name"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 605
    .local v7, serviceName:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v13

    invoke-virtual {v9, v7, v12, v13}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 607
    const-string v9, "SceneOnlineFolder"

    const-string v10, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: exit 1..."

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 675
    .end local v0           #activity:Landroid/app/Activity;
    .end local v7           #serviceName:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v9, v11

    .line 576
    goto :goto_0

    .line 595
    :cond_4
    const/16 v9, 0x2711

    invoke-virtual {p0, v10, v9}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->createControlBar(II)V

    goto :goto_1

    .line 612
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v7       #serviceName:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    .line 613
    .local v4, context:Landroid/content/Context;
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v9, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/plugin/TabPluginRemote;

    iput-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 614
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v4, v9, v12}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createAlbumListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    move-result-object v5

    .line 615
    .local v5, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-nez v5, :cond_6

    .line 617
    const-string v9, "SceneOnlineFolder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 621
    :cond_6
    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onEnableSignInProcedure()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 623
    const-string v9, "SceneOnlineFolder"

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: mDataPlugin init"

    invoke-static {v9, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v9, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 629
    :cond_7
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    .line 630
    .local v2, bIsAccountActive:Z
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    instance-of v9, v9, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v9, :cond_8

    .line 632
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 633
    .local v8, switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->isHostScene()Z

    move-result v9

    invoke-interface {v8, v9, v11}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    .line 635
    if-nez v2, :cond_c

    .line 636
    invoke-interface {v8, v10}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 640
    .end local v8           #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :cond_8
    :goto_3
    if-nez v2, :cond_9

    .line 642
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabTag()Ljava/lang/String;

    move-result-object v9

    const-string v12, "com.htc.vmm"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 643
    iput-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mISFromVMMPlugin:Z

    .line 644
    const-string v9, "SceneOnlineFolder"

    const-string v10, "[HTCAlbum][SceneOnlineFolder][onEnterScene] VMM : no login-in view"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #bIsAccountActive:Z
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    .end local v7           #serviceName:Ljava/lang/String;
    :cond_9
    :goto_4
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    new-instance v10, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemSelectedListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemSelectedListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 653
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v9, v9, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v9, :cond_b

    .line 655
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 656
    .local v3, cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    .line 657
    const-string v9, "SceneOnlineFolder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: screecache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v9, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v9, :cond_b

    .line 661
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewFolderList()Z

    move-result v1

    .line 663
    .local v1, bEnableScrollCache:Z
    if-eqz v1, :cond_a

    .line 664
    iget-object v9, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v10, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v9, p0, v10}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 666
    :cond_a
    iget-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mEnableTransition:Z

    if-eqz v9, :cond_b

    .line 667
    iget-object v9, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    sget-object v10, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v9, p0, v10}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 671
    .end local v1           #bEnableScrollCache:Z
    .end local v3           #cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    :cond_b
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    .line 672
    .restart local v4       #context:Landroid/content/Context;
    if-eqz v4, :cond_2

    .line 673
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto/16 :goto_2

    .line 638
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v2       #bIsAccountActive:Z
    .restart local v5       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    .restart local v7       #serviceName:Ljava/lang/String;
    .restart local v8       #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :cond_c
    invoke-interface {v8, v11}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    goto/16 :goto_3

    .line 646
    .end local v8           #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :cond_d
    iput-boolean v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mISFromVMMPlugin:Z

    .line 647
    invoke-direct {p0, v11}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    goto :goto_4
.end method

.method public onErrorList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1406
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    const-string v6, "SceneOnlineFolder"

    const-string v7, "[HTCAlbum][SceneOnlineFolder][onErrorList]: ..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 1411
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v6, p0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 1413
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1414
    .local v0, activity:Landroid/app/Activity;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v5

    .line 1416
    .local v5, viewRoot:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-nez v6, :cond_2

    .line 1418
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1419
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getPageLoadingLayout()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 1421
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v7, 0x7f090012

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1422
    .local v4, textView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v7, 0x7f090066

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1424
    .local v2, progressBar:Landroid/widget/ProgressBar;
    const/4 v3, 0x0

    .line 1425
    .local v3, szMessage:Ljava/lang/String;
    const v6, 0x7f0a0044

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1427
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1430
    invoke-virtual {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnableProgressLoading(Z)V

    goto :goto_0
.end method

.method public onItemSelected(I)V
    .locals 22
    .parameter "index"

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    .line 194
    .local v4, adapter:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;
    if-nez v4, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const-string v18, "SceneOnlineFolder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][SceneOnlineFolder][onItemSelected]: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 201
    .local v5, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v5, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v6, Lcom/htc/album/Animation/animationSetFolderGridview;

    .line 205
    .local v6, animationSet:Lcom/htc/album/Animation/animationSetFolderGridview;
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/htc/album/Animation/animationSetFolderGridview;->setFocused(I)V

    .line 207
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v8, bundle:Landroid/os/Bundle;
    move/from16 v15, p1

    .line 210
    .local v15, pos:I
    iget-object v13, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    .line 212
    .local v13, mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;
    const-string v18, "SceneOnlineFolder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][SceneOnlineFolder][onItemClick]1: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 216
    :cond_2
    const-string v18, "SceneOnlineFolder"

    const-string v19, "[HTCAlbum][SceneOnlineFolder][onItemClick]2: skip 1"

    invoke-static/range {v18 .. v19}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_3
    const-string v18, "service_name"

    iget-object v0, v13, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 224
    .local v10, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v10, :cond_a

    .line 225
    const-string v18, "user_id"

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getPID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_1
    const-string v18, "album_id"

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v18, "album_name"

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v18, "album_photo"

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v18, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    sget-object v18, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    sget-object v18, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 235
    :cond_4
    const-string v18, "flag_genuine"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    :cond_5
    const-string v19, "opensense_pugin"

    if-eqz v10, :cond_b

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v18, "refresh_by_delete"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v18, "refresh_by_delete_all"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItemRequest()Ljava/lang/Object;

    move-result-object v14

    .line 244
    .local v14, obj:Ljava/lang/Object;
    instance-of v0, v14, Landroid/os/Bundle;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/mf/MfFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 249
    .local v9, bundleArg:Landroid/os/Bundle;
    const-string v18, "social_intent"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 250
    .local v11, intent:Landroid/content/Intent;
    if-eqz v11, :cond_6

    .line 253
    const-string v18, "service_display"

    const-string v19, "service_display"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/16 v17, 0x0

    .line 256
    .local v17, szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 258
    .local v16, szServiceUrl:Ljava/lang/String;
    iget-object v0, v13, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 259
    sget-object v18, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v16, v18, v19

    .line 265
    :goto_3
    const-string v18, "service_url"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 269
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 278
    .end local v16           #szServiceUrl:Ljava/lang/String;
    .end local v17           #szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string v19, "from_tabhost"

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "from_tabhost"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    const-string v19, "from_albumhost"

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "from_albumhost"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    const-string v19, "from_tmoFaves"

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "from_tmoFaves"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    const-string v19, "user_name"

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "user_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v19, "user_buddyicon"

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "user_buddyicon"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v19, "from_outside"

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "from_outside"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    const-string v19, "my_live_album"

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "my_live_album"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const/16 v19, 0x1

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "from_tmoFaves"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 292
    const/4 v12, 0x0

    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v18, v14

    .line 293
    check-cast v18, Landroid/os/Bundle;

    sget-object v19, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 294
    const-string v18, "SceneOnlineFolder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][SceneOnlineFolder][onItemClick]: facebook: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_7
    sget-object v18, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v18, v14

    .line 297
    check-cast v18, Landroid/os/Bundle;

    sget-object v19, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 298
    const-string v18, "SceneOnlineFolder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][SceneOnlineFolder][onItemClick]: flickr: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_8
    sget-object v18, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 301
    const-string v18, "SceneOnlineFolder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][SceneOnlineFolder][onItemClick]2: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v19, "user_name"

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "user_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v19, "photo_id"

    move-object/from16 v18, v14

    check-cast v18, Landroid/os/Bundle;

    const-string v20, "photo_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 307
    .end local v9           #bundleArg:Landroid/os/Bundle;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    check-cast v14, Landroid/os/Bundle;

    .end local v14           #obj:Ljava/lang/Object;
    const-string v18, "from_outside"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 309
    .local v7, bIsFromOutside:Z
    const-string v18, "SceneOnlineFolder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][SceneOnlineFolder][onItemClick]4: isOutside: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mItemSelected:I

    .line 312
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    const-string v19, "SceneOnlinePhotoThumbnail"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v8, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 227
    .end local v7           #bIsFromOutside:Z
    :cond_a
    const-string v19, "user_id"

    iget-object v0, v13, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 236
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 260
    .restart local v9       #bundleArg:Landroid/os/Bundle;
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v14       #obj:Ljava/lang/Object;
    .restart local v16       #szServiceUrl:Ljava/lang/String;
    .restart local v17       #szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    iget-object v0, v13, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 261
    sget-object v18, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v16, v18, v19

    goto/16 :goto_3

    .line 263
    :cond_d
    const-string v18, "service_url"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 318
    .end local v9           #bundleArg:Landroid/os/Bundle;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #obj:Ljava/lang/Object;
    .end local v16           #szServiceUrl:Ljava/lang/String;
    .end local v17           #szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #bIsFromOutside:Z
    :cond_e
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 322
    .local v3, activity:Landroid/app/Activity;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 324
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v18, "goto_scene"

    const-string v19, "SceneOnlinePhotoThumbnail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v18, "social_bundle"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 327
    const-class v18, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    move-object/from16 v0, v18

    invoke-virtual {v11, v3, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 328
    const/high16 v18, 0x400

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    invoke-virtual {v3, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 333
    .end local v3           #activity:Landroid/app/Activity;
    .end local v11           #intent:Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    const-string v19, "SceneOnlinePhotoThumbnail"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v8, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onLeaveScene()V
    .locals 2

    .prologue
    .line 799
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onLeaveScene]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 801
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLeaveScene()V

    .line 805
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 806
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 347
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 397
    :goto_0
    return v1

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 350
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    .line 351
    goto :goto_0

    .line 353
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 394
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_1
    move v1, v3

    .line 397
    goto :goto_0

    .line 356
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onItemSelected(I)V

    move v1, v2

    .line 357
    goto :goto_0

    .line 359
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onSyncList()V

    goto :goto_1

    .line 362
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsReload:Z

    if-nez v1, :cond_5

    .line 363
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mReloadMode4Dropbox:Z

    .line 365
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onErrorList()V

    goto :goto_1

    .line 368
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->invalidateControlBars()V

    move v1, v2

    .line 369
    goto :goto_0

    .line 371
    :sswitch_4
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitAccountLogin(Landroid/app/Activity;)V

    move v1, v2

    .line 372
    goto :goto_0

    .line 374
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_1

    .line 377
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_1

    .line 380
    :sswitch_7
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_4

    .line 382
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setLastVisibleIndex(I)V

    .line 383
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onVerifyImageStatus(I)V

    goto :goto_1

    .line 387
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onUICmdRefresh(Landroid/os/Message;)V

    move v1, v2

    .line 388
    goto/16 :goto_0

    .line 390
    :sswitch_9
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_1

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x2763 -> :sswitch_2
        0x4e2d -> :sswitch_4
        0x4e47 -> :sswitch_7
        0x4e88 -> :sswitch_1
        0x4e89 -> :sswitch_3
        0x4f4f -> :sswitch_6
        0x5079 -> :sswitch_5
        0x10200001 -> :sswitch_8
        0x10200009 -> :sswitch_9
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 12
    .parameter "bundle"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 817
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 819
    const-string v6, "SceneOnlineFolder"

    const-string v7, "[HTCAlbum][SceneOnlineFolder][onNewAdapter]: begin..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v6, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 821
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v6, p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 823
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v1

    .line 824
    .local v1, intentArg:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 826
    const-string v6, "SceneOnlineFolder"

    const-string v7, "[HTCAlbum][SceneOnlineFolder][onNewAdapter]: no social intent..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 832
    const-string v6, "dmc_bundle"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 833
    .local v2, nBundle:Landroid/os/Bundle;
    invoke-static {v2, v1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->copyBundDataToIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 835
    .end local v2           #nBundle:Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 836
    .local v0, bundleNew:Landroid/os/Bundle;
    const-string v6, "mediaType"

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getAdapterMediaType()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 837
    const-string v6, "user_name"

    const-string v7, "user_name"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v6, "user_buddyicon"

    const-string v7, "user_buddyicon"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v6, "service_display"

    const-string v7, "service_display"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v6, "from_tabhost"

    const-string v7, "from_tabhost"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 841
    const-string v6, "live_album"

    const-string v7, "live_album"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 842
    const-string v6, "sort_list"

    const-string v7, "sort_list"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 843
    const-string v6, "my_live_album"

    const-string v7, "my_live_album"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 844
    const-string v6, "recent_list"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 846
    const/4 v5, 0x0

    .line 847
    .local v5, szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 848
    .local v4, szServiceUrl:Ljava/lang/String;
    const-string v6, "service_name"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, szService:Ljava/lang/String;
    const-string v6, "service_name"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 852
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v4, v6, v9

    .line 862
    :goto_1
    const-string v6, "service_url"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v6, "first_activity"

    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 864
    const-string v6, "user_id"

    const-string v7, "user_id"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 866
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 868
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v6, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setDataBundle(Landroid/os/Bundle;)V

    .line 869
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    const-string v7, "from_albumhost"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setInternal(Z)V

    .line 871
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    if-eqz v6, :cond_4

    .line 873
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v6, p0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 874
    invoke-direct {p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 883
    :goto_2
    const/16 v6, 0x4e89

    invoke-virtual {p0, v6, v11, v9}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 854
    :cond_2
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 856
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v4, v6, v10

    goto :goto_1

    .line 860
    :cond_3
    const-string v6, "service_url"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 878
    :cond_4
    invoke-direct {p0, v10}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 879
    invoke-virtual {p0, v10}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 880
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    new-instance v7, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;

    invoke-direct {v7, p0, v11}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v6, v7}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    goto :goto_2
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 1434
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNotifyUpdateComplete()V

    .line 1435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 1436
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-eqz v0, :cond_0

    .line 1438
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onNotifyUpdateComplete]: notifyMediaDataChange"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setVisibility(Z)V

    .line 1440
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1442
    :cond_0
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 2
    .parameter "bIsLoading"

    .prologue
    .line 987
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 988
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 990
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 992
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1357
    const/4 v0, 0x0

    .line 1358
    .local v0, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    .end local v0           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    check-cast v0, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .restart local v0       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v0, :cond_0

    .line 1360
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onOptionsItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z

    move-result v1

    .line 1370
    :goto_0
    return v1

    .line 1364
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1370
    const/4 v1, 0x0

    goto :goto_0

    .line 1367
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh(Z)V

    move v1, v2

    .line 1368
    goto :goto_0

    .line 1364
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 971
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPause()V

    .line 972
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 1059
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 1060
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 1063
    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 3
    .parameter "nAnimState"

    .prologue
    .line 1015
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsInAnimation:Z

    .line 1016
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    .line 1017
    const/4 v1, 0x0

    .line 1018
    .local v1, bResult:Z
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareAnimation(I)Z

    move-result v1

    .line 1019
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 1020
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 1021
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    .line 1023
    :cond_0
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    .line 1313
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1314
    const/4 v1, 0x0

    .line 1316
    .local v1, bResult:Z
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1317
    .local v0, activity:Landroid/app/Activity;
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    if-eq v5, v6, :cond_0

    if-nez v0, :cond_1

    .line 1319
    :cond_0
    const-string v5, "SceneOnlineFolder"

    const-string v6, "[HTCAlbum][SceneOnlineFolder][onPrepareOptionsMenu]: exits 1... "

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 1352
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 1322
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1328
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v5, :cond_3

    .line 1336
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1337
    const/4 v3, 0x0

    .line 1338
    .local v3, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v3

    .end local v3           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    check-cast v3, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .restart local v3       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v3, :cond_4

    .line 1340
    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v5, v6}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onPrepareOptionsMenu(Landroid/view/Menu;ILjava/lang/String;)Z

    .line 1341
    const-string v5, "SceneOnlineFolder"

    const-string v6, "[HTCAlbum][SceneOnlineFolder][onPrepareOptionsMenu]: Plugin..."

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :goto_1
    const/4 v1, 0x1

    move v2, v1

    .line 1352
    .restart local v2       #bResult:I
    goto :goto_0

    .line 1332
    .end local v2           #bResult:I
    .end local v3           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    :cond_3
    const-string v5, "SceneOnlineFolder"

    const-string v6, "[HTCAlbum][SceneOnlineFolder][onPrepareOptionsMenu]: exits 2... "

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 1333
    .restart local v2       #bResult:I
    goto :goto_0

    .line 1345
    .end local v2           #bResult:I
    .restart local v3       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    :cond_4
    const/4 v4, 0x0

    .line 1346
    .local v4, itemRefresh:Landroid/view/MenuItem;
    const/4 v5, 0x6

    const v6, 0x204021a

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 1348
    const-string v5, "SceneOnlineFolder"

    const-string v6, "[HTCAlbum][SceneOnlineFolder][onPrepareOptionsMenu]: Normal"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRefresh(Z)V
    .locals 4
    .parameter "bEnableLoading"

    .prologue
    const/4 v0, 0x1

    .line 1379
    if-ne v0, p1, :cond_0

    .line 1381
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnableProgressLoading(Z)V

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    const/16 v1, 0x4e24

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1385
    return-void
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 4
    .parameter "header"

    .prologue
    .line 1105
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1111
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onSyncPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1112
    .local v0, bmpIcon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1114
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlineFolder][onRefreshHeaderBar] bmpIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1117
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageMode(I)V

    .line 1118
    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 938
    const-string v1, "SceneOnlineFolder"

    const-string v2, "[HTCAlbum][SceneOnlineFolder][onResume]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onResume()V

    .line 940
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mReloadMode4Dropbox:Z

    if-eqz v1, :cond_1

    .line 941
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 942
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUnloadData()V

    .line 943
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    new-instance v2, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;

    invoke-direct {v2, p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 944
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncConnection()V

    .line 945
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 946
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsReload:Z

    .line 947
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    .line 948
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mReloadMode4Dropbox:Z

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    const/4 v0, 0x0

    .line 952
    .local v0, bIsAccountActive:Z
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_2

    .line 954
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v0

    .line 955
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mISFromVMMPlugin:Z

    if-nez v1, :cond_2

    .line 957
    invoke-direct {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 960
    :cond_2
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    if-eqz v1, :cond_0

    .line 962
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 963
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUnloadData()V

    .line 964
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    new-instance v2, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;

    invoke-direct {v2, p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 965
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 908
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 912
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 913
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 888
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 890
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 891
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 893
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 894
    .local v1, msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 895
    const/16 v2, 0x272c

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    .line 897
    .end local v1           #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "refresh_by_delete_all"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 899
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "refresh_by_delete_all"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 900
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh(Z)V

    .line 902
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mItemSelected:I

    .line 903
    return-void
.end method

.method public onSyncList()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->notifyDataSetChanged()V

    .line 340
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnableProgressLoading(Z)V

    .line 342
    return-void
.end method

.method protected onSyncPhoto()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1388
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 1396
    :goto_0
    return-object v0

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1392
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1393
    .local v7, sceneIntent:Landroid/content/Intent;
    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    .line 1394
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_5

    :cond_4
    move-object v0, v2

    goto :goto_0

    .line 1396
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, -0x1

    const-string v3, "user_buddyicon"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 929
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onUnbindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 931
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    .line 932
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 933
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1231
    const/4 v1, 0x0

    .line 1233
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1235
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v2, :cond_1

    .line 1236
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 1250
    :cond_0
    :goto_0
    return-object v1

    .line 1239
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1241
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1242
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1246
    :cond_2
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-nez v2, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1209
    const/4 v1, 0x0

    .line 1211
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1212
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v2, :cond_1

    .line 1213
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    .line 1227
    :cond_0
    :goto_0
    return-object v1

    .line 1216
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1218
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1223
    :cond_2
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-nez v2, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    const-string v0, "SceneOnlineFolder"

    return-object v0
.end method
