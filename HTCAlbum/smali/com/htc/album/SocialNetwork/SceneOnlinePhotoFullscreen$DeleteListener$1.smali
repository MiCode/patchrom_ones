.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->onDeleteEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

.field final synthetic val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

.field final synthetic val$fIsDeleteAll:Z


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iput-object p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iput-boolean p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->val$fIsDeleteAll:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->mIsCanceled:Z
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->access$300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;)Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$402(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 150
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$502(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 151
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBackPressed()Z

    .line 167
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-nez v0, :cond_1

    .line 157
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "Adapter is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z
    invoke-static {v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$502(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 161
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->val$fIsDeleteAll:Z

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z
    invoke-static {v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$402(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 164
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$502(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    goto :goto_0
.end method
