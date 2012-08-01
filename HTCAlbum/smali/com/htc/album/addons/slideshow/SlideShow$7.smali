.class Lcom/htc/album/addons/slideshow/SlideShow$7;
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
    .line 1711
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$7;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideShow$7;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1714
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1715
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1716
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1717
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow$7;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    const v2, 0xea60

    invoke-virtual {v1, v0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1719
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow$7;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1720
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow$7;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #getter for: Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideShow;->access$1100(Lcom/htc/album/addons/slideshow/SlideShow;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-result-object v1

    const-string v2, "slide_show_ask_music_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1721
    :cond_0
    return-void
.end method
