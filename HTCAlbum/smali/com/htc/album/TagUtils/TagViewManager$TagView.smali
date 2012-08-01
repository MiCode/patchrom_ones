.class public Lcom/htc/album/TagUtils/TagViewManager$TagView;
.super Landroid/widget/RelativeLayout;
.source "TagViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TagUtils/TagViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagView"
.end annotation


# instance fields
.field private mContactID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mTagH:F

.field private mTagID:Ljava/lang/String;

.field private mTagName:Ljava/lang/String;

.field private mTagView:Lcom/htc/widget/HtcRimButton;

.field private mTagW:F

.field private mTagX:F

.field private mTagY:F

.field private mTextWidth:I

.field final synthetic this$0:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 698
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    .line 699
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 682
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    .line 683
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    .line 685
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    .line 686
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    .line 687
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagW:F

    .line 688
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagH:F

    .line 689
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    .line 691
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    .line 693
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextWidth:I

    .line 694
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    .line 695
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    .line 700
    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    .line 701
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    .line 702
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    .line 703
    return-void
.end method


# virtual methods
.method public getTagContactID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagH()F
    .locals 1

    .prologue
    .line 842
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagH:F

    return v0
.end method

.method public getTagID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagPressView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 797
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setLongClickable(Z)V

    .line 798
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setClickable(Z)V

    .line 799
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setPressed(Z)V

    .line 801
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    return-object v0
.end method

.method public getTagRestView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 805
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setLongClickable(Z)V

    .line 806
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setClickable(Z)V

    .line 807
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setPressed(Z)V

    .line 809
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    return-object v0
.end method

.method public getTagW()F
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagW:F

    return v0
.end method

.method public getTagX()F
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    return v0
.end method

.method public getTagY()F
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;FF)Z
    .locals 9
    .parameter "strName"
    .parameter "strID"
    .parameter "tagx"
    .parameter "tagy"

    .prologue
    .line 729
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 784
    :goto_0
    return v5

    .line 731
    :cond_1
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    .line 732
    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    .line 733
    iput p3, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    .line 734
    iput p4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    .line 738
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextWidth:I

    .line 742
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    const v6, 0x2080004

    invoke-static {v5, v6}, Lcom/htc/album/TagUtils/TagViewManager;->measureResourceWidth(Landroid/content/Context;I)I

    move-result v1

    .line 743
    .local v1, nImgOutWidth:I
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    const v6, 0x2080004

    invoke-static {v5, v6}, Lcom/htc/album/TagUtils/TagViewManager;->measureResourceHeight(Landroid/content/Context;I)I

    move-result v0

    .line 745
    .local v0, nImgOutHeight:I
    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextWidth:I

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    #getter for: Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I
    invoke-static {v6}, Lcom/htc/album/TagUtils/TagViewManager;->access$000(Lcom/htc/album/TagUtils/TagViewManager;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    .line 746
    iput v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    .line 749
    new-instance v5, Lcom/htc/widget/HtcRimButton;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    .line 751
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcRimButton;->setSingleLine()V

    .line 752
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcRimButton;->setClickable(Z)V

    .line 754
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcRimButton;->setLongClickable(Z)V

    .line 755
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcRimButton;->setPressed(Z)V

    .line 756
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcRimButton;->setGravity(I)V

    .line 757
    new-instance v4, Lcom/htc/album/TagUtils/TagInfo;

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    iget v7, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/htc/album/TagUtils/TagInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    .line 758
    .local v4, tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {v4, p0}, Lcom/htc/album/TagUtils/TagInfo;->setHost(Landroid/view/View;)V

    .line 759
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcRimButton;->setTag(Ljava/lang/Object;)V

    .line 761
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 762
    .local v2, paramImage:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 763
    const/4 v5, 0x0

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 765
    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 767
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcRimButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->addView(Landroid/view/View;)V

    .line 771
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 772
    .local v3, paramLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 773
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 774
    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 775
    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 776
    invoke-virtual {p0, v3}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][TagViewManager][init]: measure Resource H: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", W: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][TagViewManager][init]: ImageView W:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", H: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][TagViewManager][init]: RelativeLayout W:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", H: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public isSameContact(Ljava/lang/String;)Z
    .locals 3
    .parameter "szContactID"

    .prologue
    .line 716
    const/4 v0, 0x1

    .line 718
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    :cond_0
    const/4 v0, 0x0

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    const/4 v0, 0x0

    .line 724
    :cond_2
    return v0
.end method

.method public setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "szName"
    .parameter "szContactID"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    .line 712
    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 794
    return-void
.end method

.method public setPos(FF)V
    .locals 2
    .parameter "fx"
    .parameter "fy"

    .prologue
    const/4 v1, -0x2

    .line 826
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 827
    .local v0, paramLayout:Landroid/widget/RelativeLayout$LayoutParams;
    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 828
    float-to-int v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 829
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 830
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 831
    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    return-void
.end method

.method public setTagBackgroundPress()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    if-nez v0, :cond_0

    .line 816
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagPressView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTagBackgroundRest()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    if-nez v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setWH(FF)V
    .locals 0
    .parameter "fTagW"
    .parameter "fTagH"

    .prologue
    .line 706
    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagW:F

    .line 707
    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagH:F

    .line 708
    return-void
.end method
