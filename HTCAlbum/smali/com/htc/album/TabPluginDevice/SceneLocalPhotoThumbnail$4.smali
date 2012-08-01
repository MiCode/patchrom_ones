.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 2425
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V
    .locals 5
    .parameter "dataIndex"
    .parameter "viewItem"
    .parameter "mediaData"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 2429
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2430
    invoke-virtual {p2, v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setStyle(I)V

    .line 2436
    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    if-eqz v1, :cond_0

    .line 2437
    const/4 v0, 0x0

    .line 2438
    .local v0, isSelected:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2439
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2440
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p2

    .line 2441
    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;->setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2443
    .end local v0           #isSelected:Z
    :cond_0
    instance-of v1, p2, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    if-eqz v1, :cond_1

    .line 2444
    check-cast p2, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    .end local p2
    invoke-virtual {p2, v4}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->workaround_SetBestIndicator(Z)V

    .line 2446
    :cond_1
    return-void

    .line 2433
    .restart local p2
    :cond_2
    invoke-virtual {p2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setStyle(I)V

    goto :goto_0

    .line 2440
    .restart local v0       #isSelected:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "viewItem"

    .prologue
    .line 2426
    return-void
.end method
