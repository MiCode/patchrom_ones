.class public Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;
.super Ljava/lang/Object;
.source "SunnyContainerView.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sceneChangeListener"
.end annotation


# instance fields
.field private mIsCancelled:Z

.field private mIsChanging:Z

.field final synthetic this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1252
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    .line 1255
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public isSceneChangeCancelled()Z
    .locals 1

    .prologue
    .line 1437
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsCancelled:Z

    return v0
.end method

.method public isSceneChanging()Z
    .locals 1

    .prologue
    .line 1433
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    return v0
.end method

.method public onSceneChangeBegin()V
    .locals 4

    .prologue
    .line 1259
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onSceneChangeBegin]:..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;
    invoke-static {v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v2, :cond_0

    .line 1263
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v2, v2, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1264
    .local v1, sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v2, v2, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 1265
    .local v0, sceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v0, :cond_1

    .line 1267
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;
    invoke-static {v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    .line 1282
    .end local v0           #sceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .end local v1           #sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->enableSunnyEnvTouchEvent(Z)V

    .line 1283
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    .line 1284
    return-void

    .line 1269
    .restart local v0       #sceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1274
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1275
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareEnterFullscreenMode()V

    .line 1278
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;
    invoke-static {v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    goto :goto_0

    .line 1277
    :cond_2
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareLeaveFullscreenMode()V

    goto :goto_1
.end method

.method public onSceneChangeCancelled()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1287
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][onSceneChangeCancelled]:... "

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iput-boolean v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsCancelled:Z

    .line 1289
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1290
    .local v1, sceneForeground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 1296
    .local v0, sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1301
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    .line 1302
    .local v2, szIdentityScene:Ljava/lang/String;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCancelNewAdapter()V

    .line 1303
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3, v2, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    .line 1304
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][onSceneChangeCancelled]: removed scene: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v5, v5, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    .end local v2           #szIdentityScene:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 1311
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 1312
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 1313
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->refreshRenderOrder(Ljava/lang/String;)V

    .line 1323
    :goto_0
    iput-boolean v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    .line 1324
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->enableSunnyEnvTouchEvent(Z)V

    .line 1325
    return-void

    .line 1317
    :cond_1
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][onSceneChangeCancelled]: finish this... "

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v8, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 1320
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v8, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 1321
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V
    invoke-static {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    goto :goto_0
.end method

.method public onSceneChangeEnd(I)V
    .locals 12
    .parameter "nSceneChangeType"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1329
    const-string v6, "SunnyContainerView"

    const-string v7, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]:..."

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    .line 1332
    .local v3, sceneForeground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 1334
    .local v2, sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v6, 0x2

    if-ne v6, p1, :cond_1

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v10, v6, :cond_1

    .line 1337
    const-string v6, "SunnyContainerView"

    const-string v7, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: remove last scene"

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1341
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    .line 1342
    .local v5, szIdentityScene:Ljava/lang/String;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    .line 1344
    .local v4, szIdentityAdapter:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    invoke-static {v6, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1346
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    .line 1347
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapter unloaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :cond_0
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapters: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v5, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    .line 1354
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scene removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scenes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v11, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 1358
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v11, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 1360
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    .line 1425
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .end local v4           #szIdentityAdapter:Ljava/lang/String;
    .end local v5           #szIdentityScene:Ljava/lang/String;
    :goto_0
    iput-boolean v9, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    .line 1426
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v10}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->enableSunnyEnvTouchEvent(Z)V

    .line 1427
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->invalidateOptionsMenu()V

    .line 1428
    return-void

    .line 1364
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 1365
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 1367
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v6, :cond_7

    .line 1370
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v6

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1372
    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1373
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterFullscreenMode()V

    .line 1376
    :cond_3
    if-eqz v2, :cond_7

    .line 1378
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v6

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v7

    if-lt v6, v7, :cond_4

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isSceneForceClose()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1385
    :cond_4
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    .line 1386
    .restart local v5       #szIdentityScene:Ljava/lang/String;
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    .line 1387
    .restart local v4       #szIdentityAdapter:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    invoke-static {v6, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1389
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    .line 1390
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapter unloaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :cond_5
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapters: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v5, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    .line 1398
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scene removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scenes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isSceneForceClose()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1402
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v0, :cond_7

    .line 1404
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1405
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_6

    .line 1407
    invoke-interface {v1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setId(I)V

    .line 1408
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1416
    .end local v0           #nIndex:I
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .end local v4           #szIdentityAdapter:Ljava/lang/String;
    .end local v5           #szIdentityScene:Ljava/lang/String;
    :cond_7
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onTriggerErrorReport()V

    .line 1418
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableContextMenu()Z

    move-result v7

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerForContextMenu(Z)V
    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$300(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Z)V

    .line 1420
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableBroadcastReceiver()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1421
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerBroadcastReceiver()V

    goto/16 :goto_0

    .line 1423
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->unregisterBroadcastReceiver()V

    goto/16 :goto_0
.end method
