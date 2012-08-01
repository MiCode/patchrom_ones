.class public Lcom/htc/album/addons/UploadEditorViewManager;
.super Landroid/widget/RelativeLayout;
.source "UploadEditorViewManager.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenControlHook;


# static fields
.field private static final DEBUG:Ljava/lang/String; = "KA>>> [UploadEditorViewManager]: "

.field private static final LOG_TAG:Ljava/lang/String; = "UploadEditorViewManager"

.field public static final SOURCE_FACEBOOK:I = 0x1

.field public static final SOURCE_FLICKR:I = 0x2

.field public static final SOURCE_RENREN:I = 0x5

.field public static final SOURCE_SINA:I = 0x3

.field public static final SOURCE_SINAWEIBO:I = 0x4

.field public static final SOURCE_UKNOWN:I


# instance fields
.field private isInit:Z

.field private mBundleArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

.field private mEditorIndicator:Landroid/widget/ImageView;

.field private mEditorPhotoIndex:Landroid/widget/TextView;

.field private mEditorReferLayout:Landroid/widget/RelativeLayout;

.field private mEditorReferMain:Landroid/widget/RelativeLayout;

.field private mEditorTagButton:Lcom/htc/widget/HtcRimButton;

.field private mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMainView:Landroid/view/ViewGroup;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 58
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 59
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 60
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorIndicator:Landroid/widget/ImageView;

    .line 61
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 62
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    .line 64
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    .line 65
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 66
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 67
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    .line 68
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 69
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 71
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 73
    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 58
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 59
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 60
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorIndicator:Landroid/widget/ImageView;

    .line 61
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 62
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    .line 64
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    .line 65
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 66
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 67
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    .line 68
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 69
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 71
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 73
    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 58
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 59
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 60
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorIndicator:Landroid/widget/ImageView;

    .line 61
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 62
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    .line 64
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    .line 65
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 66
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 67
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    .line 68
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 69
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 71
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 73
    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/UploadEditorViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->setDescriptionHint()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/UploadEditorViewManager;)Lcom/htc/widget/HtcAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/UploadEditorViewManager;)Lcom/htc/widget/HtcAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    return-object v0
.end method

.method private setDescriptionHint()V
    .locals 3

    .prologue
    const v2, 0x7f0a005a

    .line 586
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-nez v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setHint(I)V

    goto :goto_0

    .line 592
    :cond_2
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v0, v1, :cond_3

    .line 594
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setHint(I)V

    goto :goto_0

    .line 596
    :cond_3
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v0, v1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setHint(I)V

    goto :goto_0
.end method

.method private setPhotoDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "szText"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setVisibility(I)V

    .line 562
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->setDescriptionHint()V

    .line 567
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    new-instance v1, Lcom/htc/album/addons/UploadEditorViewManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/UploadEditorViewManager$4;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 582
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewGroup"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 382
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v0, Lcom/htc/album/addons/UploadEditorViewManager$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/UploadEditorViewManager$3;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 398
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public forceInvalidateTagBtn()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimButton;->requestLayout()V

    .line 558
    :cond_0
    return-void
.end method

.method public getBundleArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhotoIndex()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    const-string v0, ""

    .line 193
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    return-object v0
.end method

.method public getTags(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "nCurIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 204
    .local v1, bundleCurrent:Landroid/os/Bundle;
    const-string v2, "tags"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 205
    .local v0, arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    return-object v0
.end method

.method public getTextDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    const-string v0, ""

    .line 186
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_0
    return-object v0
.end method

.method public getTextTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    const-string v0, ""

    .line 179
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_0
    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setVisibility(I)V

    .line 415
    return-void
.end method

.method public initialize(Landroid/app/Activity;I)V
    .locals 9
    .parameter "activity"
    .parameter "nSource"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x11

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 107
    const-class v1, Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setId(I)V

    .line 109
    iput p2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 110
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 113
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03003f

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 115
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-ne v4, v1, :cond_2

    .line 117
    instance-of v1, p1, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    if-eqz v1, :cond_0

    .line 119
    check-cast p1, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    .end local p1
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 120
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const v2, 0x7f0a0059

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    .line 128
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    .line 129
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    .line 131
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    .line 132
    sget-boolean v1, Lcom/htc/sunny2/common/Constants;->FLAG_SENSE40a:Z

    if-ne v4, v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x203001e

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 135
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    .line 136
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAutoCompleteTextView;->setGravity(I)V

    .line 137
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    new-instance v2, Lcom/htc/album/addons/UploadEditorViewManager$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/UploadEditorViewManager$1;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAutoCompleteTextView;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 148
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    .line 149
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 150
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAutoCompleteTextView;->setGravity(I)V

    .line 151
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    new-instance v2, Lcom/htc/album/addons/UploadEditorViewManager$2;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/UploadEditorViewManager$2;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 164
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAutoCompleteTextView;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    .line 167
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcRimButton;->setSingleLine()V

    .line 168
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const v2, 0x7f0a005c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    .line 169
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcRimButton;->setFocusable(Z)V

    .line 170
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcRimButton;->setFocusableInTouchMode(Z)V

    .line 171
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {p0, v8}, Lcom/htc/album/addons/UploadEditorViewManager;->relayout(Landroid/content/res/Configuration;)V

    .line 175
    return-void

    .line 125
    .restart local p1
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090072

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorIndicator:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 93
    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 94
    return-void
.end method

.method public onEditTextFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "onFocus"

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 104
    :cond_0
    return-void
.end method

.method public prepareEditorView(IZ)V
    .locals 8
    .parameter "nCurIndex"
    .parameter "bIsVideo"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 297
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 336
    .local v1, bundleCurrent:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 338
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    const-string v4, "index"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v3, :cond_3

    .line 345
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorTitle()Z

    move-result v3

    if-nez v3, :cond_7

    .line 346
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAutoCompleteTextView;->setVisibility(I)V

    .line 357
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v3, :cond_5

    .line 359
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorDescription()Z

    move-result v3

    if-ne v5, v3, :cond_5

    .line 361
    :cond_4
    const-string v3, "description"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, strDescription:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    .line 367
    .end local v2           #strDescription:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v3, :cond_0

    .line 369
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorTagButton()Z

    move-result v3

    if-ne v5, v3, :cond_0

    .line 371
    :cond_6
    const-string v3, "tags"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 372
    .local v0, arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {p0, v0, p2}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 347
    .end local v0           #arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_7
    iget v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v5, v3, :cond_8

    if-nez p2, :cond_8

    .line 348
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAutoCompleteTextView;->setVisibility(I)V

    goto :goto_1

    .line 351
    :cond_8
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAutoCompleteTextView;->setVisibility(I)V

    .line 352
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public prepareEditorView(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 3
    .parameter "aPhoto"

    .prologue
    const/4 v2, 0x1

    .line 266
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-eq v0, v1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 272
    :cond_0
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setVisibility(I)V

    .line 284
    :goto_1
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v2, v0, :cond_2

    .line 285
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    .line 292
    :goto_2
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v0

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 287
    :cond_2
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public relayout(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 420
    .local v2, res:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 421
    .local v0, isPort:Z
    if-nez p1, :cond_0

    .line 423
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 426
    :cond_0
    const/4 v3, 0x2

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    .line 428
    const/4 v0, 0x0

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 433
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 434
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_REFERMAIN_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 435
    if-ne v6, v0, :cond_8

    .line 437
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 438
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 447
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_3

    .line 449
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 450
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_REFERMAIN_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 453
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 455
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 456
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_INDEX_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 457
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 458
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_INDEX_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 459
    if-ne v6, v0, :cond_9

    .line 461
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_INDEX_BOTTOM_PORT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 469
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v3, :cond_5

    .line 471
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 472
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 473
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 474
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_TITLE_BOTTOM_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 477
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v3, :cond_6

    .line 479
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 480
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 481
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_DESCR_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 482
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_DESCR_MAX_HEIGHT_DIMEN:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMaxHeight(I)V

    .line 483
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMinHeight(I)V

    .line 486
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v3, :cond_7

    .line 488
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcRimButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 489
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 490
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 491
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_TAG_BUTTON_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 492
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setMinHeight(I)V

    .line 494
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    return-void

    .line 442
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 443
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 465
    :cond_9
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->UPLOAD_EDITOR_INDEX_BOTTOM_LAND_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public savePreviousEditorView(I)V
    .locals 3
    .parameter "nCurIndex"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-nez v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 224
    .local v0, bundleCurrent:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 226
    const-string v1, "title"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const-string v1, "description"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBundleData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, bundleData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 200
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 0
    .parameter "dataPlugin"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 605
    return-void
.end method

.method public setTagButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_0
    return-void
.end method

.method public setTagButtonText(Ljava/util/ArrayList;Z)V
    .locals 5
    .parameter
    .parameter "bIsVideo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    if-eqz p2, :cond_0

    .line 527
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 553
    :goto_0
    return-void

    .line 530
    :cond_0
    const-string v2, ""

    .line 531
    .local v2, szButtonText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, aFace:Lcom/htc/album/TagUtils/TagInfo;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 536
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aFace:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    .line 537
    .restart local v0       #aFace:Lcom/htc/album/TagUtils/TagInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_3

    .line 544
    .end local v0           #aFace:Lcom/htc/album/TagUtils/TagInfo;
    .end local v1           #nIndex:I
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 545
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    .line 549
    :goto_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 551
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->forceInvalidateTagBtn()V

    goto :goto_0

    .line 541
    .restart local v0       #aFace:Lcom/htc/album/TagUtils/TagInfo;
    .restart local v1       #nIndex:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 547
    .end local v0           #aFace:Lcom/htc/album/TagUtils/TagInfo;
    .end local v1           #nIndex:I
    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setTagButtonText(ZLjava/util/ArrayList;)V
    .locals 5
    .parameter "bIsVideo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p2, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    if-eqz p1, :cond_0

    .line 498
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 523
    :goto_0
    return-void

    .line 501
    :cond_0
    const-string v2, ""

    .line 502
    .local v2, szButtonText:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 507
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 508
    .restart local v0       #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_3

    .line 515
    .end local v0           #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v1           #nIndex:I
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 516
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    .line 520
    :goto_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    goto :goto_0

    .line 512
    .restart local v0       #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .restart local v1       #nIndex:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 518
    .end local v0           #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v1           #nIndex:I
    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public show()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setVisibility(I)V

    .line 411
    return-void
.end method

.method public updateTags(IZLandroid/content/Intent;)V
    .locals 6
    .parameter "nCurIndex"
    .parameter "isVideo"
    .parameter "intent"

    .prologue
    .line 237
    if-nez p3, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v1, 0x0

    .line 240
    .local v1, bundleTagView:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 242
    const/4 v2, 0x0

    .line 244
    .local v2, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    if-eqz v1, :cond_2

    .line 245
    const-string v3, "tags"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 247
    :cond_2
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, bundleCur:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bundleCur:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 252
    .restart local v0       #bundleCur:Landroid/os/Bundle;
    const-string v3, "tags"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 255
    invoke-virtual {p0, v2, p2}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(Ljava/util/ArrayList;Z)V

    .line 257
    const-string v3, "UploadEditorViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [UploadEditorViewManager]: TAG_RESULT_OK, Get Tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
