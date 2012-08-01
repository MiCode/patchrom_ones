.class public Lcom/htc/album/picker/PickerGeoPhotoScene;
.super Lcom/htc/album/picker/PickerSingleItemScene;
.source "PickerGeoPhotoScene.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoPhotoScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/album/picker/PickerSingleItemScene;-><init>()V

    return-void
.end method


# virtual methods
.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLeftPadding()I
    .locals 4

    .prologue
    .line 62
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 64
    .local v1, nLeft:I
    return v1
.end method

.method protected getParamsPreparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;

    move-result-object v0

    return-object v0
.end method

.method protected getTopPadding()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->CARMODE_ACTION_BAR_HEIGHT_DIMEN:I

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 164
    return-void
.end method

.method protected onActionBarClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoPhotoScene;->onActionBarBackPressed()V

    .line 104
    return-void
.end method

.method public onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, bResult:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    .line 99
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 85
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 86
    .local v2, diffX:D
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v4, v6

    .line 90
    .local v4, diffY:D
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoPhotoScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->gestureRegion()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 92
    const/4 v6, 0x0

    cmpl-float v6, p4, v6

    if-lez v6, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoPhotoScene;->onActionBarBackPressed()V

    .line 96
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 99
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoPhotoScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/htc/album/picker/PickerSingleItemScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    .line 39
    .local v0, gv:Lcom/htc/sunny2/widget/gridview/GridView;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOrientation(I)V

    .line 41
    return-object v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarTouchEvent()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected onItemSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/picker/PickerGeoPhotoScene;->sendResultBack(Landroid/app/Fragment;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 177
    return-void
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 3
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 118
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;

    move-result-object v1

    .line 119
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;

    invoke-direct {v0, p1, p2, v1}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 120
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;
    new-instance v2, Lcom/htc/album/picker/PickerGeoPhotoScene$1;

    invoke-direct {v2, p0}, Lcom/htc/album/picker/PickerGeoPhotoScene$1;-><init>(Lcom/htc/album/picker/PickerGeoPhotoScene;)V

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 130
    return-object v0
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerSingleItemScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoPhotoScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->detach(Landroid/view/ViewGroup;)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoPhotoScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->attach(Landroid/view/ViewGroup;)V

    .line 73
    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    if-nez p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    .end local v0           #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 141
    .restart local v0       #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    :goto_0
    if-nez v0, :cond_1

    .line 149
    :goto_1
    return-void

    .line 139
    :cond_0
    move-object v0, p1

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 146
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 147
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "PickerGeoPhotoScene"

    return-object v0
.end method

.method protected sendResultBack(Landroid/app/Fragment;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 12
    .parameter "fragment"
    .parameter "image"

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x437f

    const/4 v9, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, actiivty:Landroid/app/Activity;
    if-eqz p2, :cond_2

    .line 186
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v7, pickerResult:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 190
    .local v1, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v4

    .line 191
    .local v4, latlng:[F
    aget v8, v4, v9

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_0

    aget v8, v4, v11

    cmpl-float v8, v8, v10

    if-nez v8, :cond_1

    .line 193
    :cond_0
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 194
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 209
    .end local v1           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #latlng:[F
    .end local v7           #pickerResult:Landroid/content/Intent;
    :goto_0
    return-void

    .line 198
    .restart local v1       #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #latlng:[F
    .restart local v7       #pickerResult:Landroid/content/Intent;
    :cond_1
    aget v8, v4, v9

    float-to-double v2, v8

    .line 199
    .local v2, latitude:D
    const-string v8, "latitude"

    invoke-virtual {v7, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 200
    aget v8, v4, v11

    float-to-double v5, v8

    .line 201
    .local v5, longitude:D
    const-string v8, "longitude"

    invoke-virtual {v7, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 202
    const/4 v8, -0x1

    invoke-virtual {v0, v8, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 208
    .end local v1           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #latitude:D
    .end local v4           #latlng:[F
    .end local v5           #longitude:D
    .end local v7           #pickerResult:Landroid/content/Intent;
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method
