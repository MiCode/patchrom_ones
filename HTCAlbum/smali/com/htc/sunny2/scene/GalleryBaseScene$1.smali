.class Lcom/htc/sunny2/scene/GalleryBaseScene$1;
.super Ljava/lang/Object;
.source "GalleryBaseScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/scene/GalleryBaseScene;

.field final synthetic val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

.field final synthetic val$leaveView:Lcom/htc/sunny2/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/scene/GalleryBaseScene;Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene$1;,"Lcom/htc/sunny2/scene/GalleryBaseScene.1;"
    iput-object p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->this$0:Lcom/htc/sunny2/scene/GalleryBaseScene;

    iput-object p2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    iput-object p3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene$1;,"Lcom/htc/sunny2/scene/GalleryBaseScene.1;"
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][onDestroyAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    .line 165
    :cond_0
    :goto_0
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][onDestroyAdapter]: onUnloadData"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 169
    :cond_1
    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->checkSetMediaListComplete_block()V

    goto :goto_0
.end method
