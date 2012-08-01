.class public Lcom/htc/album/TabPluginDevice/ActivityMainLocal;
.super Lcom/htc/opensense2/widget/ActivityMainBase;
.source "ActivityMainLocal.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;


# static fields
.field private static final JUMP_ID_FOLDERVIEW:I = 0x1

.field private static final JUMP_ID_FULLSCREENVIEW:I = 0x3

.field private static final JUMP_ID_THUMBNAILVIEW:I = 0x2


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mJumpToScene:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;-><init>()V

    .line 23
    const-string v0, "ActivityMainLocal"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 8
    .parameter "object"

    .prologue
    const/4 v7, 0x0

    .line 287
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 288
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 290
    check-cast v0, Landroid/os/Bundle;

    .line 292
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "scene_identifier"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, szSceneIdentity:Ljava/lang/String;
    const-string v4, "scene_error_report"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 295
    .local v1, nCount:I
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    const-string v4, "ActivityMainLocal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ActivityMainLocal][onHandleSceneErrorReport]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v4, "SceneLocalFolder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    if-nez v1, :cond_0

    .line 304
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 305
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalError"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_2
    const-string v4, "SceneLocalPhotoThumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    :cond_3
    if-nez v1, :cond_0

    .line 313
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 314
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalFolder"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "caller"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return v1

    .line 74
    :cond_0
    iput v2, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 82
    const-string v3, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    .line 96
    :cond_2
    :goto_1
    iget v3, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    if-eq v3, v2, :cond_3

    .line 97
    invoke-virtual {p0, v1, v1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->enableSourceSwitch(ZZ)V

    :cond_3
    move v1, v2

    .line 104
    goto :goto_0

    .line 91
    :cond_4
    const-string v3, "com.htc.album.action.ALL_VIDEOS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    :cond_5
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    goto :goto_1
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public enableErrorScene()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 242
    const v0, 0x7f03002c

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 249
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public gotoErrorScene()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x0

    const-string v2, "SceneLocalError"

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public isInErrorScene()Z
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneLocalError"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v0

    .line 361
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    sparse-switch p1, :sswitch_data_0

    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/widget/ActivityMainBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 181
    :sswitch_0
    if-ne p2, v3, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 184
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 186
    .local v0, action:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 187
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_1
    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :goto_1
    const-string v3, "goFinish"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->fullscreenMode(Z)V

    .line 208
    invoke-virtual {p0, v4, v4}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->enableSourceSwitch(ZZ)V

    .line 210
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 212
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v3, v6, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_2
    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 199
    :cond_3
    const-string v3, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 218
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 220
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v3, "goFinish"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->fullscreenMode(Z)V

    .line 224
    invoke-virtual {p0, v4, v4}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->enableSourceSwitch(ZZ)V

    .line 226
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 228
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v3, v6, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x1390 -> :sswitch_0
        0x139b -> :sswitch_1
    .end sparse-switch
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 112
    const-string v1, "ActivityMainLocal"

    const-string v2, "[HTCAlbum][ActivityMainLocal][onBroadcastMediaConnected]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, actIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->finish()V

    .line 126
    :goto_0
    return v3

    .line 123
    :cond_0
    const-string v1, "media_connected"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 130
    const-string v1, "ActivityMainLocal"

    const-string v2, "[HTCAlbum][ActivityMainLocal][onBroadcastMediaDisconnected]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, actIntent:Landroid/content/Intent;
    const-string v1, "media_connected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 135
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    .line 38
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onCreateScene()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 147
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v0

    .line 149
    .local v0, bIsStorageReady:Z
    const-string v2, "ActivityMainLocal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainLocal][onCreateScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 151
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "in_pickermode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    if-nez v0, :cond_0

    .line 154
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalError"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 172
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 158
    :cond_0
    iget v2, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    packed-switch v2, :pswitch_data_0

    .line 168
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalFolder"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalPhotoFullscreen"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalPhotoThumbnail"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateScene(Landroid/content/Intent;)Z
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->setIntent(Landroid/content/Intent;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->onCreateScene()Z

    move-result v0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 329
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onMessage(Landroid/os/Message;)Z

    .line 332
    :goto_0
    return v0

    .line 326
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->onHandleSceneErrorReport(Ljava/lang/Object;)V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x4ea3
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 46
    const-string v0, "ActivityMainLocal"

    const-string v1, "[HTCAlbum][ActivityMainLocal][onNewIntent]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->finish()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onNewIntent(Landroid/content/Intent;)V

    .line 53
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "szSceneIdentity"
    .parameter "object"

    .prologue
    .line 338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "scene_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 342
    const-string v1, "scene_error_report"

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    :cond_0
    const/16 v1, 0x4ea3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->onPostMessage(ILjava/lang/Object;I)V

    .line 346
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    :cond_0
    const-string v3, "Render"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, dmrData:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .end local v1           #dmrData:Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->onStart()V

    .line 67
    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szSceneIdentity"

    .prologue
    .line 258
    const-string v1, "ActivityMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainLocal][sceneFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneLocalFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    .line 280
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v0

    .line 264
    :cond_0
    const-string v1, "SceneLocalPhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 268
    :cond_1
    const-string v1, "SceneLocalPhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 272
    :cond_2
    const-string v1, "SceneLocalError"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 278
    :cond_3
    const-string v1, "ActivityMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainLocal][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
