.class public Lcom/htc/album/addons/SceneTransitionCacheHandler;
.super Ljava/lang/Object;
.source "SceneTransitionCacheHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;,
        Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SceneTransitionCacheHandler"


# instance fields
.field private mEnableCache:Z

.field private mHandler:Landroid/os/Handler;

.field private mLayoutListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

.field private mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

.field private mTransitionListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 3
    .parameter "sunnyScene"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mEnableCache:Z

    .line 33
    iput-object v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mTransitionListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;

    .line 34
    iput-object v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mLayoutListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

    .line 210
    new-instance v0, Lcom/htc/album/addons/SceneTransitionCacheHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/SceneTransitionCacheHandler$1;-><init>(Lcom/htc/album/addons/SceneTransitionCacheHandler;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object p1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 138
    new-instance v0, Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;

    iget-object v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-direct {v0, v1}, Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mTransitionListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;

    .line 139
    new-instance v0, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

    iget-object v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-direct {v0, v1, p0}, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/album/addons/SceneTransitionCacheHandler;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mLayoutListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

    .line 141
    const-string v0, "SceneTransitionCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneTransitionCacheHandler][SceneTransitionCacheHandler]: identify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "SceneTransitionCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneTransitionCacheHandler][SceneTransitionCacheHandler]: cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mEnableCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "SceneTransitionCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneTransitionCacheHandler][SceneTransitionCacheHandler]: host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x0

    .line 253
    iget-boolean v6, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mEnableCache:Z

    if-nez v6, :cond_0

    .line 274
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v6, "SceneTransitionCacheHandler"

    const-string v7, "[HTCAlbum][SceneTransitionCacheHandler][onConfigurationChanged]: "

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v6, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-static {v6}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->getScreenCacheHandler(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v5

    .line 266
    .local v5, screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    iget-object v6, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 267
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 268
    .local v1, met:Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 269
    .local v2, nHeight:I
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 271
    .local v3, nWidth:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    .local v4, rect:Landroid/graphics/Rect;
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mTransitionListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;

    invoke-interface {v5, v4, v6, v7}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->postConfigurationUpdate(Landroid/graphics/Rect;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAnimationEnd(I)V
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 181
    iget-boolean v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mEnableCache:Z

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v1, "SceneTransitionCacheHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneTransitionCacheHandler][onAnimationEnd]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->getScreenCacheHandler(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v0

    .line 188
    .local v0, screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 190
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mTransitionListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->postScreenTransitionUpdate(Landroid/graphics/Rect;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;)V

    goto :goto_0
.end method

.method public onCreateAnimation(I)Z
    .locals 12
    .parameter "nAnimState"

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, bResult:Z
    iget-boolean v9, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mEnableCache:Z

    if-nez v9, :cond_0

    move v2, v1

    .line 177
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 160
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    const-string v9, "SceneTransitionCacheHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SceneTransitionCacheHandler][onCreateAnimation]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v9, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-static {v9}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->getScreenCacheHandler(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v8

    .line 164
    .local v8, screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    const/4 v9, 0x3

    if-ne p1, v9, :cond_1

    .line 166
    iget-object v9, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 167
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 168
    .local v4, nLeft:I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 169
    .local v6, nTop:I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    .line 170
    .local v5, nRight:I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 172
    .local v3, nBottom:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4, v6, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    .local v7, rect:Landroid/graphics/Rect;
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mTransitionListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;

    invoke-interface {v8, v7, v9, v10}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->postScreenTransitionUpdate(Landroid/graphics/Rect;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;)V

    .line 174
    const/4 v1, 0x1

    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #nBottom:I
    .end local v4           #nLeft:I
    .end local v5           #nRight:I
    .end local v6           #nTop:I
    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_1
    move v2, v1

    .line 177
    .restart local v2       #bResult:I
    goto :goto_0
.end method

.method public onLayoutChanged(II)V
    .locals 1
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/addons/SceneTransitionCacheHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onLayoutChangedIRT(II)V
    .locals 1
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mLayoutListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mLayoutListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;->onLayoutChangedIRT(II)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 222
    return-void
.end method

.method public uninitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    const-string v0, "SceneTransitionCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneTransitionCacheHandler][uninitialize]: identify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "SceneTransitionCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneTransitionCacheHandler][uninitialize]: host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput-object v3, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mLayoutListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$screenLayoutListener;

    .line 150
    iput-object v3, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mTransitionListener:Lcom/htc/album/addons/SceneTransitionCacheHandler$transitionCacheListener;

    .line 151
    iput-object v3, p0, Lcom/htc/album/addons/SceneTransitionCacheHandler;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 152
    return-void
.end method
