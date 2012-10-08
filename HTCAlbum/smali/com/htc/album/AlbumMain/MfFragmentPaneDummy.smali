.class public Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;
.super Lcom/htc/app/mf/MfFragment;
.source "MfFragmentPaneDummy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/app/mf/MfFragment;-><init>()V

    return-void
.end method

.method private getPageLoadingLayout()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f030032

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;->getPageLoadingLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, mainView:Landroid/view/View;
    return-object v0
.end method
