.class public Lcom/htc/album/SocialNetwork/ListViewSearch;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
.source "ListViewSearch.java"


# annotations
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
.field private static final HEADER_BAR_TAGVIEW:I = 0x159

.field private static final LOG_TAG:Ljava/lang/String; = "ListViewSearch"


# instance fields
.field private mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

.field private mHandlerData:Landroid/os/Handler;

.field private mHandlerUI:Landroid/os/Handler;

.field private mHtcTextSelectionHighlightColor:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mLastScrollState:I

.field mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mSearchInput:Landroid/widget/AutoCompleteTextView;

.field private mStrFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 2
    .parameter "activity"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 77
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerUI:Landroid/os/Handler;

    .line 78
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerData:Landroid/os/Handler;

    .line 79
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    .line 81
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    .line 84
    iput v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHtcTextSelectionHighlightColor:I

    .line 94
    iput v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    .line 304
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewSearch$3;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$3;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 314
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewSearch$4;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$4;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerUI:Landroid/os/Handler;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    .line 110
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

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 77
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerUI:Landroid/os/Handler;

    .line 78
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerData:Landroid/os/Handler;

    .line 79
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    .line 81
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    .line 84
    iput v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHtcTextSelectionHighlightColor:I

    .line 94
    iput v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    .line 304
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewSearch$3;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$3;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 314
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewSearch$4;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$4;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 99
    invoke-virtual {p1}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerUI:Landroid/os/Handler;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/ListViewSearch;)Lcom/htc/widget/ActionBarSearch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 350
    const/4 v12, 0x0

    .line 351
    .local v12, viewText_1:Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 352
    .local v10, viewListItem:Lcom/htc/widget/HtcListItem;
    const/4 v9, 0x0

    .line 353
    .local v9, viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const/4 v11, 0x0

    .line 354
    .local v11, viewText:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v8, 0x0

    .line 356
    .local v8, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 357
    .local v5, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 359
    .local v1, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v4

    .line 363
    .local v4, currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-nez p2, :cond_5

    .line 368
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_2

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030024

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 423
    :cond_0
    :goto_0
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 425
    if-eqz p2, :cond_1

    .line 430
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_9

    move-object/from16 v13, p2

    .line 433
    check-cast v13, Lcom/htc/widget/HtcListItemSeparator;

    const/4 v14, 0x0

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getNameByResource()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 493
    .end local v4           #currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_1
    :goto_1
    return-object p2

    .line 372
    .restart local v4       #currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_2
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_3

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f03001d

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 376
    :cond_3
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_4

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_4

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_4

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_0

    .line 381
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030020

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 387
    :cond_5
    const/4 v2, 0x0

    .line 388
    .local v2, aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    check-cast v2, Lcom/htc/opensense2/album/util/SeparatorTag;

    .restart local v2       #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-eqz v2, :cond_0

    .line 390
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_6

    .line 392
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030024

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 397
    :cond_6
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_7

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_7

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_7

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_8

    .line 402
    :cond_7
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_0

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_0

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_0

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030020

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 410
    :cond_8
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_0

    .line 412
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f03001d

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 435
    .end local v2           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_9
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_c

    .line 438
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v13, Lcom/htc/widget/HtcListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 439
    .local v7, res:Landroid/content/res/Resources;
    const v13, 0x7f090012

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewText_1:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 440
    .restart local v12       #viewText_1:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 441
    .local v6, param:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_a

    .line 443
    const/4 v13, 0x1

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v13, v14, :cond_b

    .line 444
    sget v13, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->LIST_ITEM_NO_FRIENDS_VIEW_HEIGHT_PORT_DIMEN:I

    iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 449
    :cond_a
    :goto_2
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getNameByResource()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 446
    :cond_b
    sget v13, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->LIST_ITEM_NO_FRIENDS_VIEW_HEIGHT_LAND_DIMEN:I

    iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 451
    .end local v6           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_c
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_d

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_d

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_d

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_1

    .line 456
    :cond_d
    const v13, 0x7f090046

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #viewListItem:Lcom/htc/widget/HtcListItem;
    check-cast v10, Lcom/htc/widget/HtcListItem;

    .line 457
    .restart local v10       #viewListItem:Lcom/htc/widget/HtcListItem;
    const v13, 0x7f090045

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v9, Lcom/htc/widget/HtcListItemTileImage;

    .line 458
    .restart local v9       #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const v13, 0x7f090047

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #viewText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v11, Lcom/htc/widget/HtcListItem2LineText;

    .line 459
    .restart local v11       #viewText:Lcom/htc/widget/HtcListItem2LineText;
    const v13, 0x7f090048

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    check-cast v8, Lcom/htc/widget/HtcCheckBox;

    .line 461
    .restart local v8       #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v10, :cond_e

    .line 464
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/htc/widget/HtcListItem;->setFocusable(Z)V

    .line 467
    :cond_e
    if-eqz v9, :cond_f

    .line 469
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    if-nez v13, :cond_11

    const/4 v3, 0x1

    .line 470
    .local v3, bIsIdle:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v13, Lcom/htc/widget/HtcListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0, v1, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 474
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcListItemTileImage;->setFocusable(Z)V

    .line 477
    .end local v3           #bIsIdle:Z
    :cond_f
    if-eqz v11, :cond_10

    .line 479
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/album/SocialNetwork/ListViewSearch;->getSpanableText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 480
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 481
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/htc/widget/HtcListItem2LineText;->setFocusable(Z)V

    .line 484
    :cond_10
    if-eqz v8, :cond_1

    .line 486
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 469
    :cond_11
    const/4 v3, 0x0

    goto :goto_3
.end method


# virtual methods
.method public bindAdapter()V
    .locals 3

    .prologue
    .line 572
    const-string v0, "ListViewSearch"

    const-string v1, "[HTCAlbum][ListViewSearch][bindAdapter]Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 575
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;Z)V

    .line 576
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 577
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->attachMainView(Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;)V

    .line 578
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 580
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getDataHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerData:Landroid/os/Handler;

    .line 583
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 587
    :cond_0
    const-string v0, "ListViewSearch"

    const-string v1, "[HTCAlbum][ListViewSearch][bindAdapter]End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->createMainView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public createMainView()Lcom/htc/widget/HtcListView;
    .locals 2

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 555
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bridge synthetic createMainViewWrapper()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->createMainViewWrapper()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public createMainViewWrapper()Landroid/widget/RelativeLayout;
    .locals 3

    .prologue
    const v2, 0x7f09003a

    .line 563
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/mf/MfFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 566
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public getMainViewContainerId()I
    .locals 1

    .prologue
    .line 542
    const v0, 0x7f09003b

    return v0
.end method

.method public getMainViewWrapperContainerId()I
    .locals 1

    .prologue
    .line 546
    const v0, 0x7f09003a

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    return v0
.end method

.method public getSpanableText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .parameter "text"
    .parameter "hightLight"

    .prologue
    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    const-string p1, ""

    .line 238
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 240
    .local v1, spannableString:Landroid/text/SpannableString;
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    :cond_1
    :goto_0
    return-object v1

    .line 243
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, startPos:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 248
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 250
    .local v0, endPos:I
    iget v3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHtcTextSelectionHighlightColor:I

    if-nez v3, :cond_3

    .line 252
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_TextSelectionHighlight(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHtcTextSelectionHighlightColor:I

    .line 254
    :cond_3
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHtcTextSelectionHighlightColor:I

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 260
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 128
    .local v1, viewItem:Landroid/view/View;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewSearch;->getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ListViewSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ListViewSearch][getView]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initEditText()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    .line 177
    const-string v0, "ListViewSearch"

    const-string v1, "[HTCAlbum][ListViewSearch][initEditText]: Search input is null..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/album/SocialNetwork/ListViewSearch$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 191
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/album/SocialNetwork/ListViewSearch$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$2;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    const-string v3, "ListViewSearch"

    const-string v4, "[HTCAlbum][ListViewSearch][initUI]: "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-nez v3, :cond_1

    .line 147
    const-string v3, "ListViewSearch"

    const-string v4, "[HTCAlbum][ListViewSearch][initUI]: no action bar..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableSearchMode(Landroid/content/Context;Z)V

    .line 152
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->searchPane()Lcom/htc/widget/ActionBarSearch;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    .line 153
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarSearch;->setClearIconVisibility(I)V

    .line 155
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v3}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    .line 156
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->initEditText()Z

    move-result v3

    if-ne v6, v3, :cond_2

    .line 158
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    check-cast v3, Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    .line 165
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x7f09003b

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 166
    .local v1, layoutListView:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    .line 168
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    .line 169
    .local v2, nTopMargin:I
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 621
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->updateFileCache()V

    .line 514
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
    .line 500
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    .line 501
    .local v0, nButtonID:I
    packed-switch v0, :pswitch_data_0

    .line 510
    :goto_0
    return-void

    .line 504
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->onConfirm()V

    goto :goto_0

    .line 507
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->onCancel()V

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEnter()V
    .locals 0

    .prologue
    .line 603
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onEnter()V

    .line 605
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->initUI()V

    .line 606
    return-void
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 609
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onLeave()V

    .line 610
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 266
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v4, v4, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    if-eqz v4, :cond_1

    .line 271
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 272
    .local v3, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    invoke-virtual {v3, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 274
    .local v2, itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 276
    const-string v4, "ListViewSearch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListViewSearch][onListItemClick]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->addTop5FriendList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V

    .line 283
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 284
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "tag_name"

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v4, "tag_id"

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 288
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 289
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 300
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v3           #listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v4, v4, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    if-eqz v4, :cond_0

    .line 295
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    .line 296
    .local v3, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
    invoke-virtual {v3, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 297
    .restart local v2       #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 616
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .parameter "strFilter"

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    goto :goto_0
.end method

.method public showControlTitleBat(Z)V
    .locals 4
    .parameter "isShow"

    .prologue
    const/4 v3, 0x1

    .line 520
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 523
    :cond_0
    const-string v0, "ListViewSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListViewSearch][showControlTitleBat]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    if-eqz p1, :cond_1

    .line 526
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v1, 0x159

    invoke-virtual {v0, v3, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBar(I)V

    goto :goto_0
.end method

.method public unbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 592
    const-string v0, "ListViewSearch"

    const-string v1, "[HTCAlbum][ListViewSearch][unbindAdapter]Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 596
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 597
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 599
    :cond_0
    const-string v0, "ListViewSearch"

    const-string v1, "[HTCAlbum][ListViewSearch][unbindAdapter]End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method
