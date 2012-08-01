.class Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;
.super Ljava/lang/Object;
.source "GridItemFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridItemFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;
    }
.end annotation


# instance fields
.field private animationSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStart:Z

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridItemFolder;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)V
    .locals 1
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->this$0:Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->animationSet:Ljava/util/List;

    .line 652
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder;Lcom/htc/sunny2/widget/gridview/GridItemFolder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)V

    return-void
.end method


# virtual methods
.method addUnit(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;)V
    .locals 1
    .parameter "unit"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 618
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 620
    .local v3, remove:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;>;"
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;

    .line 621
    .local v5, unit:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->mIsStart:Z

    if-ne v11, v6, :cond_0

    .line 622
    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->start()V

    .line 625
    :cond_0
    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->animate()V

    .line 627
    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v6

    if-ne v11, v6, :cond_1

    .line 628
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_1
    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentRotation()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 632
    .local v4, rotate:Lcom/htc/sunny2/view/Vector3F;
    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->sprite:Lcom/htc/sunny2/Sprite;

    iget v7, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v8, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v9, v4, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/sunny2/Sprite;->setRotate(FFF)V

    .line 634
    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v2

    .line 635
    .local v2, pos:Lcom/htc/sunny2/view/Vector3F;
    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->sprite:Lcom/htc/sunny2/Sprite;

    iget v7, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v8, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v9, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 637
    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentAlpha()I

    move-result v1

    .line 638
    .local v1, nAlpha:I
    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->sprite:Lcom/htc/sunny2/Sprite;

    int-to-double v7, v1

    const-wide v9, 0x406fe00000000000L

    div-double/2addr v7, v9

    double-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    goto :goto_0

    .line 641
    .end local v1           #nAlpha:I
    .end local v2           #pos:Lcom/htc/sunny2/view/Vector3F;
    .end local v4           #rotate:Lcom/htc/sunny2/view/Vector3F;
    .end local v5           #unit:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 642
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 645
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 646
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->this$0:Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    #getter for: Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;
    invoke-static {v6}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->access$300(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunny2/RenderThreadHandler;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 649
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->mIsStart:Z

    .line 650
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->this$0:Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    #getter for: Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->access$100(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunny2/RenderThreadHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->mIsStart:Z

    .line 610
    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->this$0:Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    #getter for: Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->access$200(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunny2/RenderThreadHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 614
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->animationSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 615
    return-void
.end method
