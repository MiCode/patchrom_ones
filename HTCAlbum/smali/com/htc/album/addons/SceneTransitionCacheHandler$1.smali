.class Lcom/htc/album/addons/SceneTransitionCacheHandler$1;
.super Landroid/os/Handler;
.source "SceneTransitionCacheHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/SceneTransitionCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/SceneTransitionCacheHandler;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/SceneTransitionCacheHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$1;->this$0:Lcom/htc/album/addons/SceneTransitionCacheHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler$1;->this$0:Lcom/htc/album/addons/SceneTransitionCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneTransitionCacheHandler;->onMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method
