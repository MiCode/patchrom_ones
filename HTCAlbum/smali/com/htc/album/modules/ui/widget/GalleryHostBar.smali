.class public Lcom/htc/album/modules/ui/widget/GalleryHostBar;
.super Lcom/htc/album/modules/ui/widget/BaseControlBar;
.source "GalleryHostBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HOST:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/htc/album/modules/ui/widget/BaseControlBar",
        "<THOST;",
        "Lcom/htc/album/modules/ui/widget/HeaderButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 19
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/content/Context;I)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V
    .locals 1
    .parameter "hostView"

    .prologue
    .line 14
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->getSourceSwitchView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/view/ViewGroup;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 15
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 16
    return-void
.end method


# virtual methods
.method public getHost()Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    .locals 1

    .prologue
    .line 36
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    return-object v0
.end method

.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 26
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 8
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;
    .locals 1
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 32
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    const/4 v0, 0x0

    return-object v0
.end method
