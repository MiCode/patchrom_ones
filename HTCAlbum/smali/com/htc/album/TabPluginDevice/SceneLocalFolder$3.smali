.class Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/GridViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V
    .locals 1
    .parameter "dataIndex"
    .parameter "gridViewItem"
    .parameter "mediaData"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$000(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V

    .line 246
    return-void
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "gridViewItem"

    .prologue
    .line 253
    return-void
.end method
