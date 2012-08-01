.class public Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;
.super Lcom/htc/sunny2/SceneNode;
.source "SSurfaceView.java"

# interfaces
.implements Lcom/htc/sunny2/view/SViewParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SViewRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;,
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;
    }
.end annotation


# static fields
.field private static final COMMON_PRIVATE_CORNER_RES_ID:Ljava/lang/String; = "com.android.internal.R.drawable.zzz_common_panel_container_mask"


# instance fields
.field private mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

.field private mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

.field private mBackgroundChanged:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSprite:Lcom/htc/sunny2/Sprite;

.field private mBackgroundTexture:Lcom/htc/sunny2/Texture;

.field private mContextMenuForChild:Lcom/htc/sunny2/view/SView;

.field private mHight:I

.field private mOverlapRoundCornerBitmap:Landroid/graphics/Bitmap;

.field private mOverlapRoundCornerChanged:Z

.field private mOverlapRoundCornerRect:Landroid/graphics/Rect;

.field private mOverlapRoundCornerResource:I

.field private mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

.field private mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

.field private mView:Landroid/view/View;

.field private mWidth:I

.field private mWorkaroundFocusPresent:Z

.field private final sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;I)V
    .locals 4
    .parameter
    .parameter "nodeId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 522
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    .line 489
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    .line 492
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    .line 507
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    .line 519
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    .line 520
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    .line 523
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-eqz v0, :cond_0

    .line 524
    invoke-super {p0}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 527
    :cond_0
    iput p2, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 529
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 530
    iput v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 532
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 533
    iput v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 534
    iput-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerBitmap:Landroid/graphics/Bitmap;

    .line 535
    iput-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 537
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setRenderOrderMode(I)V

    .line 538
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/Sprite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 486
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method private checkAndRenderOrderChanged()V
    .locals 8

    .prologue
    .line 555
    const/high16 v3, -0x8000

    .line 556
    .local v3, hOrder:I
    const/4 v4, 0x0

    .line 558
    .local v4, hView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v2

    .line 559
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 560
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 561
    .local v0, childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_0

    move-object v1, v0

    .line 562
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 563
    .local v1, childView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getRenderOrder()I

    move-result v6

    .line 564
    .local v6, order:I
    if-lt v6, v3, :cond_0

    .line 565
    move-object v4, v1

    .line 566
    move v3, v6

    .line 559
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    .end local v6           #order:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 571
    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    .line 572
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 573
    .restart local v0       #childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 574
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 575
    .restart local v1       #childView:Lcom/htc/sunny2/view/SView;
    if-ne v1, v4, :cond_3

    .line 576
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    .line 571
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 579
    .restart local v1       #childView:Lcom/htc/sunny2/view/SView;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    goto :goto_2

    .line 583
    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    :cond_4
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 695
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 696
    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eq v0, p0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reparent SView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 701
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 705
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    .line 706
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 763
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 675
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 682
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 684
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 685
    .local v0, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v0, :cond_0

    .line 687
    instance-of v2, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 689
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .end local v0           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    .line 636
    .local v1, count:I
    const/4 v2, 0x0

    .line 637
    .local v2, hitSprite:I
    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 638
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v6}, Lcom/htc/sunny2/view/SSurfaceView;->access$700(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/htc/sunny2/Sunny2;->Window_HitTest(III)I

    move-result v2

    .line 641
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_2

    .line 644
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 645
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 646
    .local v0, childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v6, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_1

    .line 647
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v0, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 644
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 653
    .end local v3           #i:I
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v5

    .line 654
    .local v5, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v5, :cond_4

    .line 668
    .end local v5           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_3
    :goto_1
    return-void

    .line 656
    .restart local v5       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_4
    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v4

    .line 657
    .local v4, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v4, :cond_3

    .line 659
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 660
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 661
    .restart local v0       #childNode:Lcom/htc/sunny2/SceneNode;
    if-eq v4, v0, :cond_5

    instance-of v6, v4, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_6

    .line 662
    :cond_5
    check-cast v4, Lcom/htc/sunny2/view/SView;

    .end local v4           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v4, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    goto :goto_1

    .line 659
    .restart local v4       #node:Lcom/htc/sunny2/SceneNode;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public enableOverlapRoundCorner(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "resourceId"
    .parameter "cornerRect"

    .prologue
    .line 1002
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 1008
    iput-object p2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 1011
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0
.end method

.method public getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method public getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;
    .locals 5
    .parameter "sprite"

    .prologue
    .line 607
    if-nez p1, :cond_1

    .line 608
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    .line 618
    :cond_0
    :goto_0
    return-object v0

    .line 611
    :cond_1
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    .line 612
    .local v0, pos:Lcom/htc/sunny2/view/Vector3F;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$700(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$800(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/sunny2/Sunny2;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 613
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 614
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 615
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method invalidateGlobalBackground(IIZ)V
    .locals 16
    .parameter "width"
    .parameter "height"
    .parameter "focusPresent"

    .prologue
    .line 814
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    move/from16 v0, p1

    if-eq v0, v11, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    move/from16 v0, p2

    if-eq v0, v11, :cond_0

    .line 815
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 816
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    .line 817
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 819
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v11, :cond_0

    .line 820
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 824
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    move/from16 v0, p1

    if-lt v0, v11, :cond_1

    const/4 v11, 0x1

    move/from16 v0, p2

    if-ge v0, v11, :cond_2

    .line 919
    :cond_1
    :goto_0
    return-void

    .line 828
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v11, v11, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    if-nez v11, :cond_3

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    if-ne v11, v12, :cond_4

    .line 830
    :cond_3
    const/16 p3, 0x1

    .line 835
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_7

    .line 836
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v11, :cond_5

    .line 837
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v11}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 838
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v11}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 839
    if-nez p3, :cond_6

    .line 840
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    .line 918
    :cond_5
    :goto_1
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    goto :goto_0

    .line 843
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto :goto_1

    .line 848
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-nez v11, :cond_8

    .line 849
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 850
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/16 v12, -0x64

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 853
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 855
    const/4 v10, 0x0

    .line 856
    .local v10, sBmpBkg:Lcom/htc/sunny2/SBitmap;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v11, v11, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v11, :cond_d

    .line 857
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    .line 858
    .local v9, initDrawable:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    invoke-virtual {v9}, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 859
    .local v2, bmp:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v10

    .line 860
    iget v11, v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcWidth:I

    int-to-float v4, v11

    .line 861
    .local v4, bmpWidth:F
    iget v11, v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcHeight:I

    int-to-float v3, v11

    .line 863
    .local v3, bmpHeight:F
    const/4 v6, 0x0

    .line 864
    .local v6, fitScreenW:F
    const/4 v5, 0x0

    .line 866
    .local v5, fitScreenH:F
    move/from16 v0, p1

    int-to-float v11, v0

    cmpl-float v11, v4, v11

    if-gez v11, :cond_9

    move/from16 v0, p2

    int-to-float v11, v0

    cmpl-float v11, v3, v11

    if-ltz v11, :cond_c

    .line 868
    :cond_9
    div-float v8, v3, v4

    .line 869
    .local v8, imageAspect:F
    move/from16 v0, p2

    int-to-float v11, v0

    move/from16 v0, p1

    int-to-float v12, v0

    div-float v7, v11, v12

    .line 871
    .local v7, frameAspect:F
    cmpl-float v11, v8, v7

    if-ltz v11, :cond_b

    .line 873
    move/from16 v0, p2

    int-to-float v5, v0

    .line 874
    move/from16 v0, p2

    int-to-float v11, v0

    div-float v6, v11, v8

    .line 889
    .end local v7           #frameAspect:F
    .end local v8           #imageAspect:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v6, v5, v12}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 896
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #bmpHeight:F
    .end local v4           #bmpWidth:F
    .end local v5           #fitScreenH:F
    .end local v6           #fitScreenW:F
    .end local v9           #initDrawable:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-nez v11, :cond_e

    .line 897
    invoke-static {v10}, Lcom/htc/sunny2/Texture;->createTexture(Lcom/htc/sunny2/SBitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 898
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 904
    :goto_4
    if-eqz v10, :cond_a

    .line 905
    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 908
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v11}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 909
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v11}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 910
    if-nez p3, :cond_f

    .line 911
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    goto/16 :goto_1

    .line 878
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #bmpHeight:F
    .restart local v4       #bmpWidth:F
    .restart local v5       #fitScreenH:F
    .restart local v6       #fitScreenW:F
    .restart local v7       #frameAspect:F
    .restart local v8       #imageAspect:F
    .restart local v9       #initDrawable:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    :cond_b
    move/from16 v0, p1

    int-to-float v6, v0

    .line 879
    move/from16 v0, p1

    int-to-float v11, v0

    mul-float v5, v11, v8

    goto :goto_2

    .line 885
    .end local v7           #frameAspect:F
    .end local v8           #imageAspect:F
    :cond_c
    move v6, v4

    .line 886
    move v5, v3

    goto :goto_2

    .line 892
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #bmpHeight:F
    .end local v4           #bmpWidth:F
    .end local v5           #fitScreenH:F
    .end local v6           #fitScreenW:F
    .end local v9           #initDrawable:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v11, v0, v1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v10

    .line 893
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    const/high16 v14, 0x3f80

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    goto :goto_3

    .line 901
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v11, v10}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    goto :goto_4

    .line 914
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto/16 :goto_1
.end method

.method invalidateOverlapRoundCorner(II)V
    .locals 18
    .parameter "width"
    .parameter "height"

    .prologue
    .line 922
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    move/from16 v0, p1

    if-eq v0, v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    move/from16 v0, p2

    if-eq v0, v13, :cond_0

    .line 923
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 924
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    .line 925
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 927
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_0

    .line 928
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 932
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 999
    :cond_1
    :goto_0
    return-void

    .line 936
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-nez v13, :cond_4

    .line 937
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_3

    .line 940
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 998
    :cond_3
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    goto :goto_0

    .line 944
    :cond_4
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 945
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 947
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 948
    .local v5, extraPadding:Landroid/graphics/Rect;
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 949
    .local v8, pLeft:I
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 950
    .local v9, pRiget:I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 951
    .local v10, pTop:I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 953
    .local v7, pBottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v13}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 954
    .local v11, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 955
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    sub-int v14, p2, v7

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v13, v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 956
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 957
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v13, v14, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 958
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 959
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 960
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 961
    sub-int v13, p1, v9

    const/4 v14, 0x0

    sub-int v15, p2, v7

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 962
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 964
    const-string v13, "com.android.internal.R.drawable.zzz_common_panel_container_mask"

    invoke-static {v13}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v12

    .line 965
    .local v12, resId:I
    if-nez v12, :cond_6

    .line 966
    const-string v13, "SSurfaceView"

    const-string v14, "[invalidateOverlapRoundCorner] get common resource fail: com.android.internal.R.drawable.zzz_common_panel_container_mask"

    new-instance v15, Ljava/lang/Exception;

    const-string v16, ""

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    if-nez v13, :cond_7

    .line 975
    invoke-static {v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    .line 981
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 983
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-nez v13, :cond_5

    .line 984
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    .line 985
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 988
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 995
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto/16 :goto_1

    .line 969
    :cond_6
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 970
    .local v6, maskDrawable:Landroid/graphics/drawable/Drawable;
    sub-int v13, p1, v9

    sub-int v14, p2, v7

    invoke-virtual {v6, v8, v10, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 971
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 978
    .end local v6           #maskDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v13, v2}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public isBindedSurface()Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(I)Z
    .locals 2
    .parameter "feedbackConstant"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 2
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    const/4 v0, 0x1

    return v0
.end method

.method public playSoundEffect(I)V
    .locals 2
    .parameter "soundConstant"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 726
    return-void
.end method

.method public refreshRenderOrder(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 587
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    .line 589
    const/4 v1, 0x0

    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    move-object v2, p1

    .line 590
    check-cast v2, Ljava/lang/String;

    .line 591
    .local v2, szIdentity:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 592
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 596
    :goto_0
    if-eqz v1, :cond_1

    .line 598
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 599
    .local v0, node:Lcom/htc/sunny2/SceneNode;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getEnvironmentRenderOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 603
    .end local v0           #node:Lcom/htc/sunny2/SceneNode;
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    .end local v2           #szIdentity:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 604
    return-void

    .line 594
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    .restart local v2       #szIdentity:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 543
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 545
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 550
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 552
    :cond_1
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 710
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 711
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 713
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 714
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$900(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->requestLayout()V

    .line 623
    return-void
.end method

.method public setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 787
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 811
    :goto_0
    return-void

    .line 791
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v0, :cond_2

    .line 792
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    .line 793
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 794
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 795
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 803
    :cond_1
    :goto_1
    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 805
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 806
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 810
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0

    .line 800
    :cond_2
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    goto :goto_1
.end method

.method public setGlobalBackgroundResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 772
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 783
    :goto_0
    return-void

    .line 776
    :cond_0
    const/4 v0, 0x0

    .line 777
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 778
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 780
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    goto :goto_0
.end method

.method public showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z
    .locals 2
    .parameter "originalView"

    .prologue
    .line 748
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    .line 751
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 759
    const/4 v0, 0x1

    return v0
.end method
