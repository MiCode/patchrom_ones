.class public Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "ListViewAdapterExpandBrowser.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 24
    const-string v0, "ExpandListView"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->LOG_TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 35
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 39
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    sget v3, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 55
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 62
    if-nez p4, :cond_2

    .line 63
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030027

    invoke-virtual {v5, v6, p5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 68
    .local v4, view:Landroid/view/View;
    :goto_0
    invoke-static {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v2

    .line 69
    .local v2, position:I
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 71
    .local v1, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const v5, 0x7f090053

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 72
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f090052

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemTileImage;

    .line 73
    .local v0, icon:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 75
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 82
    const-string v5, "0"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    const v5, 0x7f02001b

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 88
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemTileImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    :cond_1
    :goto_1
    return-object v4

    .line 65
    .end local v0           #icon:Lcom/htc/widget/HtcListItemTileImage;
    .end local v1           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v2           #position:I
    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    move-object v4, p4

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 90
    .restart local v0       #icon:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v1       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v2       #position:I
    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_3
    const-string v5, "2"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "4"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 93
    :cond_4
    const v5, 0x7f0a00b7

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 94
    const v5, 0x2080063

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_1

    .line 96
    :cond_5
    const-string v5, "UNKNOWN"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    const v5, 0x7f0a00bb

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 99
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_1
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 1
    .parameter "groupPosition"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 111
    .local v0, childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    return-object v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 119
    if-nez p3, :cond_1

    .line 120
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030027

    invoke-virtual {v6, v7, p4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 125
    .local v5, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 127
    .local v2, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const v6, 0x7f090053

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 128
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f090052

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemTileImage;

    .line 129
    .local v0, icon:Lcom/htc/widget/HtcListItemTileImage;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 130
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 134
    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetParentID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 139
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 140
    const v6, 0x7f02001b

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 144
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    :cond_0
    :goto_1
    return-object v5

    .line 122
    .end local v0           #icon:Lcom/htc/widget/HtcListItemTileImage;
    .end local v2           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    move-object v5, p3

    .restart local v5       #view:Landroid/view/View;
    goto :goto_0

    .line 149
    .restart local v0       #icon:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v2       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_2
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, thumbBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImg()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_3

    .line 155
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, imgPath:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 158
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, p1, v1}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 161
    .end local v1           #imgPath:Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    .line 162
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 164
    :cond_4
    const v6, 0x7f02001c

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_1
.end method
