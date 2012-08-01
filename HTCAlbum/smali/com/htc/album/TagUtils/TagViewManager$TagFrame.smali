.class public Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
.super Landroid/view/View;
.source "TagViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TagUtils/TagViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagFrame"
.end annotation


# instance fields
.field private mColor:I

.field private mContactID:Ljava/lang/String;

.field private mFaceID:Ljava/lang/String;

.field private mH:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mTagH:F

.field private mTagW:F

.field private mTagX:F

.field private mTagY:F

.field private mW:F

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;FFFFI)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "color"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 870
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    .line 871
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 851
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagX:F

    .line 852
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagY:F

    .line 853
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagW:F

    .line 854
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagH:F

    .line 856
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mColor:I

    .line 861
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPath:Landroid/graphics/Path;

    .line 862
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    .line 864
    iput-object v4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mFaceID:Ljava/lang/String;

    .line 865
    iput-object v4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    .line 872
    iput p3, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mX:F

    .line 873
    iput p4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mY:F

    .line 874
    iput p5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    .line 875
    iput p6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    .line 876
    iput p7, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mColor:I

    .line 878
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 879
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 880
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0           #param:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 887
    .restart local v0       #param:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 888
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 889
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 890
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 891
    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 894
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 895
    return-void
.end method


# virtual methods
.method public getTagContactID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagH()F
    .locals 1

    .prologue
    .line 977
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagH:F

    return v0
.end method

.method public getTagID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mFaceID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagW()F
    .locals 1

    .prologue
    .line 976
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagW:F

    return v0
.end method

.method public getTagX()F
    .locals 1

    .prologue
    .line 974
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagX:F

    return v0
.end method

.method public getTagY()F
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagY:F

    return v0
.end method

.method public isConnectedToContact()Z
    .locals 3

    .prologue
    .line 903
    const/4 v0, 0x1

    .line 905
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    :cond_0
    const/4 v0, 0x0

    .line 908
    :cond_1
    return v0
.end method

.method public isSameContact(Ljava/lang/String;)Z
    .locals 3
    .parameter "szContactID"

    .prologue
    .line 912
    const/4 v0, 0x1

    .line 914
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    :cond_0
    const/4 v0, 0x0

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 919
    const/4 v0, 0x0

    .line 921
    :cond_2
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 952
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 953
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 954
    .local v0, rectF:Landroid/graphics/RectF;
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 955
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 956
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 957
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 958
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 959
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 961
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 962
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 963
    return-void
.end method

.method public print()V
    .locals 3

    .prologue
    .line 982
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: percentCX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: percentCY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: percentWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagW:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: percentHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagH:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: faceid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mFaceID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: contactid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method public setConnectToContact(Ljava/lang/String;)V
    .locals 0
    .parameter "szContactID"

    .prologue
    .line 925
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    .line 926
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "szFaceID"
    .parameter "szContactID"

    .prologue
    .line 898
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mFaceID:Ljava/lang/String;

    .line 899
    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    .line 900
    return-void
.end method

.method public setWH(FF)V
    .locals 0
    .parameter "fTagW"
    .parameter "fTagH"

    .prologue
    .line 966
    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagW:F

    .line 967
    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagH:F

    .line 968
    return-void
.end method

.method public setXY(FF)V
    .locals 0
    .parameter "fTagX"
    .parameter "fTagY"

    .prologue
    .line 971
    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagX:F

    .line 972
    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagY:F

    .line 973
    return-void
.end method

.method public updateColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 930
    return-void
.end method

.method public updateRect(FFFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 933
    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mX:F

    .line 934
    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mY:F

    .line 935
    iput p3, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    .line 936
    iput p4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    .line 937
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 944
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 945
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 946
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 947
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 948
    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    return-void
.end method
