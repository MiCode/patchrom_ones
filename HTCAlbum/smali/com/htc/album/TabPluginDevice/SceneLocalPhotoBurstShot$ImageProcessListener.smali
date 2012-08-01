.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    return-void
.end method


# virtual methods
.method public onProcessCancel()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public onProcessEnd(I)V
    .locals 7
    .parameter "nMode"

    .prologue
    .line 178
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 180
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    const/4 v4, 0x0

    .line 183
    .local v4, handler:Landroid/app/Activity;
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, bNeedSetSelect:Z
    const/4 v5, 0x7

    if-eq p1, v5, :cond_0

    const/4 v5, 0x6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x8

    if-ne p1, v5, :cond_1

    .line 198
    :cond_0
    const/4 v1, 0x1

    .line 201
    :cond_1
    move v2, v1

    .line 202
    .local v2, bSetSelection:Z
    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;Z)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    .end local v1           #bNeedSetSelect:Z
    .end local v2           #bSetSelection:Z
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v3

    .line 187
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "SceneLocalPhotoBurstShot"

    const-string v6, "[onDeleteEnd] Can not get Handler!!"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v4, 0x0

    .line 189
    goto :goto_0
.end method

.method public onProcessStart()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
