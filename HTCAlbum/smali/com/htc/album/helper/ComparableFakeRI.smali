.class Lcom/htc/album/helper/ComparableFakeRI;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mMenuID:I

.field private mSupportType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 5352
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5342
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/ComparableFakeRI;->mMenuID:I

    .line 5352
    iput-object p1, p0, Lcom/htc/album/helper/ComparableFakeRI;->mLabel:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "label"
    .parameter "menuID"

    .prologue
    .line 5353
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5342
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/ComparableFakeRI;->mMenuID:I

    .line 5353
    iput-object p1, p0, Lcom/htc/album/helper/ComparableFakeRI;->mLabel:Ljava/lang/String;

    iput p2, p0, Lcom/htc/album/helper/ComparableFakeRI;->mMenuID:I

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .locals 1
    .parameter "label"

    .prologue
    .line 5347
    new-instance v0, Lcom/htc/album/helper/ComparableFakeRI;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/ComparableFakeRI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .locals 1
    .parameter "label"
    .parameter "menuID"

    .prologue
    .line 5350
    new-instance v0, Lcom/htc/album/helper/ComparableFakeRI;

    invoke-direct {v0, p0, p1}, Lcom/htc/album/helper/ComparableFakeRI;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 5368
    iget-object v0, p0, Lcom/htc/album/helper/ComparableFakeRI;->mLabel:Ljava/lang/String;

    invoke-interface {p1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5339
    check-cast p1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/ComparableFakeRI;->compareTo(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)I

    move-result v0

    return v0
.end method

.method public createIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 5355
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableGroupItem()V
    .locals 0

    .prologue
    .line 5394
    return-void
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5361
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .locals 1
    .parameter "nSupportType"

    .prologue
    .line 5408
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5357
    iget-object v0, p0, Lcom/htc/album/helper/ComparableFakeRI;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuID()I
    .locals 1

    .prologue
    .line 5388
    iget v0, p0, Lcom/htc/album/helper/ComparableFakeRI;->mMenuID:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5359
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueriedActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5370
    iget-object v0, p0, Lcom/htc/album/helper/ComparableFakeRI;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 5363
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportType()I
    .locals 1

    .prologue
    .line 5373
    iget v0, p0, Lcom/htc/album/helper/ComparableFakeRI;->mSupportType:I

    return v0
.end method

.method public isFake()Z
    .locals 1

    .prologue
    .line 5365
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupItem()Z
    .locals 1

    .prologue
    .line 5398
    const/4 v0, 0x0

    return v0
.end method

.method public setGroupItem(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
    .locals 0
    .parameter "groupItem"

    .prologue
    .line 5404
    return-void
.end method

.method public setQueriedActionName(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 5383
    iput-object p1, p0, Lcom/htc/album/helper/ComparableFakeRI;->mAction:Ljava/lang/String;

    .line 5384
    return-void
.end method

.method public setSupportType(I)V
    .locals 0
    .parameter "supportType"

    .prologue
    .line 5377
    iput p1, p0, Lcom/htc/album/helper/ComparableFakeRI;->mSupportType:I

    .line 5378
    return-void
.end method
