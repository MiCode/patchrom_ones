.class public Lcom/htc/album/picker/PickerSingleItemScene;
.super Lcom/htc/album/picker/PickerItemBaseScene;
.source "PickerSingleItemScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/htc/album/picker/PickerSingleItemScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerSingleItemScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/album/picker/PickerItemBaseScene;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 298
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/picker/PickerSingleItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/picker/PickerSingleItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/album/picker/PickerSingleItemScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getBottomMargin()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 270
    sget-object v2, Lcom/htc/album/picker/PickerSingleItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalGridViewTemplate][onActivityResult]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 272
    .local v0, activity:Landroid/app/Activity;
    packed-switch p1, :pswitch_data_0

    .line 294
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_1
    invoke-static {v0, p2, p3}, Lcom/htc/album/helper/MenuManager;->setFootprint(Landroid/app/Activity;ILandroid/content/Intent;)V

    goto :goto_0

    .line 278
    :pswitch_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 280
    if-eqz p3, :cond_1

    .line 282
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 283
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_1

    .line 285
    const-string v2, "folder_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    .end local v1           #collection:Lcom/htc/album/modules/collection/Collection;
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 290
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x7f01
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/album/processor/ImageProcessorManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 109
    :cond_0
    if-eqz v0, :cond_1

    .line 112
    .end local v0           #dialog:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerItemBaseScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, handled:Z
    iget-object v1, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/album/processor/ImageProcessorManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 48
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerItemBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, handled:Z
    iget-object v1, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1, p1}, Lcom/htc/album/processor/ImageProcessorManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 59
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerItemBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method protected onItemSelected(I)V
    .locals 14
    .parameter "index"

    .prologue
    const/16 v13, 0x7f01

    .line 142
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 143
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 144
    .local v8, sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    if-eqz v1, :cond_0

    if-nez v8, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v5

    .line 148
    .local v5, fragment:Landroid/app/Fragment;
    if-nez v5, :cond_2

    .line 150
    sget-object v10, Lcom/htc/album/picker/PickerSingleItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][LocalGridViewTemplate][onItemClicked_ExternalPicker]fragment is null"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 155
    .local v6, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v2, 0x0

    .line 156
    .local v2, bundleCaller:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 157
    .local v7, intentCaller:Landroid/content/Intent;
    const/4 v9, 0x0

    .line 159
    .local v9, szWantCrop:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 161
    const-string v10, "crop"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 164
    :cond_3
    sget-object v10, Lcom/htc/album/picker/PickerSingleItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][LocalGridViewTemplate][onItemClicked_ExternalPicker]: want crop: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "android.intent.action.PICK"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 170
    :cond_4
    if-eqz v2, :cond_5

    const-string v10, "crop"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, doCrop:Ljava/lang/String;
    :goto_1
    const-string v10, "cropType"

    invoke-virtual {v2, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 172
    .local v3, cropMode:I
    const/16 v10, 0x7f04

    if-ne v10, v3, :cond_6

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 174
    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v11

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/htc/album/helper/MenuManager;->setWallpaperWithPreview(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v3           #cropMode:I
    .end local v4           #doCrop:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 176
    .restart local v3       #cropMode:I
    .restart local v4       #doCrop:Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_7

    .line 178
    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v11

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12, v13, v2}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 183
    :cond_7
    invoke-virtual {p0, v5, v6}, Lcom/htc/album/picker/PickerSingleItemScene;->sendResultBack(Landroid/app/Fragment;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_0

    .line 186
    .end local v3           #cropMode:I
    .end local v4           #doCrop:Ljava/lang/String;
    :cond_8
    const-string v10, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 188
    invoke-virtual {p0, v5, v6}, Lcom/htc/album/picker/PickerSingleItemScene;->sendResultBack(Landroid/app/Fragment;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_0

    .line 192
    :cond_9
    sget-object v10, Lcom/htc/album/picker/PickerSingleItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v11, "onItemClicked_ExternalPicker ????????"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerItemBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    move-result-object v0

    .line 67
    .local v0, gridItemThumbnail:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    new-instance v1, Lcom/htc/album/picker/PickerSingleItemScene$1;

    invoke-direct {v1, p0}, Lcom/htc/album/picker/PickerSingleItemScene$1;-><init>(Lcom/htc/album/picker/PickerSingleItemScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 77
    return-object v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->release()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->onStop()V

    .line 94
    return-void
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerItemBaseScene;->onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    if-nez p1, :cond_1

    .line 406
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    .end local v0           #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 410
    .restart local v0       #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    :goto_0
    if-nez v0, :cond_2

    .line 421
    :cond_0
    :goto_1
    return-void

    .line 408
    :cond_1
    move-object v0, p1

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerSingleItemScene;->requestFooterBar()Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, paddingBottom:I
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/htc/album/picker/PickerSingleItemScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected sendResultBack(Landroid/app/Fragment;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 11
    .parameter "fragment"
    .parameter "image"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 200
    .local v3, intentCaller:Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v5, pickerResult:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v6, "drm_content"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    const-string v6, "disable_2d_conversion"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 204
    .local v4, noConversion:Z
    if-nez v4, :cond_3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 206
    const-string v6, "date_modified"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 207
    const-string v6, "_size"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 208
    const-string v6, "_data"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v7, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;

    invoke-direct {v7, p0, v10}, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerSingleItemScene;Lcom/htc/album/picker/PickerSingleItemScene$1;)V

    invoke-direct {v6, p1, v7}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    iput-object v6, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 210
    const-string v6, "force_2d_result"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 211
    .local v2, force2D:Z
    const-string v6, "do_share"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 212
    .local v1, doShare:Z
    const/16 v0, 0x68

    .line 213
    .local v0, dlgId:I
    if-eqz v1, :cond_1

    .line 215
    if-eqz v2, :cond_0

    const/16 v0, 0x69

    .line 225
    :goto_0
    iget-object v6, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v6, v0, v5}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    .line 250
    .end local v0           #dlgId:I
    .end local v1           #doShare:Z
    .end local v2           #force2D:Z
    :goto_1
    return-void

    .line 215
    .restart local v0       #dlgId:I
    .restart local v1       #doShare:Z
    .restart local v2       #force2D:Z
    :cond_0
    const/16 v0, 0x68

    goto :goto_0

    .line 221
    :cond_1
    if-eqz v2, :cond_2

    const/16 v0, 0x66

    :goto_2
    goto :goto_0

    :cond_2
    const/16 v0, 0x65

    goto :goto_2

    .line 227
    .end local v0           #dlgId:I
    .end local v1           #doShare:Z
    .end local v2           #force2D:Z
    :cond_3
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 229
    const-string v6, "date_modified"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 230
    const-string v6, "_size"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    const-string v6, "_data"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v7, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;

    invoke-direct {v7, p0, v10}, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerSingleItemScene;Lcom/htc/album/picker/PickerSingleItemScene$1;)V

    invoke-direct {v6, p1, v7}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    iput-object v6, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 233
    const-string v6, "do_share"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 234
    .restart local v1       #doShare:Z
    const/16 v0, 0x6a

    .line 235
    .restart local v0       #dlgId:I
    if-eqz v1, :cond_4

    .line 237
    const/16 v0, 0x6a

    .line 243
    :goto_3
    iget-object v6, p0, Lcom/htc/album/picker/PickerSingleItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v6, v0, v5}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    goto :goto_1

    .line 241
    :cond_4
    const/16 v0, 0x67

    goto :goto_3

    .line 247
    .end local v0           #dlgId:I
    .end local v1           #doShare:Z
    :cond_5
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 248
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
