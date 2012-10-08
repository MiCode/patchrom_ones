.class Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;
.super Ljava/lang/Object;
.source "SceneTransitionCacheHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheLayoutListenerIRT;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/SceneTransitionCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "screenLayoutListener"
.end annotation


# instance fields
.field private mHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/album/addons/SceneTransitionCacheHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSunnyScene:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/album/addons/SceneTransitionCacheHandler;)V
    .locals 1
    .parameter "sunnyScene"
    .parameter "host"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->mSunnyScene:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->mSunnyScene:Ljava/lang/ref/WeakReference;

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->mHost:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public onLayoutChangedIRT(II)V
    .locals 6
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 50
    move v2, p1

    .line 51
    .local v2, nNewWidth:I
    move v1, p2

    .line 53
    .local v1, nNewHeight:I
    iget-object v5, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->mSunnyScene:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 54
    .local v4, sunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v4, :cond_0

    .line 78
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v3

    .line 60
    .local v3, sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, activity:Landroid/app/Activity;
    new-instance v5, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;

    invoke-direct {v5, p0, v4, v2, v1}, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;-><init>(Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;II)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
