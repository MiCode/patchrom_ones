.class public Lcom/htc/album/UploadEditor/SceneSourceLocal;
.super Ljava/lang/Object;
.source "SceneSourceLocal.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePlugin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/album/UploadEditor/ISceneSourcePlugin;"
    }
.end annotation


# static fields
.field private static final KEY_TAG_DISPLAY_NAME:Ljava/lang/String; = "tag_display_name"

.field public static final LOG_TAG:Ljava/lang/String; = "SceneSourceLocal"


# instance fields
.field private final KEY_TAGS_DESCRIPTION:Ljava/lang/String;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVIEW;"
        }
    .end annotation
.end field

.field private mPreviousIndex:I

.field private mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field private mService:Ljava/lang/String;

.field private mServiceSource:I

.field private mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

.field private mbCleanTop5FriendList:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "tags_description"

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->KEY_TAGS_DESCRIPTION:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 54
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 55
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    .line 57
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    .line 59
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mbCleanTop5FriendList:Z

    return-void
.end method

.method private static createTaggedPhotoIntent(Landroid/content/Context;ILjava/util/List;)Landroid/content/Intent;
    .locals 12
    .parameter "context"
    .parameter "nMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p2, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v11, 0x1

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 579
    .local v2, intent:Landroid/content/Intent;
    if-nez p0, :cond_0

    move-object v8, v2

    .line 648
    :goto_0
    return-object v8

    .line 582
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    move-object v8, v2

    .line 583
    goto :goto_0

    .line 585
    :cond_2
    const-string v8, "SceneSourceLocal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][SceneSourceLocal][createTaggedPhotoIntent]: mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-ne p1, v11, :cond_3

    .line 590
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v6, v8, v9

    .line 591
    .local v6, strServiceName:Ljava/lang/String;
    invoke-static {p0, v6, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_0

    .line 593
    .end local v6           #strServiceName:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x2

    if-ne p1, v8, :cond_4

    .line 595
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v8, v11

    .line 596
    .restart local v6       #strServiceName:Ljava/lang/String;
    invoke-static {p0, v6, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_0

    .line 598
    .end local v6           #strServiceName:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x3

    if-ne p1, v8, :cond_9

    .line 600
    const-string v8, "com.htc.friendstream.sinaweiboplugin"

    invoke-static {p0, v8}, Lcom/htc/album/helper/MenuManager;->getIntentForUploadService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v8, v2

    .line 601
    goto :goto_0

    .line 603
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v3, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v7, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 609
    .local v1, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_8

    .line 611
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 612
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v9, "com.htc.opensense.upload.TITLE"

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v9, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v9, "com.htc.opensense.upload.DESCRIPTION"

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v9, "com.htc.opensense.upload.URI"

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_7

    .line 609
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 624
    :cond_7
    const/4 v5, 0x0

    .local v5, nIndexTag:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_6

    .line 626
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 627
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v8, "com.htc.opensense.upload.REFERENCE"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    const-string v9, "tag_display_name"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v9, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v9, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 631
    const-string v9, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 632
    const-string v9, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 633
    const-string v9, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 634
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 638
    .end local v5           #nIndexTag:I
    :cond_8
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    const-string v8, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string v8, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 641
    const-string v8, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v8, v2

    .line 643
    goto/16 :goto_0

    .line 647
    .end local v1           #faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .end local v3           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4           #nIndex:I
    .end local v7           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_9
    const-string v8, "SceneSourceLocal"

    const-string v9, "[HTCAlbum][SceneSourceLocal][createTaggedPhotoIntent]: Shouldn\'t Run to here !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v2

    .line 648
    goto/16 :goto_0
.end method

.method private onPhotoDetailReady()V
    .locals 4

    .prologue
    .line 259
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 260
    .local v1, sceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v0, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 262
    .local v0, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->prepareBundleData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/UploadEditorViewManager;->setBundleData(Ljava/util/ArrayList;)V

    .line 263
    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->onShowUploadEditorViewManager()V

    .line 264
    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const-string v0, "AdapterLocalPhoto4UploadEditor"

    return-object v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 661
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-object v0
.end method

.method public getServicePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "szService"

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v0, 0x0

    .line 273
    if-nez p1, :cond_0

    .line 299
    :goto_0
    return-object v0

    .line 276
    :cond_0
    const-string v1, "facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    const-string v0, "com.htc.socialnetwork.facebook"

    goto :goto_0

    .line 280
    :cond_1
    const-string v1, "flickr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    const-string v0, "com.htc.socialnetwork.flickr"

    goto :goto_0

    .line 284
    :cond_2
    const-string v1, "Sina"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    .line 288
    :cond_3
    const-string v1, "SinaWeiBo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    .line 292
    :cond_4
    const-string v1, "RenRen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    goto :goto_0

    .line 298
    :cond_5
    const-string v1, "SceneSourceLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneSourceLocal][getServicePackageName]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getServiceSource()I
    .locals 1

    .prologue
    .line 306
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iget v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    return v0
.end method

.method public isDataReady()Z
    .locals 1

    .prologue
    .line 137
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultDisplayScreenControl()Z
    .locals 1

    .prologue
    .line 666
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 110
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v3, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 115
    .local v3, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v5

    .line 116
    .local v5, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 118
    .local v4, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    if-eqz p3, :cond_0

    .line 124
    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v2

    .line 125
    .local v2, nCurrentIndex:I
    invoke-virtual {v4, v2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 126
    .local v1, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v6

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v7

    invoke-virtual {v5, v6, v7, p3}, Lcom/htc/album/addons/UploadEditorViewManager;->updateTags(IZLandroid/content/Intent;)V

    .line 128
    invoke-virtual {v5}, Lcom/htc/album/addons/UploadEditorViewManager;->forceInvalidateTagBtn()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x88b9
        :pswitch_0
    .end packed-switch
.end method

.method public onClickTagButton()V
    .locals 20

    .prologue
    .line 176
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v10, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 177
    .local v10, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v10}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v16

    .line 178
    .local v16, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    invoke-interface {v10}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v11

    check-cast v11, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 179
    .local v11, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-interface {v10}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 181
    .local v7, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v7, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/addons/UploadEditorViewManager;->getBundleArray()Ljava/util/ArrayList;

    move-result-object v5

    .line 185
    .local v5, bundleArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v5, :cond_0

    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, bundleTemp:Landroid/os/Bundle;
    invoke-interface {v10}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #bundleTemp:Landroid/os/Bundle;
    check-cast v6, Landroid/os/Bundle;

    .line 191
    .restart local v6       #bundleTemp:Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v4, bundle:Landroid/os/Bundle;
    const-string v17, "clear_top5_frined_list"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mbCleanTop5FriendList:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/4 v9, 0x1

    .line 198
    .local v9, isFacebook:Z
    :goto_1
    if-eqz v9, :cond_3

    sget-object v17, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v12, v17, v18

    .line 199
    .local v12, strServiceName:Ljava/lang/String;
    :goto_2
    const-string v17, "service"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v15, tagPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagPhotoInfo;>;"
    new-instance v14, Lcom/htc/album/TagUtils/TagPhotoInfo;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v17

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/htc/album/TagUtils/TagPhotoInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v14, tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    const-string v17, "tags"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 209
    .local v13, tagArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {v14, v13}, Lcom/htc/album/TagUtils/TagPhotoInfo;->setTags(Ljava/util/ArrayList;)V

    .line 210
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v17, "photoList"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 217
    .local v3, activity:Landroid/app/Activity;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v8, intent:Landroid/content/Intent;
    const-class v17, Lcom/htc/album/addons/ActivityTagView;

    move-object/from16 v0, v17

    invoke-virtual {v8, v3, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 219
    invoke-virtual {v8, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 222
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mbCleanTop5FriendList:Z

    .line 224
    const v17, 0x88b9

    move/from16 v0, v17

    invoke-virtual {v3, v8, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 197
    .end local v3           #activity:Landroid/app/Activity;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #isFacebook:Z
    .end local v12           #strServiceName:Ljava/lang/String;
    .end local v13           #tagArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    .end local v14           #tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    .end local v15           #tagPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagPhotoInfo;>;"
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 198
    .restart local v9       #isFacebook:Z
    :cond_3
    sget-object v17, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v12, v17, v18

    goto :goto_2
.end method

.method public onConfirm()Z
    .locals 24

    .prologue
    .line 312
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v5, 0x0

    .line 314
    .local v5, bResult:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 315
    .local v16, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v20

    .line 316
    .local v20, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v17

    check-cast v17, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 317
    .local v17, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 319
    .local v11, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v11, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v5

    .line 322
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/addons/UploadEditorViewManager;->getBundleArray()Ljava/util/ArrayList;

    move-result-object v6

    .line 323
    .local v6, bundleArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v6, :cond_0

    .line 326
    const/4 v7, 0x0

    .line 327
    .local v7, bundleData:Landroid/os/Bundle;
    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #bundleData:Landroid/os/Bundle;
    check-cast v7, Landroid/os/Bundle;

    .line 328
    .restart local v7       #bundleData:Landroid/os/Bundle;
    const-string v21, "title"

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/addons/UploadEditorViewManager;->getTextTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v21, "description"

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/addons/UploadEditorViewManager;->getTextDescription()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 336
    .local v12, index:Landroid/os/Bundle;
    if-eqz v12, :cond_2

    .line 338
    new-instance v4, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v4}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 339
    .local v4, b:Lcom/htc/opensense/social/data/Medium;
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-direct {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>()V

    .line 342
    .local v2, a:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const-string v21, "title"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/htc/opensense/social/data/Medium;->setName(Ljava/lang/String;)V

    .line 343
    const-string v21, "description"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/htc/opensense/social/data/Medium;->setDescription(Ljava/lang/String;)V

    .line 344
    const-string v21, "uri"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/htc/opensense/social/data/Medium;->setUrl(Ljava/lang/String;)V

    .line 346
    const-string v21, "SceneSourceLocal"

    const-string v22, "KA>>> Upload "

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v21, "SceneSourceLocal"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "KA>>> KEY_TITLE : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Medium;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v21, "SceneSourceLocal"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "KA>>> KEY_DESCRIPTION : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Medium;->getDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v21, "SceneSourceLocal"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "KA>>> KEY_URI : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Medium;->getUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    .line 352
    const-string v21, "mimeType"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setMimeType(Ljava/lang/String;)V

    .line 354
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v18, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const-string v21, "tags"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 357
    .local v19, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/album/TagUtils/TagInfo;

    .line 359
    .local v13, indexTag:Lcom/htc/album/TagUtils/TagInfo;
    const-string v21, "SceneSourceLocal"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "KA>>> Add Tag : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " X: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Y: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;-><init>(Ljava/lang/String;)V

    .line 362
    .local v8, c:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterX(F)V

    .line 363
    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterY(F)V

    .line 364
    const/high16 v21, 0x40a0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setWidth(F)V

    .line 365
    const/high16 v21, 0x40a0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setHeight(F)V

    .line 366
    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setText(Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 371
    .end local v8           #c:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v13           #indexTag:Lcom/htc/album/TagUtils/TagInfo;
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTags(Ljava/util/ArrayList;)V

    .line 373
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 377
    .end local v2           #a:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v4           #b:Lcom/htc/opensense/social/data/Medium;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #index:Landroid/os/Bundle;
    .end local v18           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .end local v19           #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_4
    const/4 v14, 0x0

    .line 378
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 380
    .local v3, activity:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->createTaggedPhotoIntent(Landroid/content/Context;ILjava/util/List;)Landroid/content/Intent;

    move-result-object v14

    .line 382
    if-eqz v14, :cond_5

    .line 384
    const-string v21, "SceneSourceLocal"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[HTCAlbum][SceneSourceLocal][onConfirm]: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0, v14}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onBackPressed()Z

    .line 392
    :goto_3
    const-string v21, "SceneSourceLocal"

    const-string v22, "[HTCAlbum][SceneSourceLocal][onConfirm]: End"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_5
    const-string v21, "SceneSourceLocal"

    const-string v22, "[HTCAlbum][SceneSourceLocal][onConfirm]: fail"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCreate(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 1
    .parameter "sunnyScene"
    .parameter "sceneControl"

    .prologue
    .line 65
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iput-object p1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 66
    iput-object p2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 67
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 73
    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 74
    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 75
    return-void
.end method

.method public onDisplayEditorViewer(Z)V
    .locals 8
    .parameter "bShow"

    .prologue
    .line 143
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const-string v5, "SceneSourceLocal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SceneSourceLocal][onDisplayEditorViewer]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 145
    .local v2, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v4

    .line 147
    .local v4, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    if-nez v4, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    if-nez p1, :cond_2

    .line 152
    if-eqz v4, :cond_0

    .line 153
    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->hide()V

    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v1

    .line 158
    .local v1, nCurrentIndex:I
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 160
    .local v3, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-virtual {v3, v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 162
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    if-ltz v5, :cond_3

    .line 163
    iget v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/album/addons/UploadEditorViewManager;->savePreviousEditorView(I)V

    .line 165
    :cond_3
    iput v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    .line 167
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/album/addons/UploadEditorViewManager;->prepareEditorView(IZ)V

    .line 168
    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->show()V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 95
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v0, 0x0

    .line 96
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 105
    :goto_0
    return v0

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->onPhotoDetailReady()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x4e94
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
    .locals 2
    .parameter "bundle"

    .prologue
    .line 84
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v0, 0x0

    .line 85
    .local v0, sceneAdapter:Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;
    new-instance v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;

    .end local v0           #sceneAdapter:Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;-><init>(Landroid/app/Activity;Lcom/htc/album/UploadEditor/ISceneSourcePlugin;)V

    .line 86
    .restart local v0       #sceneAdapter:Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-virtual {v0, v1}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 87
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->setIntent(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {v0}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->onLoadData()V

    .line 90
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 231
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 269
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v4, 0x0

    .line 236
    iput-object v4, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Launch_Service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    .line 243
    const-string v1, "SceneSourceLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneSourceLive][onSendToForeground]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "facebook"

    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    .line 255
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    const/16 v2, 0x4e94

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 256
    return-void

    .line 246
    :cond_1
    const-string v1, "flickr"

    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    .line 248
    :cond_2
    const-string v1, "Sina"

    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    .line 250
    :cond_3
    const-string v1, "SinaWeiBo"

    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    .line 252
    :cond_4
    const-string v1, "RenRen"

    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0
.end method

.method public prepareBundleData()Ljava/util/ArrayList;
    .locals 41
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
    .line 402
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v5, bundleData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-object/from16 v26, v0

    check-cast v26, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 405
    .local v26, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface/range {v26 .. v26}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 406
    .local v4, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v22

    .line 413
    .local v22, nCount:I
    const/16 v23, 0x0

    .local v23, nIndex:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 415
    :try_start_0
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v36

    check-cast v36, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 416
    .local v36, uploadImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v9

    .line 417
    .local v9, dataPath:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 420
    .local v8, context:Landroid/content/Context;
    const v37, 0x7f0a009e

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    add-int/lit8 v40, v23, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 421
    .local v25, photoIndex:Ljava/lang/String;
    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v21

    .line 422
    .local v21, mimeType:Ljava/lang/String;
    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    .line 423
    .local v14, fileName:Ljava/lang/String;
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v35, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    const/16 v37, 0x2e

    move/from16 v0, v37

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 427
    .local v10, dotIdx:I
    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v10, v0, :cond_0

    .line 428
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v14, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 430
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v3, aBundle:Landroid/os/Bundle;
    const-string v37, "uri"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v37, "index"

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v37, "mimeType"

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v37, "title"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v37, "description"

    const-string v38, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v37, "uri"

    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 437
    const-string v37, "clear_top5_frined_list"

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    const-string v37, "tags"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0a005c

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 447
    .local v32, szTagInitInfo:Ljava/lang/String;
    const-string v37, "tags_description"

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v3           #aBundle:Landroid/os/Bundle;
    .end local v8           #context:Landroid/content/Context;
    .end local v10           #dotIdx:I
    .end local v14           #fileName:Ljava/lang/String;
    .end local v21           #mimeType:Ljava/lang/String;
    .end local v25           #photoIndex:Ljava/lang/String;
    .end local v32           #szTagInitInfo:Ljava/lang/String;
    .end local v35           #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 455
    .end local v9           #dataPath:Ljava/lang/String;
    .end local v36           #uploadImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v11

    .line 457
    .local v11, e:Ljava/lang/Exception;
    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v20, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v34, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v19

    .line 467
    .local v19, intent:Landroid/content/Intent;
    if-nez v19, :cond_4

    .line 469
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: no intent"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v34           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_3
    :goto_1
    return-object v5

    .line 473
    .restart local v19       #intent:Landroid/content/Intent;
    .restart local v20       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v34       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_4
    const-string v37, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 475
    if-nez v20, :cond_5

    .line 477
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: no media list"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 567
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v34           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catch_1
    move-exception v11

    .line 569
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: UploadLoader init NG !"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 481
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v19       #intent:Landroid/content/Intent;
    .restart local v20       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v34       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_5
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v37

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_6

    .line 483
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: Bundle photo information size is different with Current photo size !"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_6
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_b

    .line 489
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: Prepare launch from HtcMediaUpload."

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: Get mediaList Size : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/16 v17, 0x0

    .local v17, index:I
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_b

    .line 494
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 495
    .local v6, bundleMedia:Landroid/os/Bundle;
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 497
    .local v7, bundlecurPhoto:Landroid/os/Bundle;
    if-eqz v6, :cond_7

    if-nez v7, :cond_8

    .line 492
    :cond_7
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 499
    :cond_8
    const-string v37, "com.htc.opensense.upload.TITLE"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 500
    .local v30, strTitle:Ljava/lang/String;
    const-string v37, "com.htc.opensense.upload.DESCRIPTION"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 502
    .local v28, strDescr:Ljava/lang/String;
    if-eqz v30, :cond_9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_9

    .line 503
    const-string v37, "title"

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_9
    if-eqz v28, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_a

    .line 506
    const-string v37, "description"

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_a
    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: mediaList["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "]:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: KEY_IMAGE_TITLE: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: KEY_IMAGE_DESCRIPTION: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 515
    .end local v6           #bundleMedia:Landroid/os/Bundle;
    .end local v7           #bundlecurPhoto:Landroid/os/Bundle;
    .end local v17           #index:I
    .end local v28           #strDescr:Ljava/lang/String;
    .end local v30           #strTitle:Ljava/lang/String;
    :cond_b
    const-string v37, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v34

    .line 516
    if-eqz v34, :cond_d

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_d

    .line 518
    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][onCreate]: Get tagList Size : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    .line 522
    .local v17, index:Landroid/os/Bundle;
    if-eqz v17, :cond_c

    .line 524
    const-string v37, "com.htc.opensense.upload.REFERENCE"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 525
    .local v24, nReferenceID:I
    const-string v37, "com.htc.opensense.upload.USER_ID"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 526
    .local v31, strUserID:Ljava/lang/String;
    const-string v37, "tag_display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 527
    .local v29, strTagDisName:Ljava/lang/String;
    const-string v37, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    .line 528
    .local v12, fX:F
    const-string v37, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v13

    .line 530
    .local v13, fY:F
    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 532
    .restart local v7       #bundlecurPhoto:Landroid/os/Bundle;
    const/16 v35, 0x0

    .line 533
    .restart local v35       #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    const-string v37, "tags"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v35

    .line 534
    new-instance v33, Lcom/htc/album/TagUtils/TagInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/htc/album/TagUtils/TagInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    .line 535
    .local v33, tag:Lcom/htc/album/TagUtils/TagInfo;
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][onCreate]: Get Tag ["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "] : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " X: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " Y: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 543
    .end local v7           #bundlecurPhoto:Landroid/os/Bundle;
    .end local v12           #fX:F
    .end local v13           #fY:F
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #index:Landroid/os/Bundle;
    .end local v24           #nReferenceID:I
    .end local v29           #strTagDisName:Ljava/lang/String;
    .end local v31           #strUserID:Ljava/lang/String;
    .end local v33           #tag:Lcom/htc/album/TagUtils/TagInfo;
    .end local v35           #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_e
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Bundle;

    .line 545
    .local v18, indexBundle:Landroid/os/Bundle;
    if-eqz v18, :cond_e

    .line 547
    const/16 v35, 0x0

    .line 548
    .restart local v35       #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    const-string v37, "tags"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v35

    .line 550
    if-eqz v35, :cond_e

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_e

    .line 552
    const-string v27, ""

    .line 554
    .local v27, strBtnTag:Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/album/TagUtils/TagInfo;

    .line 556
    .local v17, index:Lcom/htc/album/TagUtils/TagInfo;
    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v37

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    .line 557
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_6

    .line 559
    :cond_f
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_6

    .line 562
    .end local v17           #index:Lcom/htc/album/TagUtils/TagInfo;
    :cond_10
    const-string v37, "tags_description"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 0
    .parameter "dataPlugin"

    .prologue
    .line 655
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iput-object p1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 656
    return-void
.end method
