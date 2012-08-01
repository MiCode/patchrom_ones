.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1196
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/sunny2/view/SView;I)V
    .locals 18
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 1200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v14}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v14

    check-cast v14, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v1

    .line 1201
    .local v1, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v14}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v14

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 1203
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 1204
    .local v7, posX:I
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 1206
    .local v8, posY:I
    check-cast p1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v14

    iget-object v5, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 1207
    .local v5, me:Landroid/view/MotionEvent;
    if-eqz v5, :cond_0

    .line 1209
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v7, v14

    .line 1210
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v8, v14

    .line 1213
    :cond_0
    if-eqz v1, :cond_5

    const/4 v14, 0x1

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v15

    if-ne v14, v15, :cond_5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isHitIndicator(II)Z
    invoke-static {v15, v7, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;II)Z

    move-result v15

    if-ne v14, v15, :cond_5

    .line 1215
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v6, mediaIntent:Landroid/content/Intent;
    :try_start_0
    const-string v14, "dmc_mode"

    const/4 v15, 0x2

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;
    invoke-static {v14}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1227
    .local v2, bundleOnline:Landroid/os/Bundle;
    const-string v14, "service_name"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1228
    .local v10, strServiceName:Ljava/lang/String;
    const-string v14, "service_url"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1230
    .local v11, strServiceURL:Ljava/lang/String;
    if-eqz v10, :cond_1

    if-nez v11, :cond_2

    .line 1232
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v14}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v14

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 1233
    .local v9, sceneIntent:Landroid/content/Intent;
    const-string v14, "service_name"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1234
    .local v12, szService:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1235
    .local v13, szServiceUrl:Ljava/lang/String;
    const-string v14, "service_name"

    invoke-virtual {v2, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    sget-object v14, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1238
    sget-object v14, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v13, v14, v15

    .line 1239
    const-string v14, "tab_default"

    const v15, 0x7f0a002f

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    :goto_0
    const-string v14, "service_url"

    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    .end local v9           #sceneIntent:Landroid/content/Intent;
    .end local v12           #szService:Ljava/lang/String;
    .end local v13           #szServiceUrl:Ljava/lang/String;
    :cond_2
    const-string v14, "index_id"

    move/from16 v0, p2

    invoke-virtual {v2, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1255
    const-string v14, "dmc_bundle"

    invoke-virtual {v6, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1258
    const-string v14, "com.htc.video"

    const-string v15, "com.htc.video.ViewVideo"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getVideoUri()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "Video/mp4"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v14}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v14

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v6, v15}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1271
    .end local v2           #bundleOnline:Landroid/os/Bundle;
    .end local v6           #mediaIntent:Landroid/content/Intent;
    .end local v10           #strServiceName:Ljava/lang/String;
    .end local v11           #strServiceURL:Ljava/lang/String;
    :goto_1
    return-void

    .line 1241
    .restart local v2       #bundleOnline:Landroid/os/Bundle;
    .restart local v6       #mediaIntent:Landroid/content/Intent;
    .restart local v9       #sceneIntent:Landroid/content/Intent;
    .restart local v10       #strServiceName:Ljava/lang/String;
    .restart local v11       #strServiceURL:Ljava/lang/String;
    .restart local v12       #szService:Ljava/lang/String;
    .restart local v13       #szServiceUrl:Ljava/lang/String;
    :cond_3
    sget-object v14, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1243
    sget-object v14, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v13, v14, v15

    .line 1244
    const-string v14, "tab_default"

    const v15, 0x7f0a0030

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1262
    .end local v2           #bundleOnline:Landroid/os/Bundle;
    .end local v9           #sceneIntent:Landroid/content/Intent;
    .end local v10           #strServiceName:Ljava/lang/String;
    .end local v11           #strServiceURL:Ljava/lang/String;
    .end local v12           #szService:Ljava/lang/String;
    .end local v13           #szServiceUrl:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1264
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "SceneOnlinePhotoFullscreen"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Can not launch view player. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1248
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #bundleOnline:Landroid/os/Bundle;
    .restart local v9       #sceneIntent:Landroid/content/Intent;
    .restart local v10       #strServiceName:Ljava/lang/String;
    .restart local v11       #strServiceURL:Ljava/lang/String;
    .restart local v12       #szService:Ljava/lang/String;
    .restart local v13       #szServiceUrl:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v14, "service_url"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    goto :goto_0

    .line 1269
    .end local v2           #bundleOnline:Landroid/os/Bundle;
    .end local v6           #mediaIntent:Landroid/content/Intent;
    .end local v9           #sceneIntent:Landroid/content/Intent;
    .end local v10           #strServiceName:Ljava/lang/String;
    .end local v11           #strServiceURL:Ljava/lang/String;
    .end local v12           #szService:Ljava/lang/String;
    .end local v13           #szServiceUrl:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/16 v15, 0x139c

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1
.end method
