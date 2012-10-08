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

    .line 572
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    .line 539
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    .line 542
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    .line 557
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    .line 569
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    .line 570
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    .line 573
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-eqz v0, :cond_0

    .line 574
    invoke-super {p0}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 577
    :cond_0
    iput p2, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 579
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 580
    iput v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 582
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 583
    iput v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 584
    iput-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerBitmap:Landroid/graphics/Bitmap;

    .line 585
    iput-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 587
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setRenderOrderMode(I)V

    .line 588
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/Sprite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method private checkAndRenderOrderChanged()V
    .locals 8

    .prologue
    .line 605
    const/high16 v3, -0x8000

    .line 606
    .local v3, hOrder:I
    const/4 v4, 0x0

    .line 608
    .local v4, hView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v2

    .line 609
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 610
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 611
    .local v0, childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_0

    move-object v1, v0

    .line 612
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 613
    .local v1, childView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getRenderOrder()I

    move-result v6

    .line 614
    .local v6, order:I
    if-lt v6, v3, :cond_0

    .line 615
    move-object v4, v1

    .line 616
    move v3, v6

    .line 609
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    .end local v6           #order:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 621
    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    .line 622
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 623
    .restart local v0       #childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 624
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 625
    .restart local v1       #childView:Lcom/htc/sunny2/view/SView;
    if-ne v1, v4, :cond_3

    .line 626
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    .line 621
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 629
    .restart local v1       #childView:Lcom/htc/sunny2/view/SView;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    goto :goto_2

    .line 633
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
    .line 745
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 746
    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eq v0, p0, :cond_0

    .line 747
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

    .line 749
    :cond_0
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 751
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 753
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 755
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    .line 756
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 813
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 725
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 732
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 734
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 735
    .local v0, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v0, :cond_0

    .line 737
    instance-of v2, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 739
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .end local v0           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    .line 686
    .local v1, count:I
    const/4 v2, 0x0

    .line 687
    .local v2, hitSprite:I
    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 688
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v6}, Lcom/htc/sunny2/view/SSurfaceView;->access$800(Lcom/htc/sunny2/view/SSurfaceView;)I

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

    .line 691
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_2

    .line 694
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 695
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 696
    .local v0, childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v6, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_1

    .line 697
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v0, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 694
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 703
    .end local v3           #i:I
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v5

    .line 704
    .local v5, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v5, :cond_4

    .line 718
    .end local v5           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_3
    :goto_1
    return-void

    .line 706
    .restart local v5       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_4
    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v4

    .line 707
    .local v4, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v4, :cond_3

    .line 709
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 710
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 711
    .restart local v0       #childNode:Lcom/htc/sunny2/SceneNode;
    if-eq v4, v0, :cond_5

    instance-of v6, v4, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_6

    .line 712
    :cond_5
    check-cast v4, Lcom/htc/sunny2/view/SView;

    .end local v4           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v4, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    goto :goto_1

    .line 709
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
    .line 1066
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 1072
    iput-object p2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 1075
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0
.end method

.method public getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method public getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;
    .locals 5
    .parameter "sprite"

    .prologue
    .line 657
    if-nez p1, :cond_1

    .line 658
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    .line 668
    :cond_0
    :goto_0
    return-object v0

    .line 661
    :cond_1
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    .line 662
    .local v0, pos:Lcom/htc/sunny2/view/Vector3F;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$800(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$900(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/sunny2/Sunny2;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 663
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 664
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 665
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method invalidateGlobalBackground(IIZ)V
    .locals 18
    .parameter "width"
    .parameter "height"
    .parameter "focusPresent"

    .prologue
    .line 864
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

    .line 865
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 866
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    .line 867
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 869
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_0

    .line 870
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 874
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 983
    :cond_1
    :goto_0
    return-void

    .line 878
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v13, v13, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    if-nez v13, :cond_3

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    if-ne v13, v14, :cond_4

    .line 880
    :cond_3
    const/16 p3, 0x1

    .line 885
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_7

    .line 886
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_5

    .line 887
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v13}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v13}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 889
    if-nez p3, :cond_6

    .line 890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    .line 982
    :cond_5
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    goto :goto_0

    .line 893
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto :goto_1

    .line 898
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-nez v13, :cond_8

    .line 899
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 900
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/16 v14, -0x64

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 903
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 905
    const/4 v11, 0x0

    .line 906
    .local v11, sBmpBkg:Lcom/htc/sunny2/SBitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v13, v13, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v13, :cond_10

    .line 907
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    .line 908
    .local v9, initDrawable:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    invoke-virtual {v9}, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 909
    .local v2, bmp:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v11

    .line 910
    iget v13, v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcWidth:I

    int-to-float v4, v13

    .line 911
    .local v4, bmpWidth:F
    iget v13, v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcHeight:I

    int-to-float v3, v13

    .line 913
    .local v3, bmpHeight:F
    const/4 v6, 0x0

    .line 914
    .local v6, fitScreenW:F
    const/4 v5, 0x0

    .line 916
    .local v5, fitScreenH:F
    iget v10, v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mOrientation:I

    .line 917
    .local v10, ori:I
    rem-int/lit16 v10, v10, 0x168

    .line 918
    if-gez v10, :cond_9

    .line 919
    add-int/lit16 v10, v10, 0x168

    .line 921
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 923
    const/16 v13, 0x5a

    if-eq v10, v13, :cond_a

    const/16 v13, 0x10e

    if-ne v10, v13, :cond_b

    .line 924
    :cond_a
    move v12, v4

    .line 925
    .local v12, tmpW:F
    move v4, v3

    .line 926
    move v3, v12

    .line 929
    .end local v12           #tmpW:F
    :cond_b
    move/from16 v0, p1

    int-to-float v13, v0

    cmpl-float v13, v4, v13

    if-gez v13, :cond_c

    move/from16 v0, p2

    int-to-float v13, v0

    cmpl-float v13, v3, v13

    if-ltz v13, :cond_f

    .line 931
    :cond_c
    div-float v8, v3, v4

    .line 932
    .local v8, imageAspect:F
    move/from16 v0, p2

    int-to-float v13, v0

    move/from16 v0, p1

    int-to-float v14, v0

    div-float v7, v13, v14

    .line 934
    .local v7, frameAspect:F
    cmpl-float v13, v8, v7

    if-ltz v13, :cond_e

    .line 936
    move/from16 v0, p2

    int-to-float v5, v0

    .line 937
    move/from16 v0, p2

    int-to-float v13, v0

    div-float v6, v13, v8

    .line 952
    .end local v7           #frameAspect:F
    .end local v8           #imageAspect:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v14, 0x3f80

    invoke-virtual {v13, v6, v5, v14}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 960
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #bmpHeight:F
    .end local v4           #bmpWidth:F
    .end local v5           #fitScreenH:F
    .end local v6           #fitScreenW:F
    .end local v9           #initDrawable:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    .end local v10           #ori:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-nez v13, :cond_11

    .line 961
    invoke-static {v11}, Lcom/htc/sunny2/Texture;->createTexture(Lcom/htc/sunny2/SBitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 968
    :goto_4
    if-eqz v11, :cond_d

    .line 969
    invoke-virtual {v11}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 972
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v13}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v13}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 974
    if-nez p3, :cond_12

    .line 975
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    goto/16 :goto_1

    .line 941
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #bmpHeight:F
    .restart local v4       #bmpWidth:F
    .restart local v5       #fitScreenH:F
    .restart local v6       #fitScreenW:F
    .restart local v7       #frameAspect:F
    .restart local v8       #imageAspect:F
    .restart local v9       #initDrawable:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    .restart local v10       #ori:I
    :cond_e
    move/from16 v0, p1

    int-to-float v6, v0

    .line 942
    move/from16 v0, p1

    int-to-float v13, v0

    mul-float v5, v13, v8

    goto :goto_2

    .line 948
    .end local v7           #frameAspect:F
    .end local v8           #imageAspect:F
    :cond_f
    move v6, v4

    .line 949
    move v5, v3

    goto :goto_2

    .line 955
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #bmpHeight:F
    .end local v4           #bmpWidth:F
    .end local v5           #fitScreenH:F
    .end local v6           #fitScreenW:F
    .end local v9           #initDrawable:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    .end local v10           #ori:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v0, v1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v11

    .line 956
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/high16 v16, 0x3f80

    invoke-virtual/range {v13 .. v16}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 957
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    goto :goto_3

    .line 965
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v13, v11}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    goto :goto_4

    .line 978
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto/16 :goto_1
.end method

.method invalidateOverlapRoundCorner(II)V
    .locals 18
    .parameter "width"
    .parameter "height"

    .prologue
    .line 986
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

    .line 987
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 988
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    .line 989
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 991
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_0

    .line 992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 996
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

    .line 1063
    :cond_1
    :goto_0
    return-void

    .line 1000
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-nez v13, :cond_4

    .line 1001
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_3

    .line 1004
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 1062
    :cond_3
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    goto :goto_0

    .line 1008
    :cond_4
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1009
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1011
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 1012
    .local v5, extraPadding:Landroid/graphics/Rect;
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 1013
    .local v8, pLeft:I
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 1014
    .local v9, pRiget:I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 1015
    .local v10, pTop:I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 1017
    .local v7, pBottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v13}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1018
    .local v11, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1019
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    sub-int v14, p2, v7

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v13, v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1020
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1021
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v13, v14, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1022
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1023
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1024
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1025
    sub-int v13, p1, v9

    const/4 v14, 0x0

    sub-int v15, p2, v7

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1026
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1028
    const-string v13, "com.android.internal.R.drawable.zzz_common_panel_container_mask"

    invoke-static {v13}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v12

    .line 1029
    .local v12, resId:I
    if-nez v12, :cond_6

    .line 1030
    const-string v13, "SSurfaceView"

    const-string v14, "[invalidateOverlapRoundCorner] get common resource fail: com.android.internal.R.drawable.zzz_common_panel_container_mask"

    new-instance v15, Ljava/lang/Exception;

    const-string v16, ""

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    if-nez v13, :cond_7

    .line 1039
    invoke-static {v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    .line 1045
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1047
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-nez v13, :cond_5

    .line 1048
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    .line 1049
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 1059
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto/16 :goto_1

    .line 1033
    :cond_6
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1034
    .local v6, maskDrawable:Landroid/graphics/drawable/Drawable;
    sub-int v13, p1, v9

    sub-int v14, p2, v7

    invoke-virtual {v6, v8, v10, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1035
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1042
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
    .line 680
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(I)Z
    .locals 2
    .parameter "feedbackConstant"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 784
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 2
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 794
    const/4 v0, 0x1

    return v0
.end method

.method public playSoundEffect(I)V
    .locals 2
    .parameter "soundConstant"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 776
    return-void
.end method

.method public refreshRenderOrder(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 637
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    .line 639
    const/4 v1, 0x0

    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    move-object v2, p1

    .line 640
    check-cast v2, Ljava/lang/String;

    .line 641
    .local v2, szIdentity:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 642
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 646
    :goto_0
    if-eqz v1, :cond_1

    .line 648
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 649
    .local v0, node:Lcom/htc/sunny2/SceneNode;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getEnvironmentRenderOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 653
    .end local v0           #node:Lcom/htc/sunny2/SceneNode;
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    .end local v2           #szIdentity:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 654
    return-void

    .line 644
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

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 593
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 595
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 600
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 602
    :cond_1
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 759
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 760
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 761
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 764
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$1000(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->requestLayout()V

    .line 673
    return-void
.end method

.method public setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 837
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 861
    :goto_0
    return-void

    .line 841
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v0, :cond_2

    .line 842
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    .line 843
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 844
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 845
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 853
    :cond_1
    :goto_1
    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 855
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 856
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 860
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0

    .line 850
    :cond_2
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    goto :goto_1
.end method

.method public setGlobalBackgroundResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 822
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 833
    :goto_0
    return-void

    .line 826
    :cond_0
    const/4 v0, 0x0

    .line 827
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 830
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 832
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    goto :goto_0
.end method

.method public showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z
    .locals 2
    .parameter "originalView"

    .prologue
    .line 798
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    .line 801
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 809
    const/4 v0, 0x1

    return v0
.end method
