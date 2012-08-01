.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 2679
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2679
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    return-void
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 2

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2684
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V

    .line 2685
    return-void
.end method

.method public onDeleteEnd()V
    .locals 8

    .prologue
    .line 2690
    const/4 v0, 0x0

    .line 2691
    .local v0, delete:[I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 2692
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 2693
    const/4 v3, 0x0

    .line 2694
    .local v3, idx:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v4, v3

    .end local v3           #idx:I
    .local v4, idx:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2695
    .local v1, i:Ljava/lang/Integer;
    add-int/lit8 v3, v4, 0x1

    .end local v4           #idx:I
    .restart local v3       #idx:I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    move v4, v3

    .end local v3           #idx:I
    .restart local v4       #idx:I
    goto :goto_0

    .line 2697
    .end local v1           #i:Ljava/lang/Integer;
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2698
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2699
    if-eqz v0, :cond_1

    .line 2700
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v6, 0x0

    aget v6, v0, v6

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V
    invoke-static {v5, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V

    .line 2703
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/view/SView;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    check-cast v0, [I

    .end local v0           #delete:[I
    const/4 v6, 0x0

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;

    invoke-direct {v7, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;)V

    invoke-virtual {v5, v0, v6, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 2723
    return-void

    .line 2698
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #idx:I
    .restart local v0       #delete:[I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onDeleteStart()V
    .locals 0

    .prologue
    .line 2728
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 2

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V

    .line 2733
    return-void
.end method
