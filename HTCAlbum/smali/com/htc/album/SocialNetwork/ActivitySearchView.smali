.class public Lcom/htc/album/SocialNetwork/ActivitySearchView;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;
.source "ActivitySearchView.java"


# static fields
.field public static final REQUEST_DATA_UPDATE_BY_FILTER:I = 0x9c41

.field public static final RESUME_ADAPTER:I = 0xa411

.field public static mFriendKeepList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mButtonLogin:Lcom/htc/widget/HtcRimButton;

.field private mCurMode:I

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

.field private mLayoutEmptyView:Landroid/widget/RelativeLayout;

.field private mLayoutListView:Landroid/widget/RelativeLayout;

.field private mLayoutLoginView:Landroid/widget/RelativeLayout;

.field private mTextViewLogin:Landroid/widget/TextView;

.field private mbClearTop5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;-><init>()V

    .line 49
    const-string v0, "ActivitySearchView"

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/RelativeLayout;

    .line 57
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 58
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    .line 60
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    .line 62
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    .line 63
    iput v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mCurMode:I

    .line 69
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    return-void
.end method

.method public static addTop5FriendList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V
    .locals 7
    .parameter "a"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 138
    if-nez p0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5FriendList()V

    .line 143
    :cond_1
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 145
    .local v1, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 153
    .end local v1           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_3
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_4

    .line 155
    const-string v3, "Kabaeva"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivitySearchView][addTop5FriendList]: addFriendToKeepList - Remove : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    :cond_4
    const-string v2, "Kabaeva"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivitySearchView][addTop5FriendList]: Add : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static deinitTop5FriendList()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    .line 128
    :cond_0
    return-void
.end method

.method public static getTop5FriendList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5FriendList()V

    .line 133
    :cond_0
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static initTop5FriendList()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->deinitTop5FriendList()V

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method private setButtonOnClickListener()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    new-instance v1, Lcom/htc/album/SocialNetwork/ActivitySearchView$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView$2;-><init>(Lcom/htc/album/SocialNetwork/ActivitySearchView;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 6
    .parameter "nLayoutType"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 283
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivitySearchView][RelayoutPageView]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 292
    if-ne v5, p1, :cond_4

    .line 294
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->setButtonOnClickListener()V

    .line 308
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v0, v3}, Lcom/htc/album/SocialNetwork/ListViewSearch;->showControlTitleBat(Z)V

    .line 324
    :cond_1
    :goto_1
    return-void

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "opensense_tab"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "login_btn_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v0, v5}, Lcom/htc/album/SocialNetwork/ListViewSearch;->showControlTitleBat(Z)V

    goto :goto_1
.end method

.method protected createAdapter()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    .line 268
    :cond_0
    return-void
.end method

.method protected createListView()V
    .locals 3

    .prologue
    .line 275
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewSearch;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    .line 276
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->setActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V

    .line 277
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onCreate()V

    .line 278
    return-void
.end method

.method public initPageComponents()V
    .locals 3

    .prologue
    const v1, 0x7f03002b

    const/4 v2, 0x0

    .line 231
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const v0, 0x2090004

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->setContentView(I)V

    .line 233
    invoke-static {p0, v1}, Lcom/htc/album/picker/PickerConstants;->addBodyToEWL(Landroid/app/Activity;I)Lcom/htc/widget/EditWindowLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    .line 237
    :goto_0
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->initPageComponents()V

    .line 239
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(I)V

    .line 241
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setupFooterButtons(I)V

    .line 242
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020007

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 243
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020004

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 244
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x20401ee

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setCenterButtonLabel(I)V

    .line 245
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020005

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivitySearchView$1;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView$1;-><init>(Lcom/htc/album/SocialNetwork/ActivitySearchView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 255
    :cond_0
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/RelativeLayout;

    .line 256
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    .line 257
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 258
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    .line 259
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    .line 260
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->setContentView(I)V

    goto :goto_0
.end method

.method public initTop5List()V
    .locals 3

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 109
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v2, "clear_top5_frined_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    .line 102
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    if-eqz v2, :cond_0

    .line 104
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->deinitTop5FriendList()V

    .line 105
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5FriendList()V

    .line 106
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onActivityResult]: Begin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/16 v1, 0x4e2a

    if-ne v1, p1, :cond_0

    if-eqz p3, :cond_0

    .line 199
    const-string v1, "contact_update"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 200
    .local v0, bIsUpdate:Z
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onActivityResult]: update contact list."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const v2, 0x9c41

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 206
    .end local v0           #bIsUpdate:Z
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onActivityResult]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onButtonClickLogin()V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 375
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onCreate]: Begin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 81
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "upload_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mCurMode:I

    .line 84
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5List()V

    .line 86
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 88
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onCreate]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivitySearchView][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivitySearchView][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onMenuContactPicker()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public onMenuRefresh()V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e28

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 347
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 397
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    .line 400
    :goto_0
    :sswitch_0
    return-void

    .line 381
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->RelayoutPageView(I)V

    goto :goto_0

    .line 384
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->RelayoutPageView(I)V

    goto :goto_0

    .line 389
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mLoadingText:Ljava/lang/String;

    .line 390
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 378
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_3
        0x274f -> :sswitch_2
        0x2750 -> :sswitch_0
        0x4e84 -> :sswitch_1
        0xa411 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 370
    :goto_0
    return v0

    .line 356
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->onMenuContactPicker()V

    .line 357
    const/4 v0, 0x1

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 184
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onResume()V

    .line 170
    iget v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mCurMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->finish()V

    .line 174
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivitySearchView][onResume]: finish() from onResume() Bcz ExternalStorage is not rdy !"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    goto :goto_0
.end method

.method public setActivityTitle()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public syncExternalRequest()V
    .locals 4

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    const-string v1, "service_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 224
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivitySearchView][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_2
    return-void

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method
