.class public Lcom/htc/album/addons/LocalTagView;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
.source "LocalTagView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;,
        Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;,
        Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView",
        "<",
        "Landroid/widget/ImageView;",
        "Landroid/widget/RelativeLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIRECTION_FORWARD:I = 0x2

.field public static final DIRECTION_NEUTRAL:I = 0x1

.field public static final DIRECTION_START:I = 0x0

.field private static final FOOT_BAR_TAGVIEW:I = 0x1bc

.field private static final HEADER_BAR_TAGVIEW:I = 0x14d

.field private static final LOG_TAG:Ljava/lang/String; = "LocalTagView"


# instance fields
.field protected mLayoutTop:Landroid/widget/RelativeLayout;

.field protected mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

.field protected mServiceName:Ljava/lang/String;

.field protected mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

.field protected mTagNext:I

.field protected mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

.field protected mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

.field protected mTagViewSelected:Landroid/view/View;

.field protected mbClearTop5:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 2
    .parameter "activty"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 60
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 61
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    .line 62
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagNext:I

    .line 64
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    .line 65
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    .line 66
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    .line 68
    new-instance v0, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 2
    .parameter "fragment"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 60
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 61
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    .line 62
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagNext:I

    .line 64
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    .line 65
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    .line 66
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    .line 68
    new-instance v0, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    .line 136
    return-void
.end method


# virtual methods
.method public bindAdapter()V
    .locals 5

    .prologue
    const v4, 0x7f090058

    .line 577
    const-string v2, "LocalTagView"

    const-string v3, "[HTCAlbum][LocalTagView][bindAdapter]: Begin"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 579
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 580
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    .line 581
    const-string v2, "clear_top5_frined_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    .line 582
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-virtual {v2}, Lcom/htc/album/addons/AdapterTagPhotos;->bindAdapter()V

    .line 584
    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v2, :cond_2

    .line 585
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v3}, Lcom/htc/app/mf/MfFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/app/mf/MfFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    .line 589
    :goto_1
    const-string v2, "LocalTagView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalTagView][onEnter]: Top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    new-instance v2, Lcom/htc/album/TagUtils/TagInfo;

    invoke-direct {v2}, Lcom/htc/album/TagUtils/TagInfo;-><init>()V

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    .line 592
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/LocalTagView;->setupTaggableView(I)Z

    .line 593
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->setupTagManager()V

    .line 594
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->verifyUIChange()V

    .line 597
    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 598
    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 601
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 607
    :cond_0
    const-string v2, "LocalTagView"

    const-string v3, "[HTCAlbum][LocalTagView][bindAdapter]: End"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-void

    .line 578
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_0

    .line 587
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    goto :goto_1
.end method

.method public bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->createMainView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public createMainView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 562
    new-instance v1, Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic createMainViewWrapper()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->createMainViewWrapper()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public createMainViewWrapper()Landroid/widget/RelativeLayout;
    .locals 3

    .prologue
    const v2, 0x7f09003a

    .line 568
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/mf/MfFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 571
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 520
    .local v0, resource:Landroid/content/res/Resources;
    :goto_0
    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 519
    .end local v0           #resource:Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public getMainViewContainerId()I
    .locals 1

    .prologue
    .line 554
    const v0, 0x7f09003b

    return v0
.end method

.method public getMainViewWrapperContainerId()I
    .locals 1

    .prologue
    .line 558
    const v0, 0x7f09003a

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 159
    const-string v0, "LocalTagView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LocalTagView][onActivityResult]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    packed-switch p2, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 163
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/htc/album/addons/LocalTagView;->onHandleTagUpdate(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/LocalTagView;->setupTaggableView(I)Z

    .line 286
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->relayoutTagManager()V

    .line 288
    return-void
.end method

.method public onConfirm()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 297
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v7, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v8}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v3

    .line 302
    .local v3, nCount:I
    const/4 v1, 0x0

    .line 303
    .local v1, childView:Landroid/view/View;
    const/4 v5, 0x0

    .line 304
    .local v5, tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_0
    if-le v3, v4, :cond_1

    .line 306
    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v8, v4}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 307
    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v8, v1}, Lcom/htc/album/TagUtils/TagViewManager;->isTagView(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 309
    const-string v8, "LocalTagView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][LogTagView][onConfirm]: skip: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 312
    check-cast v6, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .line 313
    .local v6, tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    new-instance v5, Lcom/htc/album/TagUtils/TagInfo;

    .end local v5           #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    invoke-direct {v5}, Lcom/htc/album/TagUtils/TagInfo;-><init>()V

    .line 314
    .restart local v5       #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/TagUtils/TagViewManager;->getTagName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 315
    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/TagUtils/TagViewManager;->getTagID(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 316
    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/TagUtils/TagViewManager;->getTagX(Landroid/view/View;)F

    move-result v8

    iput v8, v5, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 317
    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/TagUtils/TagViewManager;->getTagY(Landroid/view/View;)F

    move-result v8

    iput v8, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 319
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    .end local v6           #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    :cond_1
    const-string v8, "LocalTagView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][LocalTagView][onConfirm]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "tags"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 330
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 333
    iget-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v8, :cond_2

    .line 334
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v8}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v11, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 335
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v8}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 341
    :goto_2
    return-void

    .line 337
    :cond_2
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v11, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 338
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto :goto_2
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
    .line 504
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 511
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onCancel()V

    .line 514
    :goto_0
    return-void

    .line 507
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onConfirm()V

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateDialog(Landroid/view/View;)Landroid/app/Dialog;
    .locals 7
    .parameter "view"

    .prologue
    .line 243
    move-object v4, p1

    .line 245
    .local v4, viewFocused:Landroid/view/View;
    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 246
    .local v0, activity:Landroid/app/Activity;
    :goto_0
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f0a0063

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const v6, 0x7f0a0061

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 249
    .local v3, items:[Ljava/lang/CharSequence;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const-string v5, "LocalTagView"

    const-string v6, "[HTCAlbum][LocalTagView][onCreateDialog]:... "

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v5, p1}, Lcom/htc/album/TagUtils/TagViewManager;->getTagName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 253
    new-instance v5, Lcom/htc/album/addons/LocalTagView$1;

    invoke-direct {v5, p0, v4, v0}, Lcom/htc/album/addons/LocalTagView$1;-><init>(Lcom/htc/album/addons/LocalTagView;Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 275
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 276
    .local v2, dialog:Lcom/htc/widget/HtcAlertDialog;
    return-object v2

    .line 245
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v3           #items:[Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v3}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 537
    .local v1, context:Landroid/content/Context;
    :goto_0
    const/4 v0, 0x0

    .line 538
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 539
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 540
    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0001

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 542
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 543
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 544
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 547
    :cond_0
    return-object v0

    .line 536
    .end local v0           #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .end local v1           #context:Landroid/content/Context;
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method public onEnter()V
    .locals 3

    .prologue
    .line 618
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onEnter()V

    .line 619
    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][onEnter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x2

    const/16 v2, 0x1bc

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 626
    :cond_0
    return-void
.end method

.method public onHandleTagUpdate(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 172
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/htc/album/TagUtils/TagViewManager;->removeTag(Landroid/view/View;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 180
    .local v9, bunde:Landroid/os/Bundle;
    const-string v0, "tag_name"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, szName:Ljava/lang/String;
    const-string v0, "tag_id"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, szID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v3, v3, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v4, v4, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager;->validateTagUniqueness(Ljava/lang/String;Ljava/lang/String;FF)V

    .line 184
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    const-string v3, ""

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v4, v4, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v5, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/TagUtils/TagViewManager;->addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V

    .line 186
    const-string v0, "LocalTagView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalTagView][onHandleTagUpdate]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->verifyUIChange()V

    .line 188
    return-void
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 629
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onLeave()V

    .line 630
    return-void
.end method

.method public onLongClickTagView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/LocalTagView;->onCreateDialog(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    .line 497
    .local v0, nDialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 499
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-virtual {v0}, Lcom/htc/album/addons/AdapterTagPhotos;->onPause()V

    .line 147
    :cond_0
    return-void
.end method

.method public onPhotoTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v7, 0x42c8

    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, tag_x_in_percent:F
    const/4 v2, 0x0

    .line 419
    .local v2, tag_y_in_percent:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 420
    .local v3, x_start:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 423
    .local v4, y_start:F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 424
    .local v0, rc:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 426
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewX()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-eq v5, v6, :cond_0

    .line 427
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Lcom/htc/album/TagUtils/HandlerTagView;->setPhotoViewX(I)V

    .line 428
    :cond_0
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewY()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-eq v5, v6, :cond_1

    .line 429
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Lcom/htc/album/TagUtils/HandlerTagView;->setPhotoViewY(I)V

    .line 434
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewWidth()I

    move-result v5

    if-eqz v5, :cond_2

    .line 435
    mul-float v5, v3, v7

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 436
    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewHeight()I

    move-result v5

    if-eqz v5, :cond_3

    .line 437
    mul-float v5, v4, v7

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 439
    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iput v1, v5, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 440
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iput v2, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 447
    return-void
.end method

.method public onPhotoTouchUp()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    .line 456
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onTouchTagPhotoCommonGalleryService()V

    .line 460
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    .line 462
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onUpdateViewTitle()V

    .line 153
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-virtual {v0}, Lcom/htc/album/addons/AdapterTagPhotos;->onResume()V

    .line 155
    :cond_0
    return-void
.end method

.method public onTagDelete(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TagUtils/TagViewManager;->removeTag(Landroid/view/View;)V

    .line 204
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->verifyUIChange()V

    .line 205
    return-void
.end method

.method public onTagEdit(Landroid/app/Activity;Landroid/view/View;)V
    .locals 9
    .parameter "activity"
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    .line 209
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6, p2}, Lcom/htc/album/TagUtils/TagViewManager;->getTagX(Landroid/view/View;)F

    move-result v6

    iput v6, v5, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 210
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6, p2}, Lcom/htc/album/TagUtils/TagViewManager;->getTagY(Landroid/view/View;)F

    move-result v6

    iput v6, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 213
    iput-object p2, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    .line 216
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.htc.album"

    const-string v6, "com.htc.album.SocialNetwork.ActivitySearchView"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 221
    .local v2, intentTemp:Landroid/content/Intent;
    :goto_0
    const-string v5, "upload_mode"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 222
    .local v4, nMode:I
    const-string v5, "upload_mode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 226
    .local v3, isFacebook:Z
    const-string v5, "service_name"

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    const-string v5, "service_display"

    const-string v6, "facebook"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :cond_0
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1, v1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 239
    return-void

    .line 220
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intentTemp:Landroid/content/Intent;
    .end local v3           #isFacebook:Z
    .end local v4           #nMode:I
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 231
    .restart local v2       #intentTemp:Landroid/content/Intent;
    .restart local v3       #isFacebook:Z
    .restart local v4       #nMode:I
    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    const-string v5, "service_display"

    const-string v6, "flickr"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onTouchTagPhotoCommonGalleryService()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 465
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 467
    .local v3, isFacebook:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 468
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.htc.album"

    const-string v6, "com.htc.album.SocialNetwork.ActivitySearchView"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 471
    .local v2, intentTemp:Landroid/content/Intent;
    :goto_0
    const-string v5, "upload_mode"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 472
    .local v4, nMode:I
    const-string v5, "upload_mode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    const-string v5, "service_name"

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 477
    const-string v5, "service_display"

    const-string v6, "facebook"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    :cond_0
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 484
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "clear_top5_frined_list"

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 485
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 486
    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v5, :cond_3

    .line 487
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 491
    :goto_2
    return-void

    .line 470
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intentTemp:Landroid/content/Intent;
    .end local v4           #nMode:I
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 479
    .restart local v2       #intentTemp:Landroid/content/Intent;
    .restart local v4       #nMode:I
    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-ne v8, v5, :cond_0

    .line 481
    const-string v5, "service_display"

    const-string v6, "flickr"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 489
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_3
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method public onUpdateViewTitle()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public relayoutTagManager()V
    .locals 5

    .prologue
    .line 405
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v1}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewX()I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v2}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewY()I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v3}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager;->setCanvasInfo(IIII)V

    .line 413
    :cond_0
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 640
    return-void
.end method

.method public setupTagManager()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 379
    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][setupTagManager]... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 383
    .local v9, context:Landroid/content/Context;
    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v0, v9}, Lcom/htc/album/TagUtils/HandlerTagView;->getTagViewManager(Landroid/content/Context;)Lcom/htc/album/TagUtils/TagViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 384
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    new-instance v1, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->setTagOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 385
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    new-instance v1, Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->setTagOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 386
    const-string v0, "LocalTagView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LocalTagView][setupTagManager]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 391
    const/4 v12, 0x0

    .line 392
    .local v12, tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v8}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/album/TagUtils/TagPhotoInfo;

    .line 393
    .local v13, tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    invoke-virtual {v13}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 395
    .local v10, nCount:I
    const/4 v11, 0x0

    .local v11, nIndex:I
    :goto_1
    if-le v10, v11, :cond_2

    .line 397
    invoke-virtual {v13, v11}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getTagInfo(I)Lcom/htc/album/TagUtils/TagInfo;

    move-result-object v12

    if-nez v12, :cond_1

    .line 395
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 381
    .end local v9           #context:Landroid/content/Context;
    .end local v10           #nCount:I
    .end local v11           #nIndex:I
    .end local v12           #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    .end local v13           #tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    goto :goto_0

    .line 400
    .restart local v9       #context:Landroid/content/Context;
    .restart local v10       #nCount:I
    .restart local v11       #nIndex:I
    .restart local v12       #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    .restart local v13       #tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v1, v12, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    iget-object v2, v12, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    const-string v3, ""

    iget v4, v12, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget v5, v12, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/TagUtils/TagViewManager;->addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V

    goto :goto_2

    .line 402
    :cond_2
    return-void
.end method

.method public setupTaggableView(I)Z
    .locals 5
    .parameter "nDirection"

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 375
    .end local v0           #bResult:Z
    :goto_0
    return v0

    .line 360
    .restart local v0       #bResult:Z
    :cond_0
    const-string v3, "LocalTagView"

    const-string v4, "[HTCAlbum][LocalTagView][setupTaggableView]... "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v3}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 364
    .local v1, context:Landroid/content/Context;
    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    if-nez v3, :cond_1

    .line 365
    new-instance v3, Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-direct {v3}, Lcom/htc/album/TagUtils/HandlerTagView;-><init>()V

    iput-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    .line 367
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TagUtils/TagPhotoInfo;

    .line 369
    .local v2, photoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Lcom/htc/album/TagUtils/HandlerTagView;->setTaggableView(Landroid/widget/ImageView;)V

    .line 370
    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    invoke-virtual {v3, v1, v2, v4}, Lcom/htc/album/TagUtils/HandlerTagView;->prepareTaggableView(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;Landroid/view/View$OnTouchListener;)Z

    .line 375
    const/4 v0, 0x1

    goto :goto_0

    .line 362
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #photoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_1
.end method

.method public unbindAdapter()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v0}, Lcom/htc/album/TagUtils/HandlerTagView;->release()V

    .line 614
    :cond_0
    return-void
.end method

.method public verifyUIChange()V
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v1}, Lcom/htc/album/TagUtils/TagViewManager;->getTagCount()I

    move-result v0

    .line 192
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 194
    if-nez v0, :cond_1

    .line 195
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 199
    :cond_0
    :goto_0
    const-string v1, "LocalTagView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LocalTagView][onHandleTagUpdate]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    goto :goto_0
.end method
