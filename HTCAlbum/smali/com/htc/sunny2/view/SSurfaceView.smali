.class public Lcom/htc/sunny2/view/SSurfaceView;
.super Landroid/view/SurfaceView;
.source "SSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/htc/sunny2/RenderThread$EventListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;
.implements Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SSurfaceView$1;,
        Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;,
        Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;,
        Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;,
        Lcom/htc/sunny2/view/SSurfaceView$ReLayout;,
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

.field private mCamera:I

.field private mEnableInitBackground:Z

.field private mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

.field private mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mInitBackgroundResId:I

.field private mIsForceRenderAfterSurfaceChanged:Z

.field private mIsTouchEnabled:Z

.field private final mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

.field protected mRenderThread:Lcom/htc/sunny2/RenderThread;

.field private mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

.field private mRootNode:I

.field protected mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

.field private mScene:I

.field protected mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field protected mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

.field protected mSunnyContext:Lcom/htc/sunny2/SunnyContext;

.field protected mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

.field private mSunnyWindow:I

.field private mSurfacePixelFormat:I

.field private mViewPort:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 57
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 70
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    .line 72
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEnableInitBackground:Z

    .line 87
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "initBackgroundResId"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 57
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 70
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    .line 72
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEnableInitBackground:Z

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 57
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 70
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    .line 72
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEnableInitBackground:Z

    .line 92
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 57
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 70
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    .line 72
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEnableInitBackground:Z

    .line 97
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/view/SSurfaceView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView;->onSurfaceChangedIRT(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;I)V

    .line 107
    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "initBackgroundResId"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 112
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    .line 115
    if-nez p2, :cond_0

    .line 116
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/view/SSurfaceView;->setEnableInitBackground(Z)V

    .line 123
    :goto_0
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    .line 124
    new-instance v1, Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v1}, Lcom/htc/sunny2/SunnyContext;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    .line 126
    sget-boolean v1, Lcom/htc/sunny2/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    :goto_1
    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSurfacePixelFormat:I

    .line 127
    sget-boolean v1, Lcom/htc/sunny2/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1, v5, v6, v5, v2}, Lcom/htc/sunny2/SunnyContext;->init(IIII)Z

    move-result v0

    .line 128
    .local v0, rs:Z
    :goto_2
    if-nez v0, :cond_3

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Create Sunny Context Fail"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v0           #rs:Z
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/view/SSurfaceView;->setEnableInitBackground(Z)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/view/SSurfaceView;->setInitBackgroundResource(I)V

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/htc/sunny2/SunnyContext;->init(IIII)Z

    move-result v0

    goto :goto_2

    .line 132
    .restart local v0       #rs:Z
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    if-eqz v1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/Sunny2;->CreateWindowByContext(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    .line 138
    :goto_3
    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    if-nez v1, :cond_5

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t create SunnyWindow"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    invoke-static {v1}, Lcom/htc/sunny2/Sunny2;->CreateWindow(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    goto :goto_3

    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSurfacePixelFormat:I

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 144
    iput-boolean v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsTouchEnabled:Z

    .line 146
    new-instance v1, Lcom/htc/sunny2/RenderThread;

    const-string v2, "SunnyRenderThread"

    invoke-direct {v1, v2, p0}, Lcom/htc/sunny2/RenderThread;-><init>(Ljava/lang/String;Lcom/htc/sunny2/RenderThread$EventListener;)V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 147
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->beginThread()V

    .line 148
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    .line 149
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v6}, Lcom/htc/sunny2/RenderThread;->setPriority(I)V

    .line 150
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;)V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 153
    return-void
.end method

.method private onSurfaceChangedIRT(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    .line 279
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    if-eqz v4, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 281
    .local v0, d:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 282
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 283
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 284
    .local v3, nWidth:I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 286
    .local v2, nHeight:I
    if-ne v3, p1, :cond_3

    if-ne v2, p2, :cond_3

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 288
    iget-boolean v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEnableInitBackground:Z

    if-ne v4, v6, :cond_1

    .line 289
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 292
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, p1, p2, v6}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->invalidateGlobalBackground(IIZ)V

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView;->resetInitBackground()V

    .line 301
    :cond_1
    iput-boolean v6, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    .line 309
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #nHeight:I
    .end local v3           #nWidth:I
    :cond_2
    :goto_0
    return-void

    .line 305
    .restart local v0       #d:Landroid/view/Display;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #nHeight:I
    .restart local v3       #nWidth:I
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0
.end method

.method private resetInitBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEnableInitBackground:Z

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundResId:I

    .line 276
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 474
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->onDestroy()V

    .line 175
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->endThread()V

    .line 179
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyContext;->deinit()V

    .line 181
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 183
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/16 v1, 0x8

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 462
    :cond_1
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnvironmentSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "rect"

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 504
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 502
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->getSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 504
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getEventDispatcher()Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    return-object v0
.end method

.method public getInitBackgroundTexture_IRT()Lcom/htc/sunny2/Texture;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, texture:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    .line 519
    .local v0, d:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$200(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 520
    iget v2, v0, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Texture;->setSourceWidth(I)V

    .line 521
    iget v2, v0, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcHeight:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Texture;->setSourceHeight(I)V

    .line 522
    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #setter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;
    invoke-static {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$202(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 524
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$300(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/Sprite;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 525
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$300(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/Sprite;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 527
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #setter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I
    invoke-static {v2, v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$402(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)I

    .line 528
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #setter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$102(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 533
    .end local v0           #d:Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
    :goto_0
    return-object v1

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView;->resetInitBackground()V

    goto :goto_0
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method public getSunnyContext()Lcom/htc/sunny2/SunnyContext;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    return-object v0
.end method

.method public getSunnyEnvironmentHandler()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    return v0
.end method

.method public getSunnyWindow()I
    .locals 1

    .prologue
    .line 1364
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    return v0
.end method

.method public onInterruptionEndIRT()V
    .locals 6

    .prologue
    .line 317
    iget-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 318
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 322
    .local v0, time:J
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    #calls: Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->processLayoutRequest()V
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->access$000(Lcom/htc/sunny2/view/SSurfaceView$ReLayout;)V

    .line 323
    const-string v2, "SSurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onInterruptionEndIRT] processLayoutRequest done! Cost time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v2}, Lcom/htc/sunny2/Sunny2;->Window_Render(I)V

    .line 327
    .end local v0           #time:J
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v2, :cond_2

    .line 331
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v2}, Lcom/htc/sunny2/RenderThread$EventListener;->onInterruptionEndIRT()V

    .line 333
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 164
    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->pauseRender()V

    .line 168
    :cond_0
    return-void
.end method

.method public onRenderStartIRT()Z
    .locals 8

    .prologue
    .line 337
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyContext;->runOnCurrentThread()Z

    .line 341
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Window_GetDefaultViewport(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I

    .line 343
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v4

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->CreateScene(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    .line 344
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Scene_GetRootNode(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRootNode:I

    .line 345
    new-instance v4, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRootNode:I

    invoke-direct {v4, p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;-><init>(Lcom/htc/sunny2/view/SSurfaceView;I)V

    iput-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    .line 347
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Scene_GetDefaultCamera(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mCamera:I

    .line 348
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mCamera:I

    const/high16 v5, 0x4270

    const/high16 v6, 0x4120

    const v7, 0x461c4000

    invoke-static {v4, v5, v6, v7}, Lcom/htc/sunny2/Sunny2;->Camera_2DIsometricSetup(IFFF)V

    .line 349
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I

    iget v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mCamera:I

    invoke-static {v4, v5}, Lcom/htc/sunny2/Sunny2;->Viewport_LinkCamera(II)V

    .line 351
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 352
    new-instance v4, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    iget-object v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v4, p0, p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;-><init>(Lcom/htc/sunny2/view/SSurfaceView;Ljava/lang/Object;Lcom/htc/sunny2/RenderThread;)V

    iput-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    .line 357
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 358
    .local v2, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 359
    .local v0, frame:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 360
    .local v3, width:I
    const/4 v1, 0x0

    .line 361
    .local v1, height:I
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 363
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 366
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 367
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v1}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 368
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->onProcessInterruptionIRT()V

    .line 371
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v4, :cond_2

    .line 372
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v4}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStartIRT()Z

    .line 375
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public onRenderStopIRT()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 397
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v4, :cond_0

    .line 398
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v4}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStopIRT()V

    .line 401
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    .line 402
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 403
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v3

    .line 404
    .local v3, node:Lcom/htc/sunny2/SceneNode;
    instance-of v4, v3, Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 405
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .line 406
    .local v0, child:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->onDetachedFromWindow()V

    .line 407
    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 408
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeView(Lcom/htc/sunny2/view/SView;)V

    .line 402
    .end local v0           #child:Lcom/htc/sunny2/view/SView;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 412
    .end local v3           #node:Lcom/htc/sunny2/SceneNode;
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->release()V

    .line 413
    iput-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    .line 415
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4, v6, v5, v5}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 416
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->onProcessInterruptionIRT()V

    .line 418
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->DestroyWindow(I)V

    .line 423
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->release()V

    .line 425
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->DestroyScene(I)V

    .line 426
    iput v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    .line 428
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyContext;->removeFromCurrentThread()V

    .line 429
    return-void
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 393
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 156
    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeRender()V

    .line 159
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 161
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 441
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsTouchEnabled:Z

    if-ne v2, v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 444
    :cond_0
    return v2
.end method

.method public refreshRenderOrder(Ljava/lang/String;)V
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 488
    :cond_0
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 480
    :cond_0
    return-void
.end method

.method public set3DGlobalBackground(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 495
    :cond_0
    return-void
.end method

.method public setEnableInitBackground(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEnableInitBackground:Z

    .line 270
    return-void
.end method

.method public setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "initBackgroundDrawable"

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEnableInitBackground:Z

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundResId:I

    .line 211
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setInitBackgroundResource(I)V
    .locals 2
    .parameter "initBackgroundResId"

    .prologue
    .line 186
    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundResId:I

    if-ne p1, v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEnableInitBackground:Z

    if-eqz v1, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundResId:I

    goto :goto_0
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 508
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 509
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 510
    return-void
.end method

.method public setRenderThreadEventListener(Lcom/htc/sunny2/RenderThread$EventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    .line 313
    return-void
.end method

.method public setSnapShotListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->setListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V

    .line 438
    :cond_0
    return-void
.end method

.method public setTouchEnable(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsTouchEnabled:Z

    .line 433
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 231
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3, p3, p4}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 233
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    .line 236
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 238
    .local v0, oldTime:J
    :cond_0
    iget-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    if-nez v2, :cond_2

    .line 255
    .end local v0           #oldTime:J
    :cond_1
    :goto_0
    return-void

    .line 243
    .restart local v0       #oldTime:J
    :cond_2
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    goto :goto_0

    .line 251
    .end local v0           #oldTime:J
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 227
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 261
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView;->resetInitBackground()V

    .line 266
    return-void
.end method
