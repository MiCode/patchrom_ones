.class public Lcom/htc/album/picker/PickerGeoErrorScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalError;
.source "PickerGeoErrorScene.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoErrorScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    return-void
.end method


# virtual methods
.method protected createErrorView()Landroid/widget/RelativeLayout;
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, errorView:Lcom/htc/album/helper/ErrorViewManager;
    new-instance v0, Lcom/htc/album/helper/ErrorViewManager;

    .end local v0           #errorView:Lcom/htc/album/helper/ErrorViewManager;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/helper/ErrorViewManager;-><init>(Landroid/content/Context;)V

    .line 28
    .restart local v0       #errorView:Lcom/htc/album/helper/ErrorViewManager;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->initialize(Landroid/app/Activity;Z)V

    .line 29
    return-object v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 104
    return-void
.end method

.method protected onActionBarClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoErrorScene;->onActionBarBackPressed()V

    .line 94
    return-void
.end method

.method public onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 70
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    const-string v7, "PickerGeoErrorScene"

    const-string v8, "[HTCAlbum][PickerGeoErrorScene][onActionBarFling]: ..."

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 89
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 75
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v3, v7

    .line 76
    .local v3, diffX:D
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v5, v7

    .line 80
    .local v5, diffY:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->gestureRegion()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 82
    const/4 v7, 0x0

    cmpl-float v7, p4, v7

    if-lez v7, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoErrorScene;->onActionBarBackPressed()V

    .line 86
    const/4 v1, 0x1

    :cond_2
    move v2, v1

    .line 89
    .restart local v2       #bResult:I
    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarTouchEvent()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onSendToForeground(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->detach(Landroid/view/ViewGroup;)V

    .line 46
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->attach(Landroid/view/ViewGroup;)V

    .line 47
    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateErrorView()V
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorState(Landroid/content/Context;IZ)Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;

    move-result-object v0

    .line 60
    .local v0, errMsg:Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->getMsg()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->setErrorText(I)V

    .line 61
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "PickerGeoErrorScene"

    return-object v0
.end method
