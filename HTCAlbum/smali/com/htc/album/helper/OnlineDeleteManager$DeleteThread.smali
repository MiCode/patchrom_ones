.class Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;
.super Ljava/lang/Thread;
.source "OnlineDeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/OnlineDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteThread"
.end annotation


# instance fields
.field private c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

.field private cancelDelete:Z

.field private isDeleteAll:Z

.field private mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

.field private mFragment:Landroid/app/Fragment;

.field private mPickerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/helper/OnlineDeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager;Landroid/app/Fragment;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "fragment"
    .parameter "adapter"
    .parameter "callback"
    .parameter
    .parameter "deleteAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Lcom/htc/album/SocialNetwork/LivePhotoAdapter;",
            "Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 265
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 257
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 258
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mFragment:Landroid/app/Fragment;

    .line 259
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 260
    iput-boolean v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    .line 261
    iput-boolean v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isDeleteAll:Z

    .line 262
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mPickerList:Ljava/util/List;

    .line 266
    iput-object p3, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 267
    iput-object p2, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mFragment:Landroid/app/Fragment;

    .line 268
    iput-object p4, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 269
    iput-object p5, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mPickerList:Ljava/util/List;

    .line 270
    iput-boolean p6, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isDeleteAll:Z

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->setPriority(I)V

    .line 273
    const-string v0, "OnlineDeleter"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->setName(Ljava/lang/String;)V

    .line 274
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 333
    const-string v0, "OnlineDeleteManager"

    const-string v1, "[HTCAlbum][OnlineDeleteManager][DeleteThread] Cancel delete now..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->setPriority(I)V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isDeleteAll:Z

    .line 339
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    invoke-interface {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    .line 340
    :cond_0
    return-void
.end method

.method public finished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 345
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$2;

    invoke-direct {v1, p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$2;-><init>(Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 357
    :cond_0
    iput-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mFragment:Landroid/app/Fragment;

    .line 358
    iput-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 360
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    iget-boolean v2, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isDeleteAll:Z

    invoke-interface {v1, v2}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;->onDeleteEnd(Z)V

    .line 361
    :cond_1
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 281
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mFragment:Landroid/app/Fragment;

    if-nez v8, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->finished()V

    .line 329
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 286
    .local v0, activity:Landroid/app/Activity;
    new-instance v8, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$1;

    invoke-direct {v8, p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$1;-><init>(Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;Landroid/app/Activity;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->decoderStop()V

    .line 295
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mPickerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v3, v8, [Lcom/htc/opensense/social/data/Medium;

    .line 296
    .local v3, medium:[Lcom/htc/opensense/social/data/Medium;
    const/4 v2, 0x0

    .line 297
    .local v2, index:I
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mPickerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 298
    .local v6, pickedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-boolean v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    if-eqz v8, :cond_5

    .line 308
    .end local v6           #pickedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_2
    iget-boolean v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    if-nez v8, :cond_4

    .line 310
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    invoke-interface {v8}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;->onDeleteStart()V

    .line 312
    :cond_3
    const-string v8, "OnlineDeleteManager"

    const-string v9, "[HTCAlbum][OnlineDeleteManager][DeleteThread] Start deleting now..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v8, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getMediumOpList([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v5

    .line 315
    .local v5, mediumOpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    .line 316
    .local v4, mediumOp:Lcom/htc/opensense/social/MediumOp;
    iget-boolean v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    if-eqz v8, :cond_7

    .line 328
    .end local v4           #mediumOp:Lcom/htc/opensense/social/MediumOp;
    .end local v5           #mediumOpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->finished()V

    goto :goto_0

    .line 300
    .restart local v6       #pickedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_5
    if-nez v6, :cond_6

    .line 301
    const-string v8, "OnlineDeleteManager"

    const-string v9, "[HTCAlbum][OnlineDeleteManager][DeleteThread] DeleteThread run: aPhoto is null"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_6
    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v8

    aput-object v8, v3, v2

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 321
    .end local v6           #pickedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .restart local v4       #mediumOp:Lcom/htc/opensense/social/MediumOp;
    .restart local v5       #mediumOpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_7
    :try_start_0
    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->delete()V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 322
    :catch_0
    move-exception v7

    .line 323
    .local v7, snException:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v8, "OnlineDeleteManager"

    const-string v9, "[HTCAlbum][OnlineDeleteManager][DeleteThread] onDelete: medium delete error"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
