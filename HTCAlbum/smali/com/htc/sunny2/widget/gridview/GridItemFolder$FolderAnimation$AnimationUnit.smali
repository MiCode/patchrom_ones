.class Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;
.super Ljava/lang/Object;
.source "GridItemFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationUnit"
.end annotation


# instance fields
.field controller:Lcom/htc/sunny2/view/animation/SAnimationController;

.field sprite:Lcom/htc/sunny2/Sprite;

.field final synthetic this$1:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;Lcom/htc/sunny2/Sprite;Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 0
    .parameter
    .parameter "sprite"
    .parameter "controller"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->this$1:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->sprite:Lcom/htc/sunny2/Sprite;

    .line 661
    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    .line 662
    return-void
.end method
