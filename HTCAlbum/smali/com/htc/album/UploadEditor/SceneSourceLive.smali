.class public Lcom/htc/album/UploadEditor/SceneSourceLive;
.super Ljava/lang/Object;
.source "SceneSourceLive.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
.implements Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/UploadEditor/SceneSourceLive$FullscreenImageDownloadedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/album/UploadEditor/ISceneSourcePlugin;",
        "Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field protected mDataPluginController:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mDataReady:Z

.field private mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVIEW;"
        }
    .end annotation
.end field

.field private mPreviousIndex:I

.field private mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field private mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field private mService:Ljava/lang/String;

.field private mServiceSource:I

.field private mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

.field private mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

.field private mbCleanTop5FriendList:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "SceneSourceLive"

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->LOG_TAG:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 57
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 58
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 59
    iput-boolean v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataReady:Z

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mPreviousIndex:I

    .line 61
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mService:Ljava/lang/String;

    .line 62
    iput v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mServiceSource:I

    .line 63
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 64
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPluginController:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 67
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mbCleanTop5FriendList:Z

    .line 69
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/UploadEditor/SceneSourceLive;)Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    return-object v0
.end method

.method private onPhotoDetailReady()V
    .locals 4

    .prologue
    .line 300
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataReady:Z

    .line 302
    const-string v2, "SceneSourceLive"

    const-string v3, "[HTCAlbum][SceneSourceLive][onPhotoDetailReady]: ..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 304
    .local v1, sceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v0, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 306
    .local v0, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/SceneSourceLive;->prepareBundleData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/UploadEditorViewManager;->setBundleData(Ljava/util/ArrayList;)V

    .line 307
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;->onNotifyUpdating(Z)V

    .line 309
    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->onShowUploadEditorViewManager()V

    .line 310
    return-void
.end method

.method private onUICmdUploadEditor(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 252
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 262
    const-string v1, "SceneSourceLive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneSourceLive][onUICmdUploadEditor] unknow plug-in msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return v0

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNotifyUpdating(Z)V

    :goto_1
    move v0, v1

    .line 265
    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNotifyUpdating(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/SceneSourceLive;->onUpdateSuccess()V

    goto :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onUICmdUploadReq(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 239
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 241
    const-string v0, "SceneSourceLive"

    const-string v1, "[HTCAlbum][SceneSourceLive][onUICmdUploadReq] UICMD_UPLOAD_REQ: Upload data is null..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPluginController:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPluginController:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIHandlerMessage(Landroid/os/Message;)V

    .line 246
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preparePluginBundle(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    .local p1, bundleArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v14, prepareBundle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 527
    .local v7, dataSize:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_0
    if-ge v10, v7, :cond_2

    .line 529
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 530
    .local v6, bundle:Landroid/os/Bundle;
    const-string v17, "WrapperPhoto"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 532
    .local v5, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const-string v17, "photo_id"

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v17, "original_title"

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v17, "original_description"

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v13, oldFaceTagArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/FaceTag;>;"
    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v16

    .line 540
    .local v16, tagsArrayOriginal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 542
    .local v8, faceTagOriginal:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getID()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v18

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v19

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/album/UploadEditor/SceneSourceLive;->wrapPluginFaceTag(Ljava/lang/String;FFLjava/lang/String;)Lcom/htc/opensense/social/data/FaceTag;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 547
    .end local v8           #faceTagOriginal:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_0
    const-string v17, "original_tags"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 550
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v12, newFaceTagArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/FaceTag;>;"
    const-string v17, "tags"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 553
    .local v15, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/album/TagUtils/TagInfo;

    .line 555
    .local v11, indexTag:Lcom/htc/album/TagUtils/TagInfo;
    iget-object v0, v11, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v11, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    move/from16 v18, v0

    iget v0, v11, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move/from16 v19, v0

    iget-object v0, v11, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/album/UploadEditor/SceneSourceLive;->wrapPluginFaceTag(Ljava/lang/String;FFLjava/lang/String;)Lcom/htc/opensense/social/data/FaceTag;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 560
    .end local v11           #indexTag:Lcom/htc/album/TagUtils/TagInfo;
    :cond_1
    const-string v17, "tags"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 562
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 565
    .end local v5           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #newFaceTagArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/FaceTag;>;"
    .end local v13           #oldFaceTagArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/FaceTag;>;"
    .end local v15           #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    .end local v16           #tagsArrayOriginal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    :cond_2
    return-object v14
.end method

.method private wrapPluginFaceTag(Ljava/lang/String;FFLjava/lang/String;)Lcom/htc/opensense/social/data/FaceTag;
    .locals 3
    .parameter "tagID"
    .parameter "tagX"
    .parameter "tagY"
    .parameter "tagName"

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/high16 v2, 0x40a0

    .line 570
    new-instance v0, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/FaceTag;-><init>()V

    .line 572
    .local v0, faceTag:Lcom/htc/opensense/social/data/FaceTag;
    if-eqz v0, :cond_0

    .line 574
    new-instance v1, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v1, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/FaceTag;->setOwner(Lcom/htc/opensense/social/data/Profile;)V

    .line 575
    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/FaceTag;->setId(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, p2}, Lcom/htc/opensense/social/data/FaceTag;->setCenter_x(F)V

    .line 577
    invoke-virtual {v0, p3}, Lcom/htc/opensense/social/data/FaceTag;->setCenter_y(F)V

    .line 578
    invoke-virtual {v0, v2}, Lcom/htc/opensense/social/data/FaceTag;->setWidth(F)V

    .line 579
    invoke-virtual {v0, v2}, Lcom/htc/opensense/social/data/FaceTag;->setHeight(F)V

    .line 580
    invoke-virtual {v0, p4}, Lcom/htc/opensense/social/data/FaceTag;->setText(Ljava/lang/String;)V

    .line 583
    :cond_0
    return-object v0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const-string v0, "LivePhotoAdapter4Picker"

    return-object v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 628
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-object v0
.end method

.method public getServicePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "szService"

    .prologue
    .line 486
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceSource()I
    .locals 1

    .prologue
    .line 490
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    iget v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mServiceSource:I

    return v0
.end method

.method public isDataReady()Z
    .locals 1

    .prologue
    .line 296
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    iget-boolean v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataReady:Z

    return v0
.end method

.method public isDefaultDisplayScreenControl()Z
    .locals 1

    .prologue
    .line 633
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 271
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 275
    .local v1, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 276
    .local v2, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v4

    .line 277
    .local v4, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 280
    .local v3, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    if-eqz p3, :cond_0

    .line 285
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 286
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v5

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v6

    invoke-virtual {v4, v5, v6, p3}, Lcom/htc/album/addons/UploadEditorViewManager;->updateTags(IZLandroid/content/Intent;)V

    .line 288
    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->forceInvalidateTagBtn()V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x88b9
        :pswitch_0
    .end packed-switch
.end method

.method public onClickTagButton()V
    .locals 14

    .prologue
    .line 425
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    iget-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v4, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 427
    .local v4, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v4}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v10

    .line 428
    .local v10, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    iget-object v11, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 429
    .local v6, sceneBundle:Landroid/os/Bundle;
    invoke-interface {v4}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 432
    .local v5, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-interface {v4}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 434
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_0

    .line 436
    const-string v11, "SceneSourceLive"

    const-string v12, "[HTCAlum][ScenePhotoTagEditor][onClickTagButton]: images NG !"

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 441
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v2, bundle:Landroid/os/Bundle;
    const-string v11, "clear_top5_frined_list"

    iget-boolean v12, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mbCleanTop5FriendList:Z

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    const/4 v7, 0x0

    .line 446
    .local v7, szService:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 447
    const-string v11, "service_name"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 451
    :cond_1
    const-string v11, "service"

    invoke-virtual {v2, v11, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v9, tagPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagPhotoInfo;>;"
    new-instance v8, Lcom/htc/album/TagUtils/TagPhotoInfo;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v12

    const-string v13, "image/jpeg"

    invoke-direct {v8, v11, v12, v13}, Lcom/htc/album/TagUtils/TagPhotoInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .local v8, tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    const-string v11, "SceneSourceLive"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SceneSourceLive][onClickTagButton] TagBtn - URI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v11, "SceneSourceLive"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SceneSourceLive][onClickTagButton] TagBtn - Path: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v11, "SceneSourceLive"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SceneSourceLive][onClickTagButton] TagBtn - MType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-interface {v4}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/album/addons/UploadEditorViewManager;->getTags(I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/htc/album/TagUtils/TagPhotoInfo;->setTags(Ljava/util/ArrayList;)V

    .line 466
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const-string v11, "photoList"

    invoke-virtual {v2, v11, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 471
    iget-object v11, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 472
    .local v1, activity:Landroid/app/Activity;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 474
    .local v3, intent:Landroid/content/Intent;
    const-string v11, "upload_mode"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-class v11, Lcom/htc/album/addons/ActivityTagView;

    invoke-virtual {v3, v1, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 476
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 479
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mbCleanTop5FriendList:Z

    .line 481
    const v11, 0x88b9

    invoke-virtual {v1, v3, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onConfirm()Z
    .locals 7

    .prologue
    .line 494
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v0, 0x0

    .line 496
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 497
    .local v2, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v3

    .line 499
    .local v3, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    iget-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPluginController:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v4, :cond_0

    .line 501
    iget-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mService:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/htc/album/addons/UploadEditorViewManager;->getBundleArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->runEditUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 502
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    .line 506
    :cond_0
    invoke-virtual {v3}, Lcom/htc/album/addons/UploadEditorViewManager;->getBundleArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/album/UploadEditor/SceneSourceLive;->preparePluginBundle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 507
    .local v1, newBundle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v1, :cond_1

    .line 509
    iget-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    const v5, 0x10300003

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 510
    const/4 v0, 0x1

    goto :goto_0

    .line 514
    :cond_1
    const-string v4, "SceneSourceLive"

    const-string v5, "[HTCAlbum][SceneSourceLive][onConfirm] Plug-in bundle - NG"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 2
    .parameter "sunnyScene"
    .parameter "sceneControl"

    .prologue
    .line 82
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    iput-object p1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 83
    iput-object p2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 84
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 86
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 91
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V

    .line 104
    :cond_0
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 106
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 107
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 108
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 111
    return-void
.end method

.method public onDisplayEditorViewer(Z)V
    .locals 8
    .parameter "bShow"

    .prologue
    .line 389
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const-string v5, "SceneSourceLive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SceneSourceLive][onDisplayEditorViewer]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 391
    .local v2, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v4

    .line 393
    .local v4, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    if-nez v4, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    if-nez p1, :cond_2

    .line 398
    if-eqz v4, :cond_0

    .line 399
    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->hide()V

    goto :goto_0

    .line 403
    :cond_2
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v1

    .line 404
    .local v1, nCurrentIndex:I
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 406
    .local v3, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    iget-boolean v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataReady:Z

    if-eqz v5, :cond_0

    .line 408
    invoke-virtual {v3, v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 410
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mPreviousIndex:I

    if-ltz v5, :cond_3

    .line 411
    iget v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mPreviousIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/album/addons/UploadEditorViewManager;->savePreviousEditorView(I)V

    .line 413
    :cond_3
    iput v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mPreviousIndex:I

    .line 415
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/album/addons/UploadEditorViewManager;->prepareEditorView(IZ)V

    .line 416
    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->show()V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v2, 0x0

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 235
    :goto_0
    return v0

    .line 208
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/UploadEditor/SceneSourceLive;->onPhotoDetailReady()V

    .line 209
    const/4 v0, 0x1

    .line 211
    goto :goto_0

    .line 214
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v1, Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnableProgressLoading(Z)V

    .line 215
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x272d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 216
    const/4 v0, 0x1

    .line 218
    goto :goto_0

    .line 222
    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v1, Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnableProgressLoading(Z)V

    .line 223
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x272e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 224
    const/4 v0, 0x1

    .line 226
    goto :goto_0

    .line 228
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/htc/album/UploadEditor/SceneSourceLive;->onUICmdUploadReq(Landroid/os/Message;)Z

    move-result v0

    .line 229
    goto :goto_0

    .line 231
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/htc/album/UploadEditor/SceneSourceLive;->onUICmdUploadEditor(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e94 -> :sswitch_0
        0x4ee9 -> :sswitch_1
        0x4eea -> :sswitch_2
        0x4eeb -> :sswitch_2
        0x10300002 -> :sswitch_4
        0x10300003 -> :sswitch_3
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
    .locals 8
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v4, 0x0

    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, sceneAdapter:Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;
    new-instance v3, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;

    .end local v3           #sceneAdapter:Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;
    iget-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 125
    .restart local v3       #sceneAdapter:Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;
    iget-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-virtual {v3, v5}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 126
    invoke-virtual {v3, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->setDataRequest(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v3}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onCreate()V

    .line 128
    const/4 v5, 0x4

    new-instance v6, Lcom/htc/album/UploadEditor/SceneSourceLive$FullscreenImageDownloadedHandler;

    invoke-direct {v6, p0}, Lcom/htc/album/UploadEditor/SceneSourceLive$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/album/UploadEditor/SceneSourceLive;)V

    invoke-virtual {v3, v5, v4, v6}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 131
    const-string v5, "index_id"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->setPhotoPosition(I)V

    .line 136
    iget-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const-string v6, "service_name"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 141
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    const-string v5, "user_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, pid:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateUploadEditorPlugin()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 145
    const-string v5, "SceneSourceLive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SceneSourceLive][onNewAdapter]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v5, v0, v6, v1}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createUploadEditorDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 152
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFullPhotoListPlugin()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_1
    if-eqz v0, :cond_1

    .line 155
    iget-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v4, v0, v5, v1}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPluginController:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 156
    iget-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPluginController:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 157
    iget-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPluginController:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v3, v4}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    .line 160
    :cond_1
    invoke-virtual {v3}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onResume()V

    .line 164
    return-object v3

    .end local v0           #dataplugin:Ljava/lang/String;
    :cond_2
    move-object v0, v4

    .line 142
    goto :goto_0

    .restart local v0       #dataplugin:Ljava/lang/String;
    :cond_3
    move-object v0, v4

    .line 152
    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    .line 96
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    .line 98
    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 197
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    .line 199
    :cond_0
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    iput-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mService:Ljava/lang/String;

    .line 174
    if-eqz p1, :cond_0

    .line 175
    const-string v2, "service_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mService:Ljava/lang/String;

    .line 177
    :cond_0
    const-string v2, "SceneSourceLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneSourceLive][onSendToForeground]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mService:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mService:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 180
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mServiceSource:I

    .line 185
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v0, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 186
    .local v0, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 188
    .local v1, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    new-instance v3, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-direct {v3, v4, v2, p0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;-><init>(Landroid/app/Activity;Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;)V

    iput-object v3, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    .line 192
    check-cast v1, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;

    .end local v1           #sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    const/16 v2, 0x4e35

    invoke-virtual {v1, v2, v7, v5}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 193
    return-void

    .line 182
    .end local v0           #pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    :cond_2
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mServiceSource:I

    goto :goto_0
.end method

.method public onUpdateCancel()V
    .locals 0

    .prologue
    .line 599
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    return-void
.end method

.method public onUpdateError(I)V
    .locals 3
    .parameter "nErrorCode"

    .prologue
    .line 592
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 593
    return-void
.end method

.method public onUpdateSuccess()V
    .locals 5

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    const/4 v4, 0x1

    .line 605
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 606
    .local v0, nBundle:Landroid/os/Bundle;
    const-string v2, "scene_identifier"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, sPreviousScene:Ljava/lang/String;
    const-string v2, "SceneOnlinePhotoFullscreen"

    if-ne v2, v1, :cond_0

    .line 609
    const-string v2, "fullphoto_info_update"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 610
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneOnlinePhotoFullscreen"

    invoke-interface {v2, v0, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 616
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0
.end method

.method public prepareBundleData()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v7, bundleData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v12, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 316
    .local v12, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v12}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 317
    .local v4, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v10

    .line 319
    .local v10, nCount:I
    const/4 v3, 0x0

    .line 320
    .local v3, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v11, 0x0

    .local v11, nIndex:I
    :goto_0
    if-le v10, v11, :cond_e

    .line 322
    invoke-virtual {v4, v11}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .end local v3           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .restart local v3       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v3, :cond_0

    .line 320
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 325
    :cond_0
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .line 326
    .local v14, strIndex:Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 327
    .local v16, strTitle:Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    .line 328
    .local v13, strDescription:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v5, arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    .line 332
    .local v8, context:Landroid/content/Context;
    const v19, 0x7f0a009e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v11, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 334
    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v15

    .line 336
    .local v15, strPhotoName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorDescription()Z

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 338
    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v13

    .line 339
    if-nez v13, :cond_1

    .line 340
    if-eqz v15, :cond_4

    move-object v13, v15

    .line 348
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorTitle()Z

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 349
    if-eqz v15, :cond_9

    move-object/from16 v16, v15

    .line 356
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorTagButton()Z

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 358
    :cond_3
    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v6

    .line 359
    .local v6, arrayWrappTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 361
    .local v17, tag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    new-instance v18, Lcom/htc/album/TagUtils/TagInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v21

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v22

    invoke-direct/range {v18 .. v22}, Lcom/htc/album/TagUtils/TagInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    .line 362
    .local v18, tagItem:Lcom/htc/album/TagUtils/TagInfo;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 340
    .end local v6           #arrayWrappTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v17           #tag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v18           #tagItem:Lcom/htc/album/TagUtils/TagInfo;
    :cond_4
    const-string v13, ""

    goto :goto_2

    .line 342
    :cond_5
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mServiceSource:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 343
    if-eqz v15, :cond_6

    move-object v13, v15

    :goto_5
    goto :goto_2

    :cond_6
    const-string v13, ""

    goto :goto_5

    .line 344
    :cond_7
    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mServiceSource:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 345
    if-eqz v15, :cond_8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v13

    :goto_6
    goto/16 :goto_2

    :cond_8
    const-string v13, ""

    goto :goto_6

    .line 349
    :cond_9
    const-string v16, ""

    goto :goto_3

    .line 350
    :cond_a
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mServiceSource:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 351
    const-string v16, ""

    goto/16 :goto_3

    .line 352
    :cond_b
    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLive;->mServiceSource:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 353
    if-eqz v15, :cond_c

    move-object/from16 v16, v15

    :goto_7
    goto/16 :goto_3

    :cond_c
    const-string v16, ""

    goto :goto_7

    .line 367
    :cond_d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 368
    .local v2, aBundle:Landroid/os/Bundle;
    const-string v19, "index"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v19, "description"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v19, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v19, "tags"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 372
    const-string v19, "WrapperPhoto"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v19, "SceneSourceLive"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][SceneSourceLive][prepareBundleData]: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v19, "SceneSourceLive"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][SceneSourceLive][prepareBundleData]: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v19, "SceneSourceLive"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][SceneSourceLive][prepareBundleData]: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v19, "SceneSourceLive"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][SceneSourceLive][prepareBundleData]: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 383
    .end local v2           #aBundle:Landroid/os/Bundle;
    .end local v5           #arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    .end local v8           #context:Landroid/content/Context;
    .end local v13           #strDescription:Ljava/lang/String;
    .end local v14           #strIndex:Ljava/lang/String;
    .end local v15           #strPhotoName:Ljava/lang/String;
    .end local v16           #strTitle:Ljava/lang/String;
    :cond_e
    return-object v7
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 0
    .parameter "dataPlugin"

    .prologue
    .line 624
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>;"
    return-void
.end method
