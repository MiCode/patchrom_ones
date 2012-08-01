.class public Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;
.source "SceneDlnaGridview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase",
        "<",
        "Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_DLNA_GRID_VIEW:I = 0x1

.field private static final GO_BACK_TYPE_DEFAULT:I = 0x0

.field private static final HEADER_BAR_DLNA_GRID_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneDlnaGridview"

.field private static final VIDEO_LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final VIDEO_LAUNCHER:Ljava/lang/String; = "launcher"


# instance fields
.field private final SCENE_ID:I

.field private bContainerActivityForeground:Z

.field private mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V
    .locals 2
    .parameter "tvListener"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;-><init>()V

    .line 43
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->SCENE_ID:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 54
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 57
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 68
    iput-object p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;)Lcom/htc/sunny2/view/Vector3F;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method private cancelAllRequestingContent()V
    .locals 5

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1074
    :cond_0
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview]cancelRequestingContent"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->cancelThumbnailDownloadRequests()V

    .line 1078
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    .line 1080
    .local v0, gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v1, :cond_1

    .line 1082
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->browseCancel(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1086
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->setLoadMoreState(Z)V

    goto :goto_0
.end method

.method private getFirstValidPos()I
    .locals 6

    .prologue
    .line 1040
    const/4 v3, -0x1

    .line 1042
    .local v3, pos:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v5, :cond_0

    move v4, v3

    .line 1064
    .end local v3           #pos:I
    .local v4, pos:I
    :goto_0
    return v4

    .line 1045
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getCount()I

    move-result v0

    .line 1046
    .local v0, count:I
    if-gtz v0, :cond_1

    move v4, v3

    .line 1047
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0

    .line 1049
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_1
    const/4 v2, 0x0

    .line 1050
    .local v2, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .end local v2           #obj:Ljava/lang/Object;
    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1052
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 1054
    .local v2, obj:Lcom/htc/sunny2/IMediaData;
    if-nez v2, :cond_3

    .line 1050
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1057
    :cond_3
    instance-of v5, v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v5, :cond_2

    .line 1059
    move v3, v1

    .end local v2           #obj:Lcom/htc/sunny2/IMediaData;
    :cond_4
    move v4, v3

    .line 1064
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0
.end method

.method private launchDMCforTVout(I)V
    .locals 1
    .parameter "nSelect"

    .prologue
    .line 1035
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onDMRChanged(Ljava/lang/String;I)V

    .line 1036
    return-void
.end method

.method private onDMRChanged(Ljava/lang/String;I)V
    .locals 12
    .parameter "selectDMR"
    .parameter "pos"

    .prologue
    .line 951
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    const-string v1, "SceneDlnaGridview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneDlnaGridview][onDMRChanged]: pos :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 959
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1, p2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    .line 960
    .local v9, obj:Lcom/htc/sunny2/IMediaData;
    if-eqz v9, :cond_0

    move-object v8, v9

    .line 963
    check-cast v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 965
    .local v8, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 966
    .local v6, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v6, :cond_0

    .line 969
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 970
    .local v11, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    if-eqz v11, :cond_0

    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_2

    .line 975
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 977
    :cond_2
    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v10

    .line 981
    .local v10, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v10}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 983
    .local v7, location:Ljava/lang/String;
    const-string v1, "2"

    iget-object v2, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 985
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-static {v0, p1, p2, v2, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchMediaServerPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/TabPluginDLNA/DLNAServerInfo;Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V

    goto :goto_0

    .line 987
    :cond_3
    const-string v1, "4"

    iget-object v2, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 991
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 992
    .local v5, bundle:Landroid/os/Bundle;
    const-string v1, "folder_type"

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v1, "key_bucket_id"

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string v1, "key_folder_name"

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v1, "location"

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v1, "index_id"

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 997
    const-string v1, "directory_info"

    invoke-virtual {v5, v1, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 998
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, moreBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 475
    :cond_0
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[showMore]can\'t get context"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 484
    const/16 v0, 0xf

    const/4 v1, 0x0

    const v2, 0x7f0a00be

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_0
.end method

.method private trunOnOffTV(Z)V
    .locals 5
    .parameter "bIsTvOutOn"

    .prologue
    .line 1008
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1012
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1014
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 1017
    const-string v2, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SceneDLnaGrisview][turnOnOffTVBtn]: bIsTvOutOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    if-eqz p1, :cond_2

    .line 1023
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 1024
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->turnOnTV(Landroid/content/Context;)Z

    goto :goto_0

    .line 1029
    :cond_2
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOffTV(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "AdapterDlnaMediumItem"

    return-object v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 789
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 790
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v0, :cond_0

    .line 780
    const/4 v0, 0x0

    .line 781
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyDataChangedAt(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 83
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][notifyDataChangedAt]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 85
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->notifyDataSetChanged()V

    .line 77
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    .line 78
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][notifyDataSetChanged]..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onBackPressed()Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 905
    const/16 v6, 0x1398

    if-ne p1, v6, :cond_0

    if-ne p2, v8, :cond_0

    .line 907
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 911
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0, v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    .line 912
    .local v3, oldDMR:Ljava/lang/String;
    const-string v6, "DMR"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 913
    .local v5, selectDMR:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 915
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 916
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 919
    const-string v6, "directmode"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 920
    const-string v6, "SceneDlnaGridview"

    const-string v7, "[HTCAlbum][SceneDlnaGridview][onActivityResult]: Reset direct mode"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getFirstValidPos()I

    move-result v4

    .line 924
    .local v4, pos:I
    if-eq v4, v8, :cond_0

    .line 927
    if-nez v5, :cond_4

    .line 929
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_0

    .line 932
    if-eqz v3, :cond_3

    .line 933
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v6, v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->destroyController(Ljava/lang/String;)V

    .line 935
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 936
    .local v2, obj:Lcom/htc/sunny2/IMediaData;
    instance-of v6, v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v6, :cond_0

    .line 937
    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v2           #obj:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {p0, v4, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0

    .line 942
    :cond_4
    invoke-direct {p0, v5, v4}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onDMRChanged(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 840
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 842
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v7, :cond_1

    .line 890
    :cond_0
    :goto_0
    return v5

    .line 845
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 846
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 850
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eq v6, v7, :cond_0

    .line 857
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 858
    .local v3, newIntent:Landroid/content/Intent;
    const-class v7, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 859
    const-string v7, "tab_default"

    const v8, 0x7f0a00b5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 862
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 864
    const-string v7, "directmode"

    const-string v8, "directmode"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 865
    const-string v7, "browse_mode"

    const-string v8, "browse_mode"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 866
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 868
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 869
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "server_id"

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "server_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v5, "server_name"

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "server_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_3

    .line 874
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 875
    .local v4, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    const-string v5, "directory_info"

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 882
    .end local v4           #serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    :goto_1
    const-string v5, "browse_info"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 883
    const-string v5, "com.htc.album.action.DLNA_BROWSE_DMS_RECOVERY"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_2
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 888
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 889
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v5, v6

    .line 890
    goto/16 :goto_0

    .line 879
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_3
    const-string v5, "directory_info"

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "directory_info"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 418
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onBindAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onBindAdapter()V

    .line 420
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 421
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->invalidateControlBars()V

    .line 422
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    .line 423
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onControlButtonClick]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 449
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onBackPressed()Z

    goto :goto_0

    .line 452
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->showOutputChoice()V

    goto :goto_0

    .line 455
    :sswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->refreshFolder()V

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onNotifyUpdating(Z)V

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    goto :goto_0

    .line 463
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->showOutputChoice()V

    goto :goto_0

    .line 466
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 445
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_2
        0xf -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_4
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 270
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 273
    :cond_0
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 795
    const-string v3, "SceneDlnaGridview"

    const-string v4, "[HtcAlbum][SceneDlnaGridview][onCreateFooterBar]  "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 798
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 799
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 800
    const/4 v3, 0x6

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x204021a

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 804
    const/16 v3, 0xf

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TvOut_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a00be

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 808
    const-string v2, "SceneDlnaGridview"

    const-string v3, "onCreateFooterBar"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-object v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 201
    const-string v4, "SceneDlnaGridview"

    const-string v5, "[HTCAlbum][SceneDlnaGridView][onCreateScene]"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v1

    .line 205
    .local v1, gridview:Lcom/htc/sunny2/widget/gridview/GridView;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 207
    .local v3, nTop:I
    const/4 v2, 0x0

    .line 208
    .local v2, nBottom:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-static {v0, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v3

    .line 221
    :goto_0
    invoke-virtual {v1, v7, v3, v7, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 222
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 224
    return-object v1

    .line 216
    :cond_0
    invoke-static {v0, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v3, v4, v5

    .line 219
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 264
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onEnableActionBarAppButton()Z
    .locals 3

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 341
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const/4 v1, 0x1

    .line 349
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return v1
.end method

.method public onEnableActionBarBackButton()Z
    .locals 3

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 314
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    const/4 v1, 0x1

    .line 322
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 230
    const-string v2, "SceneDlnaGridview"

    const-string v3, "[HTCAlbum][SceneDlnaGridview][onEnterScene]"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 233
    if-eqz p1, :cond_1

    .line 235
    const-string v2, "directory_info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    .local v0, importInfo:Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v2, :cond_0

    .line 239
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 245
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 247
    .local v1, nIndexCurrentDirectory:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    .line 248
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    .line 250
    const-string v2, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][onEnterScene]: Directories: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][onEnterScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v0           #importInfo:Ljava/util/ArrayList;
    .end local v1           #nIndexCurrentDirectory:I
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->defaultControlBarOn()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->createFooterBar(IZ)V

    goto :goto_0
.end method

.method protected onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 5
    .parameter "nIndex"
    .parameter "mediumInfo"

    .prologue
    .line 626
    const-string v2, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][onGoToActivityView]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 632
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 635
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 637
    .local v1, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    const-string v2, "2"

    iget-object v3, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToViewImage(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0

    .line 641
    :cond_2
    const-string v2, "4"

    iget-object v3, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToViewVideo(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0
.end method

.method public onGoToViewImage(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 17
    .parameter "nIndex"
    .parameter "dirInfo"
    .parameter "serviceDirectory"
    .parameter "mediumInfo"

    .prologue
    .line 651
    const-wide/16 v11, -0x1

    .local v11, startIndex:J
    const-wide/16 v5, -0x1

    .line 652
    .local v5, endIndex:J
    const/4 v3, 0x0

    .line 653
    .local v3, direction:I
    const/4 v10, 0x0

    .line 655
    .local v10, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v9

    .line 656
    .local v9, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, dmr:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .line 659
    .local v8, location:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 661
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v11

    .line 662
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    .line 663
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v3

    .line 666
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 668
    if-eqz v4, :cond_1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v14

    if-ne v13, v14, :cond_1

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v13, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    move/from16 v0, p1

    invoke-static {v14, v4, v0, v15, v13}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchMediaServerPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/TabPluginDLNA/DLNAServerInfo;Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V

    .line 700
    :goto_0
    return-void

    .line 678
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v2, Lcom/htc/album/Animation/animationSetGridview;

    .line 679
    .local v2, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 680
    const-string v13, "SceneDlnaGridview"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][SceneDlnaGridview][onGoToActivityView]1: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v14, "directory_info"

    invoke-virtual {v13, v14, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v14, "DLNA_CONTENT"

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 687
    .local v1, activity:Landroid/app/Activity;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 688
    .local v7, intent:Landroid/content/Intent;
    const-string v13, "goto_scene"

    const-string v14, "SceneDlnaFullscreen"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const-string v13, "dlna_bundle"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 691
    const-class v13, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;

    invoke-virtual {v7, v1, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 692
    const/high16 v13, 0x400

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 693
    invoke-virtual {v1, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 697
    .end local v1           #activity:Landroid/app/Activity;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v15, "SceneDlnaFullscreen"

    const/16 v16, 0x0

    invoke-interface/range {v13 .. v16}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onGoToViewVideo(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 13
    .parameter "nIndex"
    .parameter "dirInfo"
    .parameter "serviceDirectory"
    .parameter "mediumInfo"

    .prologue
    .line 706
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v12

    .line 707
    .local v12, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, dmr:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .line 710
    .local v11, location:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 712
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v3

    if-ne v1, v3, :cond_1

    .line 716
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v6, bundle:Landroid/os/Bundle;
    const-string v1, "folder_type"

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v1, "key_bucket_id"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v1, "key_folder_name"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v1, "location"

    invoke-virtual {v6, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v1, "directory_info"

    invoke-virtual {v6, v1, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 722
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 765
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 727
    .local v7, bunBrowse:Landroid/os/Bundle;
    const-string v1, "key_bucket_id"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v1, "key_folder_name"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v1, "location"

    invoke-virtual {v7, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v1, "directory_info"

    invoke-virtual {v7, v1, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 731
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v10, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 732
    .local v10, intent:Landroid/content/Intent;
    const/4 v8, 0x1

    .line 735
    .local v8, canPlay:Z
    :try_start_0
    const-string v1, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch Video Player "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "com.htc.video"

    const-string v3, "com.htc.video.ViewVideo"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "video/3gpp"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    const-string v1, "landscape"

    const/4 v3, 0x1

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    const-string v1, "launcher"

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const-string v1, "DLNA_SERVER"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v1, "DLNA_CONTENT"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v1, "DLNA_CONTENT_TITLE"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    const-string v1, "DLNA_CONTAINER"

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string v1, "Extras"

    invoke-virtual {v10, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 747
    const-string v1, "dmc_mode"

    const/4 v3, 0x1

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    const-string v1, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][LaunchVideo]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v10, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_1
    if-nez v8, :cond_0

    .line 761
    const-string v1, "com.htc.album"

    const-string v3, "com.htc.album.TabPluginDevice.ViewVideo"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v10, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 753
    :catch_0
    move-exception v9

    .line 755
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch Video Player failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public onItemClickMediumInfo(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 6
    .parameter "nIndex"
    .parameter "mediumInfo"

    .prologue
    const/4 v5, 0x1

    .line 592
    const-string v1, "SceneDlnaGridview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v1, "2"

    iget-object v2, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    iget-object v2, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, dmr:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "directmode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 605
    const-string v1, "SceneDlnaGridview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneDlnaGridview][onItemClickMediumInfo]index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x1398

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v5, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 622
    .end local v0           #dmr:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 614
    .restart local v0       #dmr:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0

    .line 619
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0
.end method

.method public onItemClickPageInfo(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)V
    .locals 4
    .parameter "pageInfo"

    .prologue
    const/4 v3, 0x1

    .line 550
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 552
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: already loading..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 556
    :cond_0
    const/4 v0, 0x0

    .line 558
    .local v0, gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_1

    .line 559
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v0           #gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    .line 561
    .restart local v0       #gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    :cond_1
    if-eqz v0, :cond_3

    .line 563
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->getLoadMoreState()Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 565
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: request loading processing..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->setLoadMoreState(Z)V

    .line 574
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 576
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onPageUp()V

    .line 577
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: start loading up..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_4
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v3, v1, :cond_5

    .line 581
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onPageDown()V

    .line 582
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: start loading down..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_5
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: page direction wrong..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onItemSelected(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 509
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v3, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 511
    .local v2, objItem:Lcom/htc/sunny2/IMediaData;
    if-nez v2, :cond_1

    .line 513
    const-string v3, "SceneDlnaGridview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaGridview][onItemSelected]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v2           #objItem:Lcom/htc/sunny2/IMediaData;
    :cond_0
    :goto_0
    return-void

    .line 519
    .restart local v2       #objItem:Lcom/htc/sunny2/IMediaData;
    :cond_1
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 520
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 521
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 522
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-static {v1, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->shouldPlayOnTV(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 524
    const-string v3, "SceneDlnaGridview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaGridview][onItemSelected]: launch DMC TV Mode. Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #context:Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 532
    :cond_2
    const-string v3, "SceneDlnaGridview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaGridview][onItemSelected]: No TV Mode. Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    instance-of v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v3, :cond_3

    .line 537
    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v2           #objItem:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onItemClickPageInfo(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)V

    goto :goto_0

    .line 539
    .restart local v2       #objItem:Lcom/htc/sunny2/IMediaData;
    :cond_3
    instance-of v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v3, :cond_0

    .line 541
    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v2           #objItem:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onItemClickMediumInfo(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 1091
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1100
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onMessage(Landroid/os/Message;)Z

    .line 1102
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1094
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->continueBrowseDown()V

    goto :goto_0

    .line 1091
    :pswitch_data_0
    .packed-switch 0x4e84
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 103
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onNewAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 106
    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 109
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setDataBundle(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onLoadData()V

    .line 112
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onNotifyUpdateComplete]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onNotifyUpdateComplete()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    .line 99
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 3
    .parameter "bIsLoading"

    .prologue
    .line 89
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onNotifyUpdating]bIsLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onNotifyUpdating(Z)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    .line 92
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 413
    :cond_0
    :goto_0
    return v1

    .line 395
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->refreshFolder()V

    .line 398
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onNotifyUpdating(Z)V

    .line 399
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    goto :goto_0

    .line 404
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->showOutputChoice()V

    goto :goto_0

    .line 407
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->trunOnOffTV(Z)V

    goto :goto_0

    .line 410
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->trunOnOffTV(Z)V

    goto :goto_0

    .line 391
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x10 -> :sswitch_1
        0x7f0a0161 -> :sswitch_2
        0x7f0a0162 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPageDown()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->browseNextPage()V

    goto :goto_0
.end method

.method public onPageUp()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->browsePreviousPage()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onPause]:pause..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onPause()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 183
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 184
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 353
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 354
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 355
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    const/4 v5, 0x6

    const v6, 0x204021a

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 359
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 360
    .local v1, context:Landroid/content/Context;
    const/16 v5, 0x10

    const v6, 0x7f0a0112

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 361
    .local v2, output:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Output_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 362
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 363
    invoke-static {v1}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 387
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #output:Landroid/view/MenuItem;
    :cond_1
    :goto_0
    return v4

    .line 370
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 373
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 374
    .restart local v1       #context:Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onResume]:resume..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onResume()V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 169
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    .line 171
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->isServiceActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->continueBrowseDown()V

    .line 175
    :cond_0
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 3
    .parameter "scrollState"

    .prologue
    .line 491
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onScrollStateChanged(I)V

    .line 493
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    if-eqz v0, :cond_2

    .line 498
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onScrollStateChange]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChildrenCount()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setScrollState(III)V

    goto :goto_0

    .line 503
    :cond_2
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onScrollStateChagne]: scene activity is push to background"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 433
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onSendToBackground]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 436
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 438
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 440
    :cond_0
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 125
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onSendToForeground]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneQuality(Z)V

    .line 132
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setHandler(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->SCENE_ID:I

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneType(I)V

    .line 135
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->isServiceActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->continueBrowseDown()V

    .line 146
    :goto_1
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onSendToForeground]: trigger refresh..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onStart]:start..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onStart()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 158
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    .line 160
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onStop]:stop..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onStop()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 192
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 194
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 196
    :cond_0
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1116
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->launchDMCforTVout(I)V

    .line 1117
    iput v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 1118
    return-void

    .line 1116
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onUnbindAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onUnbindAdapter()V

    .line 429
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 430
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    const-string v1, ""

    .line 295
    .local v1, szText:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 298
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 306
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-object v1
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, szText:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 281
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    .line 290
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v1

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x1

    return v0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "SceneDlnaGridview"

    return-object v0
.end method

.method public showOutputChoice()V
    .locals 6

    .prologue
    .line 897
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 898
    .local v0, pos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 899
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x1398

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 901
    return-void
.end method
