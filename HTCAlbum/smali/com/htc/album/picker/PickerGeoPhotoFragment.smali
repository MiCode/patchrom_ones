.class public Lcom/htc/album/picker/PickerGeoPhotoFragment;
.super Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.source "PickerGeoPhotoFragment.java"


# static fields
.field static final CLS_NAME_GEO_ERROR:Ljava/lang/String; = "PickerGeoErrorScene"

.field static final CLS_NAME_GEO_PICKER:Ljava/lang/String; = "PickerGeoPhotoScene"

.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoPhotoFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "caller"

    .prologue
    .line 25
    const-string v0, "com.htc.album.ACTION_PICK_GEO_PHOTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreateScene()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 32
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v0

    .line 34
    .local v0, bIsStorageReady:Z
    if-nez v0, :cond_0

    .line 36
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v3, 0x0

    const-string v4, "PickerGeoErrorScene"

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 42
    :goto_0
    return v5

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoPhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "external_picker"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "PickerGeoPhotoScene"

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 7
    .parameter "object"

    .prologue
    .line 63
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 64
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 66
    const-string v4, "PickerGeoPhotoFragment"

    const-string v5, "[HTCAlbum][PickerGeoPhotoFragment][onHandleSceneErrorReport]: exit 1"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 69
    check-cast v0, Landroid/os/Bundle;

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "scene_identifier"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, szSceneIdentity:Ljava/lang/String;
    const-string v4, "scene_error_report"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, nCount:I
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 76
    :cond_2
    const-string v4, "PickerGeoPhotoFragment"

    const-string v5, "[HTCAlbum][PickerGeoPhotoFragment][onHandleSceneErrorReport]: exit 2"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    const-string v4, "PickerGeoPhotoScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    if-nez v1, :cond_0

    .line 85
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 86
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v5, 0x0

    const-string v6, "PickerGeoErrorScene"

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 1
    .parameter "szSceneIdentity"

    .prologue
    .line 49
    const-string v0, "PickerGeoErrorScene"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/htc/album/picker/PickerGeoErrorScene;

    invoke-direct {v0}, Lcom/htc/album/picker/PickerGeoErrorScene;-><init>()V

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/album/picker/PickerGeoPhotoScene;

    invoke-direct {v0}, Lcom/htc/album/picker/PickerGeoPhotoScene;-><init>()V

    goto :goto_0
.end method
