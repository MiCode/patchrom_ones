.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityAlbumFolderSelector.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;
.implements Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderSelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    }
.end annotation


# instance fields
.field private mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

.field private mDefaultItemDrawable:Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    .line 425
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 427
    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$800(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    .line 428
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->start()V

    .line 429
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doLoading()V

    .line 431
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getIconDefaultAlbum(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 433
    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-direct {v0, p1, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    .line 434
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->start()V

    .line 435
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doPause()V

    .line 436
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    return-object v0
.end method

.method private getListCategoryItem(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 1
    .parameter "context"
    .parameter "szCategoryType"

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, acCategory:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    return-object v0
.end method

.method private inflateListViewItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "acItem"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 454
    const/4 v1, 0x0

    .line 456
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)V

    .line 457
    .local v0, tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SEPARATOR_ITEM:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030024

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 470
    :goto_0
    invoke-virtual {p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->listItemName:Ljava/lang/String;

    .line 471
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 473
    return-object v1

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 461
    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->listItem:Lcom/htc/widget/HtcListItem;

    .line 462
    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 463
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 464
    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    .line 465
    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 466
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 467
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 468
    iput p1, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->position:I

    goto :goto_0
.end method

.method private insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "szFolderType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, listAlbumCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 768
    .local v3, nCount:I
    const/4 v4, 0x0

    .line 769
    .local v4, nIndex:I
    const/4 v5, -0x1

    .line 770
    .local v5, nIndexFirst:I
    const/4 v6, -0x1

    .line 775
    .local v6, nIndexLast:I
    const/4 v4, 0x0

    :goto_0
    if-le v3, v4, :cond_4

    .line 777
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v0, :cond_1

    .line 775
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 780
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.htc.HTCAlbum.DUMMY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, folderType:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 788
    const-string v7, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 790
    const-string v7, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.MY_INKS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 804
    :cond_2
    if-ne v9, v5, :cond_0

    .line 805
    move v5, v4

    goto :goto_1

    .line 809
    :cond_3
    if-eq v9, v5, :cond_0

    if-ne v9, v6, :cond_0

    .line 811
    move v6, v4

    .line 834
    .end local v2           #folderType:Ljava/lang/String;
    :cond_4
    :goto_2
    if-ne v9, v5, :cond_8

    if-ne v9, v6, :cond_8

    .line 863
    :cond_5
    :goto_3
    return-void

    .line 818
    .restart local v2       #folderType:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 820
    if-ne v9, v5, :cond_0

    .line 821
    move v5, v4

    goto/16 :goto_1

    .line 825
    :cond_7
    if-eq v9, v5, :cond_0

    if-ne v9, v6, :cond_0

    .line 827
    move v6, v4

    .line 828
    goto :goto_2

    .line 836
    .end local v2           #folderType:Ljava/lang/String;
    :cond_8
    if-eq v9, v5, :cond_9

    if-ne v9, v6, :cond_9

    .line 837
    move v6, v4

    .line 842
    :cond_9
    const/4 v1, 0x0

    .line 843
    .local v1, bIsEnableDivider:Z
    const-string v7, "com.htc.HTCAlbum.SMART_DEFAULT"

    if-ne v7, p2, :cond_b

    .line 844
    const/4 v1, 0x1

    .line 854
    :cond_a
    :goto_4
    if-ne v10, v1, :cond_5

    .line 856
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0, v7, p2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getListCategoryItem(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 858
    invoke-virtual {p1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 859
    add-int/lit8 v5, v5, 0x1

    .line 860
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 846
    :cond_b
    const-string v7, "com.htc.HTCAlbum.LOCAL_FOLDER"

    if-ne v7, p2, :cond_c

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorageUri()Z

    move-result v7

    if-ne v10, v7, :cond_c

    .line 848
    const/4 v1, 0x1

    goto :goto_4

    .line 850
    :cond_c
    const-string v7, "com.htc.HTCAlbum.PHONE_STORAGE"

    if-ne v7, p2, :cond_a

    .line 851
    const/4 v1, 0x1

    goto :goto_4
.end method

.method private setDisplaySeparatorInfo(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, listAlbumCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v0, 0x0

    .line 757
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 759
    .local v1, nCount:I
    const-string v2, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-direct {p0, p1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 760
    const-string v2, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-direct {p0, p1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 761
    const-string v2, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-direct {p0, p1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 762
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeSelectedItem()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 751
    :cond_0
    return-object v3

    .line 738
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 739
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 741
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 742
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SEPARATOR_ITEM:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SELECT_ALL_ITEM:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$300(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 739
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    :cond_3
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 747
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 450
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 478
    if-ltz p1, :cond_0

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, p1, :cond_1

    :cond_0
    const/4 v7, 0x0

    .line 584
    :goto_0
    return-object v7

    .line 480
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 485
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, listItemName:Ljava/lang/String;
    if-nez p2, :cond_4

    .line 487
    invoke-direct {p0, p1, v0, p3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->inflateListViewItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 496
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 498
    .local v4, tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    iput p1, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->position:I

    .line 500
    iput-object v3, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->listItemName:Ljava/lang/String;

    .line 503
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SEPARATOR_ITEM:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_3
    :goto_2
    move-object v7, p2

    .line 584
    goto :goto_0

    .line 490
    .end local v4           #tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 491
    .restart local v4       #tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    iget-object v7, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->listItemName:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SEPARATOR_ITEM:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SEPARATOR_ITEM:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->listItemName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 492
    :cond_5
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->clear()V

    .line 493
    invoke-direct {p0, p1, v0, p3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->inflateListViewItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 509
    :cond_6
    if-nez p1, :cond_9

    .line 513
    iget-object v5, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 514
    .local v5, txtView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 520
    iget-object v2, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    .line 521
    .local v2, imgView:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v2, :cond_7

    .line 524
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 530
    :cond_7
    iget-object v6, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 531
    .local v6, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v6, :cond_3

    .line 533
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v7

    if-ne v10, v7, :cond_8

    .line 534
    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 537
    :cond_8
    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 545
    .end local v2           #imgView:Lcom/htc/widget/HtcListItemTileImage;
    .end local v5           #txtView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v6           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :cond_9
    iget-object v5, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 546
    .restart local v5       #txtView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 552
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v7, p1, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->pull(ILcom/htc/album/TabPluginDevice/AlbumCollection;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 554
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    .line 555
    .restart local v2       #imgView:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v2, :cond_a

    .line 558
    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 561
    :cond_a
    if-eqz v1, :cond_b

    .line 562
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 571
    :goto_3
    iget-object v6, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 572
    .restart local v6       #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v6, :cond_3

    .line 574
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v7

    if-ne v10, v7, :cond_c

    .line 575
    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 565
    .end local v6           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :cond_b
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 578
    .restart local v6       #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :cond_c
    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method public isDeselectAll()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 710
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 718
    :cond_0
    :goto_0
    return v3

    .line 711
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 712
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 713
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 714
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    :cond_2
    move v3, v4

    .line 718
    goto :goto_0
.end method

.method public isSelectAll()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 690
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 706
    :goto_0
    return v3

    .line 691
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 692
    .local v1, count:I
    const/4 v0, 0x0

    .line 693
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 694
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 695
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SELECT_ALL_ITEM:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$300(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 693
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 698
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SEPARATOR_ITEM:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 702
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 706
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 634
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-virtual {p0, p3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 637
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v0, :cond_0

    .line 638
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SEPARATOR_ITEM:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->toggleVisibility()V

    .line 643
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    iget-object v2, v3, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 644
    .local v2, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v2, :cond_2

    .line 646
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v3

    if-ne v6, v3, :cond_3

    .line 647
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 653
    :cond_2
    :goto_1
    if-nez p3, :cond_5

    .line 654
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 655
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->setAllItemSelection(Z)V

    goto :goto_0

    .line 650
    :cond_3
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 657
    :cond_4
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->setAllItemSelection(Z)V

    goto :goto_0

    .line 660
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 661
    .local v1, acSelectAllItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->isSelectAll()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 662
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->toggleVisibility()V

    .line 664
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$800(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 667
    :cond_6
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->toggleVisibility()V

    .line 669
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$800(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onNotifyUpdateComplete(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->notifyDataSetChanged()V

    .line 607
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 611
    new-instance v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SELECT_ALL_ITEM:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$300(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v0, tempSelectAll:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v1, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SEPARATOR_ITEM:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .local v1, tempSeparator:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    if-nez p1, :cond_0

    .line 619
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .restart local p1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 622
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 623
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->isSelectAll()Z

    move-result v2

    if-nez v2, :cond_1

    .line 624
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tempSelectAll:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 625
    .restart local v0       #tempSelectAll:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->toggleVisibility()V

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doClear()V

    .line 629
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doResume()V

    .line 630
    return-void
.end method

.method public onReady(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 723
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$800(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 724
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 725
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 726
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 727
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$800(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    sget v1, Lcom/htc/opensense2/album/cache/CacheManager;->PREV_LISTVIEW_VISIBLE_RANGE:I

    sub-int v1, p2, v1

    sget v2, Lcom/htc/opensense2/album/cache/CacheManager;->NEXT_LISTVIEW_VISIBLE_RANGE:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->setVisibleRange(II)V

    .line 899
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 891
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doStop()V

    .line 589
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doClear()V

    .line 590
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultItemDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 592
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doStop()V

    .line 594
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 595
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doPause()V

    .line 599
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doLoading()V

    .line 601
    return-void
.end method

.method public setAllItemSelection(Z)V
    .locals 6
    .parameter "isSelected"

    .prologue
    .line 677
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 687
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getCount()I

    move-result v1

    .line 680
    .local v1, count:I
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const/4 v3, 0x0

    .line 681
    .local v3, visible:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 682
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 683
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setVisibility(I)V

    .line 681
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 680
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v2           #i:I
    .end local v3           #visible:I
    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    .line 686
    .restart local v2       #i:I
    .restart local v3       #visible:I
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$800(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
