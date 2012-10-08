.class public Lcom/htc/album/Animation/animationSetFolderGridview;
.super Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.source "animationSetFolderGridview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/frameworks/animation/animationSetBase",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFocusIndex:I

.field private mFocusItem:Lcom/htc/sunny2/view/Vector3F;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunny2/view/SView;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    .line 18
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    .line 23
    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x258

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 162
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 5
    .parameter "nAnimState"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 43
    iput p1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    .line 44
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 49
    iget v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v2, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    return-object v2

    .line 54
    :pswitch_1
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    if-nez v2, :cond_1

    .line 55
    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_2

    .line 60
    iget v3, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v1, v3, v2

    .line 61
    .local v1, idx:I
    if-le v1, v4, :cond_2

    .line 63
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 64
    .local v0, child:Lcom/htc/sunny2/view/SView;
    if-eqz v0, :cond_2

    .line 65
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 69
    .end local v0           #child:Lcom/htc/sunny2/view/SView;
    .end local v1           #idx:I
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_pos"

    iget-object v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    if-nez v2, :cond_3

    .line 77
    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_4

    .line 82
    iget v3, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v1, v3, v2

    .line 83
    .restart local v1       #idx:I
    if-le v1, v4, :cond_4

    .line 85
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 86
    .restart local v0       #child:Lcom/htc/sunny2/view/SView;
    if-eqz v0, :cond_4

    .line 87
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 91
    .end local v0           #child:Lcom/htc/sunny2/view/SView;
    .end local v1           #idx:I
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_pos"

    iget-object v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 113
    iget v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v1, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 118
    :pswitch_0
    new-instance v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-direct {v0, v1, v2}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 119
    .local v0, controller:Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 120
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 126
    .end local v0           #controller:Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
    :pswitch_1
    new-instance v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-direct {v0, v1, v2}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 127
    .local v0, controller:Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 128
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 134
    .end local v0           #controller:Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
    :pswitch_2
    new-instance v0, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 135
    .local v0, controller:Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;
    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 136
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 141
    .end local v0           #controller:Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;
    :pswitch_3
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 142
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 143
    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 144
    invoke-virtual {v0, p3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 145
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 32
    const/4 v0, 0x1

    .line 33
    .local v0, bResult:Z
    if-nez p1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :cond_0
    return v0
.end method

.method public setFocused(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    .line 28
    return-void
.end method
