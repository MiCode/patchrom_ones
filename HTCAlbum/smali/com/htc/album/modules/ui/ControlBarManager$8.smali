.class Lcom/htc/album/modules/ui/ControlBarManager$8;
.super Ljava/lang/Object;
.source "ControlBarManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/modules/ui/ControlBarManager;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager$8;->this$0:Lcom/htc/album/modules/ui/ControlBarManager;

    iput-object p2, p0, Lcom/htc/album/modules/ui/ControlBarManager$8;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 891
    const-string v0, "ControlBarManager"

    const-string v1, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager$8;->val$v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 893
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 898
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 887
    return-void
.end method
