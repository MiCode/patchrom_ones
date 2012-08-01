.class public Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedAdapter.java"

# interfaces
.implements Lcom/htc/opensense2/widget/IExpandableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    }
.end annotation


# static fields
.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "SharedAdapter.KEY_CLASS_NAME"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "SharedAdapter.KEY_PACKAGE"

.field public static final KEY_PACKAGE_NAME_FOR_OTHER:Ljava/lang/String; = "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

.field public static final KEY_SHARE_TO:Ljava/lang/String; = "SharedAdapter.KEY_SHARE_TO"

.field private static final LOG_TAG:Ljava/lang/String; = "SharedAdapter"

.field public static final SHARE_CONFLICT:I = 0x30000

.field public static final SHARE_IMAGE:I = 0x1

.field public static final SHARE_MULTIPLE:I = 0x20000

.field public static final SHARE_MULTIPLE_BOTH:I = 0x20003

.field public static final SHARE_MULTIPLE_IMAGES:I = 0x20001

.field public static final SHARE_MULTIPLE_ITEM_SET_AS:I = 0x440000

.field public static final SHARE_MULTIPLE_ITEM_SHARE:I = 0x220000

.field public static final SHARE_MULTIPLE_VIDEOS:I = 0x20002

.field public static final SHARE_PRINT:I = 0x550000

.field public static final SHARE_SINGLE:I = 0x10000

.field public static final SHARE_SINGLE_BOTH:I = 0x10003

.field public static final SHARE_SINGLE_IMAGE:I = 0x10001

.field public static final SHARE_SINGLE_ITEM_SET_AS:I = 0x330000

.field public static final SHARE_SINGLE_ITEM_SHARE:I = 0x110000

.field public static final SHARE_SINGLE_VIDEO:I = 0x10002

.field public static final SHARE_VIDEO:I = 0x2


# instance fields
.field private mCombinedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnableDarkList:Z

.field private mExpandable:Z

.field private mExpanded:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mShowIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "bShowIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, combinedList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    .line 73
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    .line 75
    iput-boolean p3, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    .line 77
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    return-void
.end method


# virtual methods
.method public append(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public enableDarkList()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    .line 82
    return-void
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    .line 198
    return-void
.end method

.method public expandable()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    .line 188
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 97
    const/4 v0, -0x1

    .line 98
    .local v0, nCount:I
    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    if-eqz v1, :cond_0

    .line 100
    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 101
    const/4 v0, 0x5

    .line 104
    :cond_0
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 107
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 116
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 126
    iget-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    if-eqz v6, :cond_2

    .line 128
    iget-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    if-eqz v6, :cond_1

    .line 130
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030022

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .local v5, view:Landroid/view/View;
    move-object v3, v5

    .line 131
    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 132
    .local v3, item:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    .end local v3           #item:Lcom/htc/widget/HtcListItem;
    :goto_0
    const v6, 0x7f09002c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 149
    .local v4, text:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f090045

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 150
    .local v1, image:Lcom/htc/widget/HtcListItemColorIcon;
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 152
    .local v2, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    iget-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    if-eqz v6, :cond_4

    .line 154
    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    .local v0, iconDrawable:Landroid/graphics/drawable/Drawable;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .end local v0           #iconDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 169
    :goto_1
    return-object v5

    .line 135
    .end local v1           #image:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v2           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v4           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03001f

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .restart local v5       #view:Landroid/view/View;
    goto :goto_0

    .line 139
    .end local v5           #view:Landroid/view/View;
    :cond_2
    iget-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    if-eqz v6, :cond_3

    .line 141
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03001e

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .restart local v5       #view:Landroid/view/View;
    move-object v3, v5

    .line 142
    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 143
    .restart local v3       #item:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 146
    .end local v3           #item:Lcom/htc/widget/HtcListItem;
    .end local v5           #view:Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03001c

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .restart local v5       #view:Landroid/view/View;
    goto :goto_0

    .line 165
    .restart local v1       #image:Lcom/htc/widget/HtcListItemColorIcon;
    .restart local v2       #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .restart local v4       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_4
    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_1
.end method

.method public insert(ILcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
    .locals 1
    .parameter "nIndex"
    .parameter "item"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 178
    .local v0, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    return v0
.end method

.method public remove(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    .line 203
    return-void
.end method
