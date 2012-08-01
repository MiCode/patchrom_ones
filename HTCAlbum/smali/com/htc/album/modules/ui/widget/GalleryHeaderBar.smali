.class public abstract Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
.super Lcom/htc/album/modules/ui/widget/BaseControlBar;
.source "GalleryHeaderBar.java"


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


# static fields
.field protected static final HEADER_LAYOUT:I = 0x7f030018

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STYLE_DEFAULT:I = 0x1

.field public static final STYLE_SEARCH:I = 0x3

.field public static final STYLE_SIMPLE:I = 0x2

.field public static final STYLE_TABLET:I = 0x4


# instance fields
.field protected mHeaderControlListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 87
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->mHeaderControlListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    .line 89
    return-void
.end method

.method public static getHeaderPaddingOffset(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "style"

    .prologue
    .line 78
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PADDING_TOP_ITEMS_FOLDER:I

    return v0
.end method

.method public static getHeight(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "style"

    .prologue
    .line 73
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->ACTION_BAR_HEIGHT_DIMEN:I

    return v0
.end method

.method public static final makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 2
    .parameter "context"
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 66
    new-instance v0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;

    const v1, 0x7f030018

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    new-instance v0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;

    const v1, 0x7f030019

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 57
    :pswitch_1
    new-instance v0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;

    const v1, 0x7f030036

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 61
    :pswitch_2
    new-instance v0, Lcom/htc/album/modules/ui/widget/TabletHeaderBar;

    const v1, 0x7f030024

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/TabletHeaderBar;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    move-result-object v0

    return-object v0
.end method

.method public addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;
    .locals 7
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    const/4 v2, 0x0

    .line 119
    sparse-switch p3, :sswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/HeaderButton;

    :goto_0
    return-object v0

    .line 123
    :sswitch_0
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0111

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/HeaderButton;

    goto :goto_0

    .line 127
    :sswitch_1
    const/16 v3, 0x10

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Output_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0112

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v6

    check-cast v6, Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 128
    .local v6, output:Lcom/htc/album/modules/ui/widget/HeaderButton;
    invoke-static {p1}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v6, v2}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setEnabled(Z)V

    move-object v0, v6

    .line 129
    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public enableDivider(ZZ)V
    .locals 0
    .parameter "enableLeft"
    .parameter "enableRight"

    .prologue
    .line 175
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public getBackButton()Lcom/htc/album/modules/ui/widget/HeaderButton;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
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
    .line 21
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;

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
    .line 109
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackButtonEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 156
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public setBackButtonImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 171
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public setBackButtonImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 164
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public setBackButtonImageMode(I)V
    .locals 0
    .parameter "imageMode"

    .prologue
    .line 168
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public setBackButtonImageResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 160
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public setHeaderControlListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 186
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->mHeaderControlListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    .line 189
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 152
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 148
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 144
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 140
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method

.method public showProgressBar(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 179
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<THOST;>;"
    return-void
.end method
