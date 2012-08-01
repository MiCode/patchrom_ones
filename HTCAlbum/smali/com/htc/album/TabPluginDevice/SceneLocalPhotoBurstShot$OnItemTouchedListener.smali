.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemTouchedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter

    .prologue
    .line 1763
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    return-void
.end method


# virtual methods
.method public onItemDown(Lcom/htc/sunny2/view/SView;I)V
    .locals 2
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 1767
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]onItemDown"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isDRMPressed(I)Z
    invoke-static {v0, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onDRMPressed(Z)V

    .line 1772
    :cond_0
    return-void
.end method

.method public onItemUp(Lcom/htc/sunny2/view/SView;I)V
    .locals 4
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 1776
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]onItemUp"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    const/4 v0, 0x0

    .line 1778
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .restart local v0       #adapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    if-nez v0, :cond_1

    .line 1780
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]adapter is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :cond_0
    :goto_0
    return-void

    .line 1784
    :cond_1
    const/4 v1, 0x0

    .line 1785
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2, p2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v1       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 1787
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]image is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1791
    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1794
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/view/SView;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onDRMPressed(Z)V

    goto :goto_0
.end method
