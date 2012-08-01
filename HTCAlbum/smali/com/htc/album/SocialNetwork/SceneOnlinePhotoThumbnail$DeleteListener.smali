.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mIsDeleteStart:Z

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2144
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2146
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsCanceled:Z

    .line 2147
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsDeleteStart:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2144
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2144
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsDeleteStart:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2144
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsCanceled:Z

    return v0
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 2

    .prologue
    .line 2196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsCanceled:Z

    .line 2197
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$1002(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)Z

    .line 2198
    return-void
.end method

.method public onDeleteEnd(Z)V
    .locals 5
    .parameter "isDeleteAll"

    .prologue
    .line 2160
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2161
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 2163
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][onDeleteEnd]: exit 1... "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    :goto_0
    return-void

    .line 2166
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 2167
    .local v1, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    move v2, p1

    .line 2168
    .local v2, fIsDeleteAll:Z
    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Z)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 1

    .prologue
    .line 2151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsDeleteStart:Z

    .line 2152
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 2

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    .line 2203
    return-void
.end method
