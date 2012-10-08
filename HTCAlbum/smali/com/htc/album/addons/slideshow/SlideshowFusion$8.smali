.class Lcom/htc/album/addons/slideshow/SlideshowFusion$8;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

.field final synthetic val$chkbox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;Lcom/htc/widget/HtcCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$8;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v4, 0xea60

    .line 1178
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1179
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1181
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    const-string v2, "com.htc.music"

    const-string v3, "com.htc.music.MusicPicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    const v3, 0xea60

    invoke-virtual {v2, v1, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :goto_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$8;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1194
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    invoke-static {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$1600(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-result-object v2

    const-string v3, "slide_show_ask_music_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 1195
    :cond_0
    return-void

    .line 1185
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1187
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1188
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1190
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v2, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
