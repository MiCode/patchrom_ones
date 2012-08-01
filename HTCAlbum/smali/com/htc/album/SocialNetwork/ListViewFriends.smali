.class public Lcom/htc/album/SocialNetwork/ListViewFriends;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
.source "ListViewFriends.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView",
        "<",
        "Lcom/htc/widget/HtcListView;",
        "Landroid/widget/RelativeLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListViewFriends"


# instance fields
.field private mAutoFocusIndex:I

.field private mHandlerData:Landroid/os/Handler;

.field private mHandlerUI:Landroid/os/Handler;

.field mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mLastScrollState:I

.field mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 52
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerUI:Landroid/os/Handler;

    .line 53
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerData:Landroid/os/Handler;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    .line 333
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriends$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriends;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 394
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriends$2;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriends;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 67
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerUI:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 1
    .parameter "fragment"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 52
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerUI:Landroid/os/Handler;

    .line 53
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerData:Landroid/os/Handler;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    .line 333
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriends$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriends;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 394
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriends$2;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriends;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 62
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerUI:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 416
    const/4 v12, 0x0

    .line 417
    .local v12, viewText_1:Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 418
    .local v10, viewListItem:Lcom/htc/widget/HtcListItem;
    const/4 v11, 0x0

    .line 419
    .local v11, viewText:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v8, 0x0

    .line 420
    .local v8, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    const/4 v9, 0x0

    .line 422
    .local v9, viewImage:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 423
    .local v3, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 425
    .local v1, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/opensense2/album/util/SeparatorTag;->getType()Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, tagCurrent:Ljava/lang/String;
    if-nez p2, :cond_5

    .line 433
    const-string v13, "SEPARABLE_DIVIDER"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030024

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 488
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 493
    const-string v13, "SEPARABLE_DIVIDER"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 497
    if-nez p1, :cond_a

    move-object/from16 v13, p2

    .line 499
    check-cast v13, Lcom/htc/widget/HtcListItemSeparator;

    const/4 v14, 0x0

    const v15, 0x20401ef

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 501
    const/4 v13, 0x1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v14

    if-ne v13, v14, :cond_1

    .line 502
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;ZZ)V

    .line 568
    .end local v7           #tagCurrent:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p2

    .line 437
    .restart local v7       #tagCurrent:Ljava/lang/String;
    :cond_2
    const-string v13, "SEPARABLE_PLACEHOLDER"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f03001d

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 443
    :cond_3
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030021

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 446
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030020

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 452
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 453
    .local v6, tagCache:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 455
    const-string v13, "SEPARABLE_DIVIDER"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030024

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 459
    :cond_6
    const-string v13, "SEPARABLE_PLACEHOLDER"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f03001d

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 465
    :cond_7
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030021

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 468
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030020

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 474
    :cond_9
    const-string v13, "SEPARABLE_DIVIDER"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 478
    const-string v13, "SEPARABLE_PLACEHOLDER"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto/16 :goto_0

    .end local v6           #tagCache:Ljava/lang/String;
    :cond_a
    move-object/from16 v13, p2

    .line 508
    check-cast v13, Lcom/htc/widget/HtcListItemSeparator;

    const/4 v14, 0x0

    const v15, 0x20401f0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    goto/16 :goto_1

    .line 511
    :cond_b
    const-string v13, "SEPARABLE_PLACEHOLDER"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v13, Lcom/htc/widget/HtcListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 515
    .local v5, res:Landroid/content/res/Resources;
    const v13, 0x7f090012

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewText_1:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 516
    .restart local v12       #viewText_1:Landroid/widget/TextView;
    if-eqz v12, :cond_1

    .line 518
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 519
    .local v4, param:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_c

    .line 521
    const/4 v13, 0x1

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v13, v14, :cond_d

    .line 522
    sget v13, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->LIST_ITEM_NO_FRIENDS_VIEW_HEIGHT_PORT_DIMEN:I

    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 526
    :cond_c
    :goto_2
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getNameByResource()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 524
    :cond_d
    sget v13, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->LIST_ITEM_NO_FRIENDS_VIEW_HEIGHT_LAND_DIMEN:I

    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 531
    .end local v4           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    if-nez v13, :cond_12

    const/4 v2, 0x1

    .line 533
    .local v2, bIsIdle:Z
    :goto_3
    const v13, 0x7f090046

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #viewListItem:Lcom/htc/widget/HtcListItem;
    check-cast v10, Lcom/htc/widget/HtcListItem;

    .line 534
    .restart local v10       #viewListItem:Lcom/htc/widget/HtcListItem;
    const v13, 0x7f090045

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v9, Lcom/htc/widget/HtcListItemTileImage;

    .line 535
    .restart local v9       #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const v13, 0x7f090047

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #viewText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v11, Lcom/htc/widget/HtcListItem2LineText;

    .line 536
    .restart local v11       #viewText:Lcom/htc/widget/HtcListItem2LineText;
    const v13, 0x7f090048

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    check-cast v8, Lcom/htc/widget/HtcCheckBox;

    .line 538
    .restart local v8       #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v10, :cond_f

    .line 543
    :cond_f
    if-eqz v9, :cond_10

    .line 545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v13, Lcom/htc/widget/HtcListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v3, v13, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 551
    :cond_10
    if-eqz v11, :cond_11

    .line 556
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 557
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 560
    :cond_11
    if-eqz v8, :cond_1

    .line 562
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 531
    .end local v2           #bIsIdle:Z
    :cond_12
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private getViewFriendsPicker(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 572
    if-ltz p1, :cond_0

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v8

    if-gt v8, p1, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 685
    :goto_0
    return-object v8

    .line 574
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    .line 575
    .local v4, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
    const/4 v0, 0x0

    .line 576
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v4, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 578
    .restart local v0       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-nez v0, :cond_2

    .line 579
    const/4 v8, 0x0

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    .line 584
    .local v2, curSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-nez p2, :cond_5

    .line 585
    invoke-direct {p0, p1, v0, p3}, Lcom/htc/album/SocialNetwork/ListViewFriends;->inflateListViewItem(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 596
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;

    .line 598
    .local v5, tag:Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;
    iput p1, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->position:I

    .line 600
    iput-object v2, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->separatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 602
    const-string v8, "SEPARABLE_DIVIDER"

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/SeparatorTag;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_4
    :goto_2
    move-object v8, p2

    .line 685
    goto :goto_0

    .line 587
    .end local v5           #tag:Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;

    .line 588
    .restart local v5       #tag:Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;
    iget-object v8, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->separatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eqz v8, :cond_6

    const-string v8, "SEPARABLE_DIVIDER"

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/SeparatorTag;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "SEPARABLE_DIVIDER"

    iget-object v9, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->separatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/util/SeparatorTag;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 591
    :cond_6
    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->clear()V

    .line 592
    invoke-direct {p0, p1, v0, p3}, Lcom/htc/album/SocialNetwork/ListViewFriends;->inflateListViewItem(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 605
    :cond_7
    if-nez p1, :cond_b

    .line 610
    iget-object v6, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 611
    .local v6, txtView:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v6, :cond_8

    .line 612
    const v8, 0x204014f

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 613
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 614
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 620
    :cond_8
    iget-object v3, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    .line 621
    .local v3, imgView:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v3, :cond_9

    .line 623
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 629
    :cond_9
    iget-object v7, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 630
    .local v7, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v7, :cond_4

    .line 632
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 633
    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v9

    if-ne v8, v9, :cond_a

    .line 634
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 637
    :cond_a
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 645
    .end local v3           #imgView:Lcom/htc/widget/HtcListItemTileImage;
    .end local v6           #txtView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v7           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :cond_b
    iget-object v6, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 646
    .restart local v6       #txtView:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v6, :cond_c

    .line 647
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 648
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 649
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 655
    :cond_c
    iget-object v3, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    .line 656
    .restart local v3       #imgView:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v3, :cond_d

    .line 658
    iget v8, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    if-nez v8, :cond_e

    const/4 v1, 0x1

    .line 660
    .local v1, bIsIdle:Z
    :goto_3
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v8, Lcom/htc/widget/HtcListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8, p1, v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 664
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 670
    .end local v1           #bIsIdle:Z
    :cond_d
    iget-object v7, v5, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 671
    .restart local v7       #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v7, :cond_4

    .line 673
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 674
    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v9

    if-ne v8, v9, :cond_f

    .line 675
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 658
    .end local v7           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :cond_e
    const/4 v1, 0x0

    goto :goto_3

    .line 678
    .restart local v7       #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :cond_f
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method private inflateListViewItem(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "wrapper"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 688
    const/4 v1, 0x0

    .line 689
    .local v1, view:Landroid/view/View;
    if-nez p2, :cond_0

    move-object v2, v1

    .line 708
    .end local v1           #view:Landroid/view/View;
    .local v2, view:Landroid/view/View;
    :goto_0
    return-object v2

    .line 692
    .end local v2           #view:Landroid/view/View;
    .restart local v1       #view:Landroid/view/View;
    :cond_0
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriends;)V

    .line 693
    .local v0, tag:Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;
    const-string v3, "SEPARABLE_DIVIDER"

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/SeparatorTag;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030024

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 706
    :goto_1
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->separatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 707
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 708
    .end local v1           #view:Landroid/view/View;
    .restart local v2       #view:Landroid/view/View;
    goto :goto_0

    .line 696
    .end local v2           #view:Landroid/view/View;
    .restart local v1       #view:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030020

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 697
    const v3, 0x7f090046

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem;

    iput-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->listItem:Lcom/htc/widget/HtcListItem;

    .line 698
    const v3, 0x7f090047

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 699
    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 700
    const v3, 0x7f090045

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    .line 701
    const v3, 0x7f090048

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    iput-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 702
    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 703
    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 704
    iput p1, v0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->position:I

    goto :goto_1
.end method


# virtual methods
.method public bindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    const-string v0, "ListViewFriends"

    const-string v1, "[HTCAlbum][ListViewFriends][bindAdapter]Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 140
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-static {v1, v0, v2}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;Z)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->attachMainView(Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;)V

    .line 151
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 152
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getDataHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerData:Landroid/os/Handler;

    .line 154
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 156
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 159
    :cond_0
    const-string v0, "ListViewFriends"

    const-string v1, "[HTCAlbum][ListViewFriends][bindAdapter]End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-static {v1, v0, v2}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;Z)V

    goto :goto_0
.end method

.method public bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->createMainView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public createMainView()Lcom/htc/widget/HtcListView;
    .locals 3

    .prologue
    .line 775
    const-string v1, "ListViewFriends"

    const-string v2, "[HTCAlbum][ListViewFriends][createMainView]:..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v1, :cond_0

    .line 779
    new-instance v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 784
    :goto_0
    return-object v0

    .line 783
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 784
    .local v0, mainView:Lcom/htc/widget/HtcListView;
    goto :goto_0
.end method

.method public bridge synthetic createMainViewWrapper()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->createMainViewWrapper()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public createMainViewWrapper()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 791
    const-string v0, "ListViewFriends"

    const-string v1, "[HTCAlbum][ListViewFriends][createMainViewWrapper]:..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainViewContainerId()I
    .locals 1

    .prologue
    .line 761
    const v0, 0x7f09003b

    return v0
.end method

.method public getMainViewWrapperContainerId()I
    .locals 1

    .prologue
    .line 767
    const v0, 0x7f09003a

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, viewItem:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewFriends;->getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewFriends;->getViewFriendsPicker(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 805
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->finishSelf()V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 109
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x2

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 114
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v0, v2}, Lcom/htc/app/mf/MfFragment;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v6

    .line 115
    .local v6, fragment:Lcom/htc/app/mf/IMfFragment;
    if-nez v6, :cond_0

    .line 116
    iput v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 118
    :cond_0
    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    if-ne v3, v0, :cond_2

    .line 119
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 123
    :goto_0
    const-string v0, "ListViewFriends"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListViewFriends][onConfigurationChanged]: ORIENTATION_LANDSCAPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v6           #fragment:Lcom/htc/app/mf/IMfFragment;
    :cond_1
    :goto_1
    return-void

    .line 121
    .restart local v6       #fragment:Lcom/htc/app/mf/IMfFragment;
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 127
    .end local v6           #fragment:Lcom/htc/app/mf/IMfFragment;
    :cond_3
    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    if-eq v3, v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 130
    :cond_4
    const-string v0, "ListViewFriends"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListViewFriends][onConfigurationChanged]: ORIENTATION_PORTRAIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onConfirm()V
    .locals 4

    .prologue
    .line 729
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->updateFileCache()V

    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 738
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 739
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "contact_update"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 741
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 742
    return-void

    .line 736
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 20
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v16

    if-nez v16, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 181
    const/16 v16, -0x1

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    .line 182
    const/16 p3, 0x1

    .line 184
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p3

    if-gt v0, v1, :cond_3

    .line 186
    const-string v16, "ListViewFriends"

    const-string v17, "[HTCAlbum][ListViewFriends][onListItemClick]: adapter not ready "

    invoke-static/range {v16 .. v17}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_3
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    .line 201
    :cond_4
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/mf/MfFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 204
    .local v4, bundleArg:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 205
    .local v6, intentArg:Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 207
    const-string v16, "social_bundle"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 208
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_5

    .line 209
    const-string v16, "social_intent"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6           #intentArg:Landroid/content/Intent;
    check-cast v6, Landroid/content/Intent;

    .line 211
    .end local v3           #bundle:Landroid/os/Bundle;
    .restart local v6       #intentArg:Landroid/content/Intent;
    :cond_5
    if-nez v6, :cond_6

    .line 212
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intentArg:Landroid/content/Intent;
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 214
    .restart local v6       #intentArg:Landroid/content/Intent;
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v5, bundleNew:Landroid/os/Bundle;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v7, intentNew:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v10, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 219
    .local v10, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 221
    .local v8, itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/16 v16, 0x1

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 223
    const-string v16, "my_live_album"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    :cond_7
    if-eqz v8, :cond_0

    .line 228
    const-string v16, "ListViewFriends"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[HTCAlbum][ListViewFriends][onListItemClick]: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v15, userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 241
    .local v14, szServiceName:Ljava/lang/String;
    const-string v16, "service_display"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 242
    .local v12, serviceDisplay:Ljava/lang/String;
    const-string v16, "service_url"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 244
    .local v13, serviceUrl:Ljava/lang/String;
    const-string v16, "sort_list"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    const-string v16, "user_buddyicon"

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v16, "user_id"

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v16, "live_album"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string v16, "service_name"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    sget-object v16, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 252
    sget-object v16, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 263
    :cond_8
    :goto_1
    if-eqz v12, :cond_9

    const-string v16, "service_display"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    :cond_9
    if-eqz v13, :cond_a

    const-string v16, "service_url"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    :cond_a
    const-string v16, "user_name"

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v16, "from_tabhost"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    const-string v17, "listviewPos"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/widget/HtcListView;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v16

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    const-string v16, "fromMainActivity"

    const-string v17, "fromMainActivity"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 277
    const-string v16, "social_intent"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    move-object/from16 v16, v0

    const-class v17, Lcom/htc/album/SocialNetwork/MfFragmentMainOnlineFolder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/htc/app/mf/MfFragment;->startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    move/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    goto/16 :goto_0

    .line 254
    :cond_b
    sget-object v16, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 256
    sget-object v16, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 258
    :cond_c
    if-eqz v13, :cond_8

    .line 260
    invoke-virtual {v7, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 282
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    goto/16 :goto_0

    .line 286
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 288
    .local v2, activity:Landroid/app/Activity;
    const-string v16, "goto_scene"

    const-string v17, "SceneOnlineFolder"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-class v16, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    move-object/from16 v0, v16

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 290
    const/high16 v16, 0x400

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 293
    const-string v16, "max_pick"

    const/16 v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 294
    .local v9, limit:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_f

    .line 295
    const-string v16, "max_pick"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    :cond_f
    invoke-virtual {v2, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 302
    .end local v2           #activity:Landroid/app/Activity;
    .end local v4           #bundleArg:Landroid/os/Bundle;
    .end local v5           #bundleNew:Landroid/os/Bundle;
    .end local v6           #intentArg:Landroid/content/Intent;
    .end local v7           #intentNew:Landroid/content/Intent;
    .end local v8           #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v9           #limit:I
    .end local v10           #listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    .end local v12           #serviceDisplay:Ljava/lang/String;
    .end local v13           #serviceUrl:Ljava/lang/String;
    .end local v14           #szServiceName:Ljava/lang/String;
    .end local v15           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v10, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    .line 305
    .local v10, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 306
    .restart local v8       #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    .line 308
    if-nez p3, :cond_12

    .line 309
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    const/16 v17, 0x4e2b

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 312
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    const/16 v17, 0x4e2c

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 315
    :cond_12
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 316
    .local v11, selectAllItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->isSelectAll()Z

    move-result v16

    if-eqz v16, :cond_13

    .line 317
    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v16

    if-nez v16, :cond_0

    .line 318
    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    goto/16 :goto_0

    .line 321
    :cond_13
    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 322
    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    goto/16 :goto_0
.end method

.method protected onListScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "nFirstIndex"
    .parameter "nVisibleItems"
    .parameter "nTotalItems"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    sget v1, Lcom/htc/opensense2/album/cache/CacheManager;->PREV_LISTVIEW_VISIBLE_RANGE:I

    sub-int v1, p2, v1

    sget v2, Lcom/htc/opensense2/album/cache/CacheManager;->NEXT_LISTVIEW_VISIBLE_RANGE:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setVisibleRange(II)V

    .line 352
    :cond_0
    return-void
.end method

.method protected onListScrollFling()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    .line 358
    :cond_0
    return-void
.end method

.method protected onListScrollIdle()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    .line 364
    :cond_0
    return-void
.end method

.method protected onListScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "nScrollState"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    if-ne v0, p2, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iput p2, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    .line 381
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 387
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListScrollIdle()V

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListScrollFling()V

    goto :goto_0

    .line 390
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListScrollTouch()V

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onListScrollTouch()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    .line 370
    :cond_0
    return-void
.end method

.method public onNotifyListComplete()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 90
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v6, 0x0

    .line 93
    .local v6, activity:Landroid/app/Activity;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 97
    :goto_0
    if-nez v6, :cond_2

    .line 106
    .end local v6           #activity:Landroid/app/Activity;
    :cond_0
    :goto_1
    return-void

    .line 96
    .restart local v6       #activity:Landroid/app/Activity;
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    if-ne v3, v0, :cond_0

    .line 103
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_1
.end method

.method public setCurrPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 755
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 800
    :cond_0
    return-void
.end method

.method public unbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    const-string v0, "ListViewFriends"

    const-string v1, "[HTCAlbum][ListViewFriends][unbindAdapter]Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 169
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 172
    :cond_0
    const-string v0, "ListViewFriends"

    const-string v1, "[HTCAlbum][ListViewFriends][unbindAdapter]End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
