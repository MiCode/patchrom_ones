.class Lcom/htc/album/addons/slideshow/Slideshow3D$8;
.super Ljava/lang/Object;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/Slideshow3D;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

.field final synthetic val$chkbox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/widget/HtcCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$8;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    iput-object p2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$8;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$8;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$8;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #getter for: Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$1200(Lcom/htc/album/addons/slideshow/Slideshow3D;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-result-object v0

    const-string v1, "slide_show_ask_music_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$8;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPlay()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$1300(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    .line 1702
    return-void
.end method
