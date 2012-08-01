.class public Lcom/htc/album/modules/ui/widget/TabletHeaderBar;
.super Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
.source "TabletHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
        "<",
        "Lcom/htc/widget/HtcListItemSeparator;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;-><init>(Landroid/content/Context;I)V

    .line 13
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 14
    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 18
    return-void
.end method
