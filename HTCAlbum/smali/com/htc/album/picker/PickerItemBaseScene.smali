.class public abstract Lcom/htc/album/picker/PickerItemBaseScene;
.super Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.source "PickerItemBaseScene.java"


# static fields
.field protected static final HEADER_PICKER:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static mIsTablet:Z


# instance fields
.field protected mPickerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/htc/album/picker/PickerItemBaseScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerItemBaseScene;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/picker/PickerItemBaseScene;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mPickerMode:I

    return-void
.end method

.method private restoreSelection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 150
    const/4 v4, 0x0

    .line 151
    .local v4, initPos:I
    const v2, 0x7fffffff

    .line 153
    .local v2, firstPosY:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "external_picker"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 157
    .local v3, fromExternal:Z
    if-nez v3, :cond_2

    .line 159
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 160
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v6, "photo_position"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 161
    if-gez v4, :cond_0

    .line 162
    const/4 v4, 0x0

    .line 165
    :cond_0
    const-string v6, "first_positionY"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 177
    .end local v3           #fromExternal:Z
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(IZI)V

    .line 178
    return-void

    .line 169
    .restart local v3       #fromExternal:Z
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 170
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->showLatest()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto :goto_0
.end method


# virtual methods
.method public actionBarMode()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method protected createCollection()Lcom/htc/album/modules/collection/Collection;
    .locals 4

    .prologue
    .line 43
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "picker_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mPickerMode:I

    .line 46
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->createCollection()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 47
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    iget v1, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mPickerMode:I

    invoke-static {v1}, Lcom/htc/album/picker/PickerConstants;->getMediaType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/Collection;->setSupportedMediaTypes(I)V

    .line 49
    return-object v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getBottomMargin()I
.end method

.method protected getLeftPadding()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected getRightPadding()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method protected getTabletTopPadding()I
    .locals 3

    .prologue
    .line 81
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v0

    .line 82
    .local v0, nTop:I
    return v0
.end method

.method protected getTopPadding()I
    .locals 5

    .prologue
    .line 87
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v1, v2, v3

    .line 90
    .local v1, nTop:I
    return v1
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onBindAdapter()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onBindAdapter()V

    .line 124
    invoke-direct {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->restoreSelection()V

    .line 125
    return-void
.end method

.method protected onCancel()V
    .locals 4

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/picker/PickerItemBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCancel] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 5

    .prologue
    .line 59
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    .line 60
    .local v0, gv:Lcom/htc/sunny2/widget/gridview/GridView;
    const/4 v1, 0x0

    .line 61
    .local v1, nTop:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getTabletTopPadding()I

    move-result v1

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getLeftPadding()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getRightPadding()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getBottomMargin()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 75
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    sput-boolean v2, Lcom/htc/album/picker/PickerItemBaseScene;->mIsTablet:Z

    .line 76
    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getTopPadding()I

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 113
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerItemBaseScene;->createControlBar(II)V

    .line 114
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    sget-object v0, Lcom/htc/album/picker/PickerItemBaseScene;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unhandler menu item id."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->onCancel()V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x20401ee
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerItemBaseScene;->markSelection(II)V

    .line 135
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPause()V

    .line 136
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const v1, 0x20401ee

    const/4 v2, 0x1

    .line 183
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 184
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 185
    sget-boolean v0, Lcom/htc/album/picker/PickerItemBaseScene;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 191
    :cond_0
    return v2
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerItemBaseScene;->markSelection(II)V

    .line 146
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onUnbindAdapter()V

    .line 147
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
