.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;
.super Lcom/htc/sunny2/view/SSurfaceView;
.source "SunnySceneEnvironment.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyEnvironmentPass;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyEnvironmentAccess;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mEnable2Pane:Z

.field private mIsPaneRight:Z

.field private mUseWinMgrDispMets:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "SunnySceneEnvironment"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 30
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 31
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mUseWinMgrDispMets:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "SunnySceneEnvironment"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 30
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 31
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mUseWinMgrDispMets:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string v0, "SunnySceneEnvironment"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 30
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 31
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mUseWinMgrDispMets:Z

    .line 44
    return-void
.end method


# virtual methods
.method public enableSunnyEnvTouchEvent(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setTouchEnable(Z)V

    .line 164
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 77
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mUseWinMgrDispMets:Z

    if-eqz v9, :cond_0

    .line 79
    const/4 v3, -0x1

    .line 80
    .local v3, givenWidth:I
    const/4 v2, -0x1

    .line 82
    .local v2, givenHeight:I
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 83
    .local v0, d:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 87
    .local v8, p:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 89
    .local v4, met:Landroid/util/DisplayMetrics;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 90
    .local v7, nWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 91
    .local v6, nHeight:I
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 92
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 94
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-boolean v10, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    iget-boolean v11, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    invoke-static {v9, v10, v11, v3, v2}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->onMeasuredWidthAndHeight(Landroid/content/Context;ZZII)[I

    move-result-object v5

    .line 95
    .local v5, nDimension:[I
    const-string v9, "SunnySceneEnvironment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SunnySceneEnvironment][onMeasure]ori="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MeasureSpec ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), WinMgr ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x1

    aget v10, v5, v10

    invoke-virtual {p0, v9, v10}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setMeasuredDimension(II)V

    .line 104
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #givenHeight:I
    .end local v3           #givenWidth:I
    .end local v4           #met:Landroid/util/DisplayMetrics;
    .end local v6           #nHeight:I
    .end local v7           #nWidth:I
    .end local v8           #p:Landroid/view/View;
    :goto_0
    return-void

    .line 100
    .end local v5           #nDimension:[I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-boolean v10, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    iget-boolean v11, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    invoke-static {v9, v10, v11}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->onMeasuredWidthAndHeight(Landroid/content/Context;ZZ)[I

    move-result-object v5

    .line 101
    .restart local v5       #nDimension:[I
    const-string v9, "SunnySceneEnvironment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SunnySceneEnvironment][onMeasure]ori="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", measuredDimention ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x1

    aget v10, v5, v10

    invoke-virtual {p0, v9, v10}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public putToStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 137
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_1

    .line 140
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 141
    .local v0, view:Lcom/htc/sunny2/view/SView;
    instance-of v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 142
    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView;->setSnapShotHost(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;)V

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 145
    .end local v0           #view:Lcom/htc/sunny2/view/SView;
    :cond_1
    return-void
.end method

.method public removeFromStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 150
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    .line 153
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 154
    .local v0, view:Lcom/htc/sunny2/view/SView;
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->removeView(Lcom/htc/sunny2/view/SView;)V

    .line 156
    .end local v0           #view:Lcom/htc/sunny2/view/SView;
    :cond_0
    return-void
.end method

.method public setPaneConfig(ZZ)V
    .locals 0
    .parameter "bEnable2Pane"
    .parameter "bIsPaneRight"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 48
    iput-boolean p2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 49
    return-void
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter "displayControl"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 109
    return-void
.end method

.method public setUseWinMgrDispMets(Z)V
    .locals 0
    .parameter "bUseWinMgrDispMets"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mUseWinMgrDispMets:Z

    .line 53
    return-void
.end method

.method public sunnyContext()Lcom/htc/sunny2/SunnyContext;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v0

    return-object v0
.end method

.method public sunnyHandler()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyEnvironmentHandler()I

    move-result v0

    return v0
.end method

.method public sunnyHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 57
    const-string v0, "SunnySceneEnvironment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnySceneEnvironment][surfaceChanged]ori="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mUseWinMgrDispMets:Z

    .line 60
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mUseWinMgrDispMets:Z

    .line 65
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 66
    return-void
.end method
