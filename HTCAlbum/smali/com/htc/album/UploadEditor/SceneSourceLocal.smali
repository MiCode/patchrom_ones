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

.field private mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

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

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "tags_description"

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->KEY_TAGS_DESCRIPTION:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 58
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 59
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    .line 61
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    .line 63
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mbCleanTop5FriendList:Z

    .line 66
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

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
    .line 656
    .local p2, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v0, 0x0

    .line 657
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 659
    .local v2, intent:Landroid/content/Intent;
    if-nez p0, :cond_0

    move-object v9, v2

    .line 740
    :goto_0
    return-object v9

    .line 662
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    move-object v9, v2

    .line 663
    goto :goto_0

    .line 665
    :cond_2
    const-string v9, "SceneSourceLocal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SceneSourceLocal][createTaggedPhotoIntent]: mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    .line 670
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v6, v9, v10

    .line 671
    .local v6, strServiceName:Ljava/lang/String;
    invoke-static {p0, v6, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_0

    .line 673
    .end local v6           #strServiceName:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x2

    if-ne p1, v9, :cond_4

    .line 675
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v6, v9, v10

    .line 676
    .restart local v6       #strServiceName:Ljava/lang/String;
    invoke-static {p0, v6, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_0

    .line 678
    .end local v6           #strServiceName:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x3

    if-eq p1, v9, :cond_5

    const/4 v9, 0x4

    if-eq p1, v9, :cond_5

    const/4 v9, 0x5

    if-ne p1, v9, :cond_d

    .line 683
    :cond_5
    const-string v7, ""

    .line 685
    .local v7, szPackageName:Ljava/lang/String;
    const/4 v9, 0x3

    if-ne v9, p1, :cond_7

    .line 686
    const-string v7, "com.htc.friendstream.sinaweiboplugin"

    .line 692
    :cond_6
    :goto_1
    invoke-static {p0, v7}, Lcom/htc/album/helper/MenuManager;->getIntentForUploadService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_9

    move-object v9, v2

    .line 693
    goto :goto_0

    .line 687
    :cond_7
    const/4 v9, 0x4

    if-ne v9, p1, :cond_8

    .line 688
    const-string v7, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_1

    .line 689
    :cond_8
    const/4 v9, 0x5

    if-ne v9, p1, :cond_6

    .line 690
    const-string v7, "com.htc.friendstream.renrenwebplugin"

    goto :goto_1

    .line 695
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v3, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v8, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 701
    .local v1, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v4, :cond_c

    .line 703
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 704
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v10, "com.htc.opensense.upload.TITLE"

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v10, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v10, "com.htc.opensense.upload.DESCRIPTION"

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v10, "com.htc.opensense.upload.URI"

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_b

    .line 701
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 716
    :cond_b
    const/4 v5, 0x0

    .local v5, nIndexTag:I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v5, :cond_a

    .line 718
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 719
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v9, "com.htc.opensense.upload.REFERENCE"

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 720
    const-string v10, "tag_display_name"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v10, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v10, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 723
    const-string v10, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 724
    const-string v10, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 725
    const-string v10, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v9

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 726
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 730
    .end local v5           #nIndexTag:I
    :cond_c
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 731
    const-string v9, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v9, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 733
    const-string v9, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v9, v2

    .line 735
    goto/16 :goto_0

    .line 739
    .end local v1           #faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .end local v3           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4           #nIndex:I
    .end local v7           #szPackageName:Ljava/lang/String;
    .end local v8           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_d
    const-string v9, "SceneSourceLocal"

    const-string v10, "[HTCAlbum][SceneSourceLocal][createTaggedPhotoIntent]: Shouldn\'t Run to here !"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v2

    .line 740
    goto/16 :goto_0
.end method

.method private getServiceName()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 224
    const-string v0, ""

    .line 226
    .local v0, szService:Ljava/lang/String;
    iget v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v4, v1, :cond_1

    .line 227
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 237
    :cond_0
    :goto_0
    const-string v1, "SceneSourceLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneSourceLocal][getServiceName]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-object v0

    .line 228
    :cond_1
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v1, v2, :cond_2

    .line 229
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v1, v4

    goto :goto_0

    .line 230
    :cond_2
    iget v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v5, v1, :cond_3

    .line 231
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    .line 232
    :cond_3
    iget v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v3, v1, :cond_4

    .line 233
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    .line 234
    :cond_4
    const/4 v1, 0x5

    iget v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v1, v2, :cond_0

    .line 235
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v1, v5

    goto :goto_0
.end method

.method private onPhotoDetailReady()V
    .locals 4

    .prologue
    .line 339
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 340
    .local v1, sceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v0, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 342
    .local v0, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->prepareBundleData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/UploadEditorViewManager;->setBundleData(Ljava/util/ArrayList;)V

    .line 343
    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->onShowUploadEditorViewManager()V

    .line 344
    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const-string v0, "AdapterLocalPhoto4UploadEditor"

    return-object v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 753
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

    .line 353
    if-nez p1, :cond_0

    .line 379
    :goto_0
    return-object v0

    .line 356
    :cond_0
    const-string v1, "facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    const-string v0, "com.htc.socialnetwork.facebook"

    goto :goto_0

    .line 360
    :cond_1
    const-string v1, "flickr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    const-string v0, "com.htc.socialnetwork.flickr"

    goto :goto_0

    .line 364
    :cond_2
    const-string v1, "Sina"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    .line 368
    :cond_3
    const-string v1, "Sina Weibo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    .line 372
    :cond_4
    const-string v1, "RenRen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    goto :goto_0

    .line 378
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
    .line 386
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iget v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    return v0
.end method

.method public isDataReady()Z
    .locals 1

    .prologue
    .line 188
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultDisplayScreenControl()Z
    .locals 1

    .prologue
    .line 758
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
    .line 161
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v3, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 166
    .local v3, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v5

    .line 167
    .local v5, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 169
    .local v4, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    if-eqz p3, :cond_0

    .line 175
    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v2

    .line 176
    .local v2, nCurrentIndex:I
    invoke-virtual {v4, v2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 177
    .local v1, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v6

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v7

    invoke-virtual {v5, v6, v7, p3}, Lcom/htc/album/addons/UploadEditorViewManager;->updateTags(IZLandroid/content/Intent;)V

    .line 179
    invoke-virtual {v5}, Lcom/htc/album/addons/UploadEditorViewManager;->forceInvalidateTagBtn()V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x88b9
        :pswitch_0
    .end packed-switch
.end method

.method public onClickTagButton()V
    .locals 15

    .prologue
    .line 244
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v6, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 245
    .local v6, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v6}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v11

    .line 246
    .local v11, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    invoke-interface {v6}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 247
    .local v7, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-interface {v6}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 249
    .local v4, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v4, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {v11}, Lcom/htc/album/addons/UploadEditorViewManager;->getBundleArray()Ljava/util/ArrayList;

    move-result-object v2

    .line 253
    .local v2, bundleArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v2, :cond_0

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, bundleTemp:Landroid/os/Bundle;
    invoke-interface {v6}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #bundleTemp:Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;

    .line 259
    .restart local v3       #bundleTemp:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v1, bundle:Landroid/os/Bundle;
    const-string v12, "clear_top5_frined_list"

    iget-boolean v13, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mbCleanTop5FriendList:Z

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    const-string v12, "service"

    invoke-direct {p0}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->getServiceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v10, tagPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagPhotoInfo;>;"
    new-instance v9, Lcom/htc/album/TagUtils/TagPhotoInfo;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v12, v13, v14}, Lcom/htc/album/TagUtils/TagPhotoInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v9, tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    const-string v12, "tags"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 277
    .local v8, tagArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {v9, v8}, Lcom/htc/album/TagUtils/TagPhotoInfo;->setTags(Ljava/util/ArrayList;)V

    .line 278
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v12, "photoList"

    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 284
    iget-object v12, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 285
    .local v0, activity:Landroid/app/Activity;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v5, intent:Landroid/content/Intent;
    const-class v12, Lcom/htc/album/addons/ActivityTagView;

    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 287
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mbCleanTop5FriendList:Z

    .line 292
    const v12, 0x88b9

    invoke-virtual {v0, v5, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 24

    .prologue
    .line 392
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v5, 0x0

    .line 394
    .local v5, bResult:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 395
    .local v16, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v20

    .line 396
    .local v20, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v17

    check-cast v17, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 397
    .local v17, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 399
    .local v11, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v11, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v5

    .line 402
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/addons/UploadEditorViewManager;->getBundleArray()Ljava/util/ArrayList;

    move-result-object v6

    .line 403
    .local v6, bundleArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v6, :cond_0

    .line 406
    const/4 v7, 0x0

    .line 407
    .local v7, bundleData:Landroid/os/Bundle;
    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #bundleData:Landroid/os/Bundle;
    check-cast v7, Landroid/os/Bundle;

    .line 408
    .restart local v7       #bundleData:Landroid/os/Bundle;
    const-string v21, "title"

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/addons/UploadEditorViewManager;->getTextTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v21, "description"

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/addons/UploadEditorViewManager;->getTextDescription()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 414
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

    .line 416
    .local v12, index:Landroid/os/Bundle;
    if-eqz v12, :cond_2

    .line 418
    new-instance v4, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v4}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 419
    .local v4, b:Lcom/htc/opensense/social/data/Medium;
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-direct {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>()V

    .line 422
    .local v2, a:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const-string v21, "title"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/htc/opensense/social/data/Medium;->setName(Ljava/lang/String;)V

    .line 423
    const-string v21, "description"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/htc/opensense/social/data/Medium;->setDescription(Ljava/lang/String;)V

    .line 424
    const-string v21, "uri"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/htc/opensense/social/data/Medium;->setUrl(Ljava/lang/String;)V

    .line 426
    const-string v21, "SceneSourceLocal"

    const-string v22, "KA>>> Upload "

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
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

    .line 428
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

    .line 429
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

    .line 431
    invoke-virtual {v2, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    .line 432
    const-string v21, "mimeType"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setMimeType(Ljava/lang/String;)V

    .line 434
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v18, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const-string v21, "tags"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 437
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

    .line 439
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

    .line 441
    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;-><init>(Ljava/lang/String;)V

    .line 442
    .local v8, c:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterX(F)V

    .line 443
    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterY(F)V

    .line 444
    const/high16 v21, 0x40a0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setWidth(F)V

    .line 445
    const/high16 v21, 0x40a0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setHeight(F)V

    .line 446
    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setText(Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 451
    .end local v8           #c:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v13           #indexTag:Lcom/htc/album/TagUtils/TagInfo;
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTags(Ljava/util/ArrayList;)V

    .line 453
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 457
    .end local v2           #a:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v4           #b:Lcom/htc/opensense/social/data/Medium;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #index:Landroid/os/Bundle;
    .end local v18           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .end local v19           #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_4
    const/4 v14, 0x0

    .line 458
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 460
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

    .line 462
    if-eqz v14, :cond_5

    .line 464
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

    .line 465
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0, v14}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onBackPressed()Z

    .line 472
    :goto_3
    const-string v21, "SceneSourceLocal"

    const-string v22, "[HTCAlbum][SceneSourceLocal][onConfirm]: End"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :cond_5
    const-string v21, "SceneSourceLocal"

    const-string v22, "[HTCAlbum][SceneSourceLocal][onConfirm]: fail"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCreate(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 2
    .parameter "sunnyScene"
    .parameter "sceneControl"

    .prologue
    .line 71
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iput-object p1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 72
    iput-object p2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 73
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 75
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 81
    :cond_0
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isCHS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 85
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V

    .line 96
    :cond_0
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 98
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 99
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 100
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 101
    return-void
.end method

.method public onDisplayEditorViewer(Z)V
    .locals 8
    .parameter "bShow"

    .prologue
    .line 194
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

    .line 195
    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 196
    .local v2, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v4

    .line 198
    .local v4, viewManager:Lcom/htc/album/addons/UploadEditorViewManager;
    if-nez v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    if-nez p1, :cond_2

    .line 203
    if-eqz v4, :cond_0

    .line 204
    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->hide()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v1

    .line 209
    .local v1, nCurrentIndex:I
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 211
    .local v3, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-virtual {v3, v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 213
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    if-ltz v5, :cond_3

    .line 214
    iget v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/album/addons/UploadEditorViewManager;->savePreviousEditorView(I)V

    .line 216
    :cond_3
    iput v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    .line 218
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/album/addons/UploadEditorViewManager;->prepareEditorView(IZ)V

    .line 219
    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->show()V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 146
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v0, 0x0

    .line 147
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 156
    :goto_0
    return v0

    .line 151
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->onPhotoDetailReady()V

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x4e94
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
    .locals 9
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v0, 0x0

    .line 110
    const/4 v4, 0x0

    .line 111
    .local v4, sceneAdapter:Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;
    new-instance v4, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;

    .end local v4           #sceneAdapter:Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6, p0}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;-><init>(Landroid/app/Activity;Lcom/htc/album/UploadEditor/ISceneSourcePlugin;)V

    .line 116
    .restart local v4       #sceneAdapter:Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isCHS()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 121
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "Launch_Service"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, szService:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 123
    .local v3, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    const-string v6, "SceneSourceLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneSourceLocal][onNewAdapter]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateUploadEditorPlugin()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, dataplugin:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 127
    const-string v6, "SceneSourceLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneSourceLocal][onNewAdapter]: Plugin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    iget-object v8, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createUploadEditorDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0           #dataplugin:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v5           #szService:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-virtual {v4, v6}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 138
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->setIntent(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {v4}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->onLoadData()V

    .line 141
    return-object v4

    .line 131
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SceneSourceLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneSourceLocal][onNewAdapter]: Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 88
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    .line 90
    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 349
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 10
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    const/4 v9, 0x0

    .line 298
    iput-object v9, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    .line 302
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 303
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "Launch_Service"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    .line 305
    const-string v6, "SceneSourceLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneSourceLocal][onSendToForeground]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v6, "facebook"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 307
    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    .line 318
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v5, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 319
    .local v5, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface {v5}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 320
    .local v0, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    const-string v6, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 321
    .local v3, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .line 322
    .local v4, mediaListCount:I
    const/4 v1, 0x0

    .line 323
    .local v1, adapterCount:I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v1

    .line 324
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 326
    :cond_2
    if-nez v1, :cond_7

    .line 327
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 336
    :goto_1
    return-void

    .line 308
    .end local v0           #adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .end local v1           #adapterCount:I
    .end local v3           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4           #mediaListCount:I
    .end local v5           #pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    :cond_3
    const-string v6, "flickr"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 309
    const/4 v6, 0x2

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    .line 310
    :cond_4
    const-string v6, "Sina"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 311
    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    .line 312
    :cond_5
    const-string v6, "Sina Weibo"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 313
    const/4 v6, 0x4

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    .line 314
    :cond_6
    const-string v6, "RenRen"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    .line 329
    .restart local v0       #adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .restart local v1       #adapterCount:I
    .restart local v3       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v4       #mediaListCount:I
    .restart local v5       #pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    :cond_7
    if-eq v4, v1, :cond_8

    .line 330
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 334
    :cond_8
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    const/16 v7, 0x4e94

    const/4 v8, 0x0

    invoke-interface {v6, v7, v9, v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1
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
    .line 482
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v5, bundleData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-object/from16 v26, v0

    check-cast v26, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    .line 485
    .local v26, pluginHost:Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;
    invoke-interface/range {v26 .. v26}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 486
    .local v4, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v22

    .line 493
    .local v22, nCount:I
    const/16 v23, 0x0

    .local v23, nIndex:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 495
    :try_start_0
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v36

    check-cast v36, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 496
    .local v36, uploadImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v9

    .line 497
    .local v9, dataPath:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 500
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

    .line 501
    .local v25, photoIndex:Ljava/lang/String;
    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v21

    .line 502
    .local v21, mimeType:Ljava/lang/String;
    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    .line 503
    .local v14, fileName:Ljava/lang/String;
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v35, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    const/16 v37, 0x2e

    move/from16 v0, v37

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 507
    .local v10, dotIdx:I
    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v10, v0, :cond_0

    .line 508
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v14, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 510
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v3, aBundle:Landroid/os/Bundle;
    const-string v37, "uri"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v37, "index"

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v37, "mimeType"

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v37, "title"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v37, "description"

    const-string v38, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v37, "uri"

    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 517
    const-string v37, "clear_top5_frined_list"

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    const-string v37, "tags"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 526
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

    .line 527
    .local v32, szTagInitInfo:Ljava/lang/String;
    const-string v37, "tags_description"

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
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

    .line 535
    .end local v9           #dataPath:Ljava/lang/String;
    .end local v36           #uploadImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v11

    .line 537
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

    .line 543
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v20, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v34, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v19

    .line 547
    .local v19, intent:Landroid/content/Intent;
    if-nez v19, :cond_4

    .line 549
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: no intent"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v34           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_3
    :goto_1
    return-object v5

    .line 553
    .restart local v19       #intent:Landroid/content/Intent;
    .restart local v20       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v34       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_4
    const-string v37, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 555
    if-nez v20, :cond_5

    .line 557
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: no media list"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 647
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v34           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catch_1
    move-exception v11

    .line 649
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: UploadLoader init NG !"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 561
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

    .line 563
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: Bundle photo information size is different with Current photo size !"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_6
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_b

    .line 569
    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: Prepare launch from HtcMediaUpload."

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
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

    .line 572
    const/16 v17, 0x0

    .local v17, index:I
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_b

    .line 574
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 575
    .local v6, bundleMedia:Landroid/os/Bundle;
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 577
    .local v7, bundlecurPhoto:Landroid/os/Bundle;
    if-eqz v6, :cond_7

    if-nez v7, :cond_8

    .line 572
    :cond_7
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 579
    :cond_8
    const-string v37, "com.htc.opensense.upload.TITLE"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 580
    .local v30, strTitle:Ljava/lang/String;
    const-string v37, "com.htc.opensense.upload.DESCRIPTION"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 582
    .local v28, strDescr:Ljava/lang/String;
    if-eqz v30, :cond_9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_9

    .line 583
    const-string v37, "title"

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_9
    if-eqz v28, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_a

    .line 586
    const-string v37, "description"

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
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

    .line 589
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

    .line 590
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

    .line 595
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

    .line 596
    if-eqz v34, :cond_d

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_d

    .line 598
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

    .line 600
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

    .line 602
    .local v17, index:Landroid/os/Bundle;
    if-eqz v17, :cond_c

    .line 604
    const-string v37, "com.htc.opensense.upload.REFERENCE"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 605
    .local v24, nReferenceID:I
    const-string v37, "com.htc.opensense.upload.USER_ID"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 606
    .local v31, strUserID:Ljava/lang/String;
    const-string v37, "tag_display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 607
    .local v29, strTagDisName:Ljava/lang/String;
    const-string v37, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    .line 608
    .local v12, fX:F
    const-string v37, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v13

    .line 610
    .local v13, fY:F
    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 612
    .restart local v7       #bundlecurPhoto:Landroid/os/Bundle;
    const/16 v35, 0x0

    .line 613
    .restart local v35       #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    const-string v37, "tags"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v35

    .line 614
    new-instance v33, Lcom/htc/album/TagUtils/TagInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/htc/album/TagUtils/TagInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    .line 615
    .local v33, tag:Lcom/htc/album/TagUtils/TagInfo;
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
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

    .line 623
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

    .line 625
    .local v18, indexBundle:Landroid/os/Bundle;
    if-eqz v18, :cond_e

    .line 627
    const/16 v35, 0x0

    .line 628
    .restart local v35       #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    const-string v37, "tags"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v35

    .line 630
    if-eqz v35, :cond_e

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_e

    .line 632
    const-string v27, ""

    .line 634
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

    .line 636
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

    .line 637
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

    .line 639
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

    .line 642
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
    .line 747
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLocal;,"Lcom/htc/album/UploadEditor/SceneSourceLocal<TVIEW;>;"
    iput-object p1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 748
    return-void
.end method
