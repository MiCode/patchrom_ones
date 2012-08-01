.class Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;
.super Ljava/lang/Object;
.source "SceneScrollCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;->onAttached(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

.field final synthetic val$newCacheType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;->this$1:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    iput-object p2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;->val$newCacheType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;->this$1:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    iget-object v0, v0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;->val$newCacheType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    #calls: Lcom/htc/album/addons/SceneScrollCacheHandler;->onCacheAttached(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    invoke-static {v0, v1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->access$100(Lcom/htc/album/addons/SceneScrollCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 111
    return-void
.end method
