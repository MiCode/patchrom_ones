.class Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;
.super Ljava/lang/Object;
.source "SceneTransitionCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->onLayoutChangedIRT(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

.field final synthetic val$nNewHeight:I

.field final synthetic val$nNewWidth:I

.field final synthetic val$sunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->this$0:Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

    iput-object p2, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->val$sunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput p3, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->val$nNewWidth:I

    iput p4, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->val$nNewHeight:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->val$sunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToBackground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->this$0:Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

    #getter for: Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->mHost:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->access$000(Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/addons/SceneTransitionCacheHandler;

    .line 71
    .local v0, transitionHandler:Lcom/htc/album/addons/SceneTransitionCacheHandler;
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "SceneTransitionCacheHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneTransitionCacheHandler][onLayoutChangedIRT]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->val$nNewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->val$nNewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->val$nNewWidth:I

    iget v2, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener$1;->val$nNewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/SceneTransitionCacheHandler;->onLayoutChanged(II)V

    goto :goto_0
.end method
