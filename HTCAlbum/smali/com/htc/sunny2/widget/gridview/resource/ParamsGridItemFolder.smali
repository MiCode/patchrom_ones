.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItemFolder.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GridItemFolderParams"


# instance fields
.field public mDateViewH:I

.field public mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

.field public mOverlapImages:I

.field public mResIdDateViewId:I

.field public mResIdSelector:I

.field public mResIdTextLayout:I

.field public mResIdTextViewId:I

.field public mSupportImageOverlay:Z

.field public mTextViewH:I

.field public mThumbH:I

.field public mThumbW:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 16
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    .line 17
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    .line 18
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    .line 23
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    .line 30
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    .line 47
    iput-boolean p2, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    .line 49
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    if-eqz v0, :cond_1

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    .line 52
    const v0, 0x7f02000b

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 53
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolderOverlapImages;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolderOverlapImages;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    .line 60
    :goto_0
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 61
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Folder_Select(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->imageDimension()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    .line 67
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->imageDimension()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    .line 69
    const v0, 0x7f03001a

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    .line 70
    const v0, 0x7f090040

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    .line 71
    const v0, 0x7f090041

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    .line 73
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->textHeightFirst()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    .line 74
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->textHeightSecond()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    .line 75
    return-void

    .line 57
    :cond_1
    const v0, 0x7f02000a

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 58
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 2
    .parameter "param"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 16
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    .line 17
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    .line 18
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    .line 23
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    .line 30
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    .line 78
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 79
    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    .locals 1
    .parameter "param"

    .prologue
    .line 39
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    return-object v0
.end method

.method public static spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    .locals 1
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    .line 35
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 87
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    .line 88
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    .line 89
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    .line 91
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    .line 92
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    .line 93
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    .line 94
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    .line 95
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    .line 97
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    .line 98
    iget-boolean v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    .line 99
    iget-object v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    goto :goto_0
.end method

.method public layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    return-object v0
.end method
