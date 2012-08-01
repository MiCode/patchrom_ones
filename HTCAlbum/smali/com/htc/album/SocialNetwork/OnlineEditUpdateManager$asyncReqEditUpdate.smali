.class Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;
.super Landroid/os/AsyncTask;
.source "OnlineEditUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqEditUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG_DO_ADD:I

.field private final TAG_DO_MODIFY:I

.field private final TAG_DO_NOHTING:I

.field private mBundleArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancel:Z

.field private mIsExceptioned:Z

.field private mIsNoRespondExceptioned:Z

.field private mIsServerExceptioned:Z

.field private mServiceName:Ljava/lang/String;

.field private mTimestart:J

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, bundleArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 128
    iput v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->TAG_DO_NOHTING:I

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->TAG_DO_ADD:I

    .line 130
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->TAG_DO_MODIFY:I

    .line 132
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsExceptioned:Z

    .line 133
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsServerExceptioned:Z

    .line 134
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsNoRespondExceptioned:Z

    .line 136
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    .line 139
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mTimestart:J

    .line 142
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mServiceName:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mServiceName:Ljava/lang/String;

    .line 149
    monitor-enter p3

    .line 151
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    .line 152
    monitor-exit p3

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doAddTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V
    .locals 5
    .parameter "mOp"
    .parameter "aPhoto"
    .parameter "faceTag"

    .prologue
    .line 334
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload][doAddTag]: Add tag - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v1, params:Landroid/os/Bundle;
    const-string v2, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v2, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 339
    const-string v2, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 340
    const-string v2, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 341
    const-string v2, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 345
    :try_start_0
    const-string v2, "addPersonToPhoto"

    const-class v3, Lcom/htc/opensense/social/data/Tag;

    invoke-virtual {p1, v2, v3, v1}, Lcom/htc/opensense/social/MediumOp;->addAttachment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload][doAddTag]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NG !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V

    goto :goto_0

    .line 353
    .end local v0           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :catch_1
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload][doAddTag]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doRemoveTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V
    .locals 5
    .parameter "mOp"
    .parameter "aPhoto"
    .parameter "wfaceTag"

    .prologue
    .line 362
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload][doRemoveTag]: remove tag - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v1, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {v1}, Lcom/htc/opensense/social/data/FaceTag;-><init>()V

    .line 365
    .local v1, faceTag:Lcom/htc/opensense/social/data/FaceTag;
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/social/data/FaceTag;->setId(Ljava/lang/String;)V

    .line 372
    :try_start_0
    const-string v2, "removePersonFromPhoto"

    const-class v3, Lcom/htc/opensense/social/data/Tag;

    invoke-virtual {p1, v2, v3, v1}, Lcom/htc/opensense/social/MediumOp;->deleteAttachment(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/opensense/social/data/Attachment;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 383
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload][doRemoveTag]: remove tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NG !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V

    goto :goto_0

    .line 379
    .end local v0           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :catch_1
    move-exception v0

    .line 381
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload][doRemoveTag]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDesAndTitle(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 11
    .parameter "mOp"
    .parameter "bundle"
    .parameter "aPhoto"

    .prologue
    const/4 v10, 0x1

    .line 226
    const/4 v6, 0x0

    .line 228
    .local v6, updateDescription:Z
    const-string v7, "title"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, strNewTitle:Ljava/lang/String;
    const-string v7, "description"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, strNewDes:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, strOldTitle:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, strOldDes:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: title/desc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, bundleUpdate:Landroid/os/Bundle;
    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v10, v7, :cond_3

    .line 238
    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 240
    :cond_0
    invoke-virtual {p3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDescription(Ljava/lang/String;)V

    .line 241
    const/4 v6, 0x1

    .line 242
    const-string v7, "title"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: update title/desc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-ne v10, v6, :cond_2

    .line 262
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/opensense/social/MediumOp;->edit(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_2
    :goto_1
    return-void

    .line 245
    :cond_3
    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v7, v7, v10

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v10, v7, :cond_1

    .line 247
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 249
    :cond_4
    invoke-virtual {p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setName(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDescription(Ljava/lang/String;)V

    .line 251
    const/4 v6, 0x1

    .line 253
    const-string v7, "title"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v7, "description"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: Upload Edit Des/Title NG !"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, v1, v10}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V

    goto :goto_1
.end method

.method private updateTag(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 11
    .parameter "mOp"
    .parameter "bundle"
    .parameter "aPhoto"

    .prologue
    const/high16 v10, 0x40a0

    .line 272
    const-string v8, "tags"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 273
    .local v6, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v7

    .line 275
    .local v7, tagsArrayOriginal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TagUtils/TagInfo;

    .line 279
    .local v4, indexTag:Lcom/htc/album/TagUtils/TagInfo;
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    iget-object v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, faceTag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    iget v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterX(F)V

    .line 281
    iget v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterY(F)V

    .line 282
    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setWidth(F)V

    .line 283
    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setHeight(F)V

    .line 284
    iget-object v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setText(Ljava/lang/String;)V

    .line 286
    const/4 v5, 0x1

    .line 288
    .local v5, nTagEditStatus:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 293
    .local v3, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 295
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    .line 298
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 299
    const/4 v5, 0x0

    .line 319
    .end local v3           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_2
    :goto_1
    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 321
    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doAddTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    goto :goto_0

    .line 307
    .restart local v3       #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_3
    const/4 v5, 0x2

    .line 309
    invoke-direct {p0, p1, p3, v3}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doRemoveTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    .line 310
    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doAddTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    .line 312
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    .end local v0           #faceTag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v4           #indexTag:Lcom/htc/album/TagUtils/TagInfo;
    .end local v5           #nTagEditStatus:I
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 328
    .restart local v3       #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    invoke-direct {p0, p1, p3, v3}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doRemoveTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    goto :goto_2

    .line 330
    .end local v3           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_5
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "urls"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mTimestart:J

    .line 159
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KA>>> [OnlineEditUpdateManager]:  [asyncReqEditUpload]: doInBackground Start"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v5, :cond_0

    .line 178
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 187
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    if-eqz v5, :cond_1

    .line 219
    .end local v2           #i:I
    :cond_0
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KA>>> [OnlineEditUpdateManager]:  [asyncReqEditUpload]: doInBackground End, Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mTimestart:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    return-object v5

    .line 190
    .restart local v2       #i:I
    :cond_1
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 191
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "WrapperPhoto"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 193
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 195
    :cond_2
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[asyncReqEditUpload] bundle || aPhoto NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_3
    new-array v4, v11, [Lcom/htc/opensense/social/data/Medium;

    .line 201
    .local v4, medium:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v5

    aput-object v5, v4, v8

    .line 202
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/MediumOp;

    .line 204
    .local v3, mOp:Lcom/htc/opensense/social/MediumOp;
    if-nez v3, :cond_4

    .line 206
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload] mOp NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_4
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KA>>> [OnlineEditUpdateManager]:  [asyncReqEditUpload]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v3, v1, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->updateDesAndTitle(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V

    .line 214
    invoke-direct {p0, v3, v1, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->updateTag(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    .line 388
    const-string v0, "123"

    const-string v1, "KA>>> syncTask onCancelled !!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 417
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    if-ne v0, v2, :cond_0

    .line 419
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[asyncReqEditUpload]: Cancel update !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateCancel()V

    .line 422
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsNoRespondExceptioned:Z

    if-ne v0, v2, :cond_1

    .line 424
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    const/16 v1, 0x4ee9

    invoke-interface {v0, v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateError(I)V

    .line 425
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    .line 443
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsServerExceptioned:Z

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    const/16 v1, 0x4eea

    invoke-interface {v0, v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateError(I)V

    .line 430
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    goto :goto_0

    .line 432
    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsExceptioned:Z

    if-ne v2, v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    const/16 v1, 0x4eeb

    invoke-interface {v0, v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateError(I)V

    .line 435
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[asyncReqEditUpload]: Success update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateSuccess()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 392
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V
    .locals 4
    .parameter "e"
    .parameter "isMarkException"

    .prologue
    const/4 v3, 0x1

    .line 396
    invoke-virtual {p1}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v0

    .line 398
    .local v0, reason:Lcom/htc/opensense/social/ErrorCode;
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->SERVER_ERROR:Lcom/htc/opensense/social/ErrorCode;

    if-ne v0, v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: SERVER_ERROR"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsServerExceptioned:Z

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->SERVICE_NOT_AVAILABLE:Lcom/htc/opensense/social/ErrorCode;

    if-ne v0, v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: SERVICE_NOT_AVAILABLE"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsNoRespondExceptioned:Z

    goto :goto_0

    .line 406
    :cond_2
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->NETWORK_ERROR:Lcom/htc/opensense/social/ErrorCode;

    if-ne v0, v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: NETWORK_ERROR"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_1
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsExceptioned:Z

    goto :goto_0

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: OTHER ERROR"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
