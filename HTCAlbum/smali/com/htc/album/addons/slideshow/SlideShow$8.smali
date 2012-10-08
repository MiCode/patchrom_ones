.class Lcom/htc/album/addons/slideshow/SlideShow$8;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideShow;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShow;

.field final synthetic val$chkbox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;Lcom/htc/widget/HtcCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$8;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideShow$8;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$8;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$8;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #getter for: Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$1100(Lcom/htc/album/addons/slideshow/SlideShow;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-result-object v0

    const-string v1, "slide_show_ask_music_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1803
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$8;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPlay()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$1200(Lcom/htc/album/addons/slideshow/SlideShow;)V

    .line 1804
    return-void
.end method
