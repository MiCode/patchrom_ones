.class public Lcom/htc/album/picker/PickerFolderScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.source "PickerFolderScene.java"


# static fields
.field protected static final HEADER_PICKER:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "PickerFolderScene"

.field private static mIsTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/picker/PickerFolderScene;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    return-void
.end method


# virtual methods
.method public actionBarMode()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mediaType"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 181
    const-string v1, "PickerFolderScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onActivityResult]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eq v4, p2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const/high16 v1, 0x30

    if-ne p1, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, activity:Landroid/app/Activity;
    if-eqz p3, :cond_2

    .line 191
    const-string v1, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v0, v4, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 198
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 196
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/htc/album/picker/PickerFolderScene;->mIsTablet:Z

    .line 49
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnterScene(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerFolderScene;->createControlBar(II)V

    .line 70
    return-void
.end method

.method public onItemSelected(I)V
    .locals 18
    .parameter "index"

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v15, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 107
    .local v4, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v4, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    const-string v15, "com.htc.HTCAlbum.DUMMY"

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v15}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 114
    .local v2, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v15}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v10

    .line 115
    .local v10, fragment:Lcom/htc/app/mf/MfFragment;
    check-cast v10, Lcom/htc/album/picker/PickerFolderMfFragment;

    .end local v10           #fragment:Lcom/htc/app/mf/MfFragment;
    invoke-virtual {v10}, Lcom/htc/album/picker/PickerFolderMfFragment;->getPickerMode()I

    move-result v12

    .line 117
    .local v12, mode:I
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 120
    .local v13, request:Landroid/content/Intent;
    const-string v15, "mediaType"

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 121
    .local v11, mediaType:I
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "MimeTypeFilter"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, filter:Ljava/lang/String;
    invoke-virtual {v4, v11}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSupportedMediaTypes(I)V

    .line 124
    invoke-virtual {v4, v6}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setFilter(Ljava/lang/String;)V

    .line 126
    invoke-static {v12}, Lcom/htc/album/picker/PickerConstants;->isFolderPicker(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 128
    const-string v15, "PickerFolderScene"

    const-string v16, "[onListItemClick] Folder Picker..."

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getQueyParams()Landroid/content/Intent;

    move-result-object v14

    .line 130
    .local v14, result:Landroid/content/Intent;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, folderType:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, bucketId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, folderName:Ljava/lang/String;
    const-string v15, "folder_type"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/4 v15, -0x1

    invoke-virtual {v2, v15, v14}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 138
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 142
    .end local v3           #bucketId:Ljava/lang/String;
    .end local v8           #folderName:Ljava/lang/String;
    .end local v9           #folderType:Ljava/lang/String;
    .end local v14           #result:Landroid/content/Intent;
    :cond_2
    const-string v15, "PickerFolderScene"

    const-string v16, "[onListItemClick] item picker..."

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, action:Ljava/lang/String;
    const-string v15, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 147
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 150
    :cond_3
    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v5, extras:Landroid/os/Bundle;
    const-string v15, "collection_info"

    invoke-virtual {v5, v15, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    invoke-virtual {v13, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 154
    const-string v15, "picker_mode"

    invoke-virtual {v13, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v15, "3d_image_index_list"

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->show3DVirtualFolder()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string v15, "external_picker"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const-class v15, Lcom/htc/album/picker/PickerItemActivity;

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 159
    .local v7, flags:I
    const-string v15, "PickerFolderScene"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[onItemSelected] Caller with flags, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/high16 v15, 0x200

    and-int/2addr v15, v7

    if-eqz v15, :cond_4

    .line 163
    const-string v15, "PickerFolderScene"

    const-string v16, "[onItemSelected] Folder finished by Intent.FLAG_ACTIVITY_FORWARD_RESULT"

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 169
    :cond_4
    const/high16 v15, 0x30

    invoke-virtual {v2, v13, v15}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 73
    const-string v0, "PickerFolderScene"

    const-string v1, "[HTCAlbum][PickerFolderScene][onNewAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onNewAdapter(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/picker/PickerFolderScene;->onEnableProgressLoading(Z)V

    .line 76
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->enableCacheUpdate(Z)V

    .line 77
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 4
    .parameter "bIsLoading"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onNotifyUpdating(Z)V

    .line 208
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 209
    .local v0, nLoadState:I
    const-string v1, "PickerFolderScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][PickerFolderScene][onNotifyUpdating]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-nez p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/PickerFolderScene;->onEnableProgressLoading(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 231
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 234
    sget-boolean v0, Lcom/htc/album/picker/PickerFolderScene;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 238
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onSceneLoading()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "PickerFolderScene"

    const-string v1, "[HTCAlbum][PickerFolderScene][onSceneLoading]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/picker/PickerFolderScene;->onEnableProgressLoading(Z)V

    .line 222
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
