.class Lcom/htc/album/SocialNetwork/ListViewSearch$2;
.super Ljava/lang/Object;
.source "ListViewSearch.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ListViewSearch;->initEditText()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/album/SocialNetwork/ListViewSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$000(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, searchText:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/album/SocialNetwork/ListViewSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$100(Lcom/htc/album/SocialNetwork/ListViewSearch;)Lcom/htc/widget/ActionBarSearch;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarSearch;->setClearIconVisibility(I)V

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewSearch;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "ListViewSearch"

    const-string v2, "[HTCAlbum][ListViewSearch][afterTextChanged]: SCROLL state is not IDLE skip do FILTER"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_1
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/album/SocialNetwork/ListViewSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$100(Lcom/htc/album/SocialNetwork/ListViewSearch;)Lcom/htc/widget/ActionBarSearch;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarSearch;->setClearIconVisibility(I)V

    goto :goto_0

    .line 216
    :cond_1
    const-string v1, "ListViewSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ListViewSearch][afterTextChanged]: TextChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v1, v0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->setFilter(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$200(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const v2, 0x9c41

    invoke-virtual {v1, v2, v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 224
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 229
    return-void
.end method
