.class Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

.field final synthetic val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;Lcom/htc/widget/HtcAlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    iput-object p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    iput-object p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$editText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v4, 0x0

    .line 891
    if-eqz p2, :cond_2

    .line 893
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 894
    .local v1, positiveBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 900
    .local v0, negativeBtn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 904
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 906
    :cond_0
    if-eqz v0, :cond_1

    .line 911
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 918
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 919
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 935
    .end local v0           #negativeBtn:Landroid/widget/Button;
    .end local v1           #positiveBtn:Landroid/widget/Button;
    :cond_2
    return-void
.end method
