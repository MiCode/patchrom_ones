.class Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

.field final synthetic val$this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Lcom/htc/opensense2/album/util/ImageManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6544
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->val$this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 6550
    const-wide/16 v3, 0x8fc

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6557
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v4, 0x0

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z
    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1302(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Z

    .line 6558
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #calls: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->updateImageCountByQuery()I
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)I

    .line 6559
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #calls: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->createMiddleImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    .line 6560
    .local v2, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6561
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsPartialBuilt:Z

    .line 6563
    const/4 v0, 0x0

    .line 6564
    .local v0, callback:Z
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLocker:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6565
    :try_start_2
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1800(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6566
    const/4 v0, 0x1

    .line 6567
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v5, 0x1

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z
    invoke-static {v3, v5}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1302(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Z

    .line 6569
    :cond_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6571
    if-ne v6, v0, :cond_1

    .line 6572
    :try_start_3
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1800(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iget v5, v5, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6579
    .end local v0           #callback:Z
    .end local v2           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    :goto_1
    return-void

    .line 6569
    .restart local v0       #callback:Z
    .restart local v2       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 6575
    .end local v0           #callback:Z
    .end local v2           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catch_0
    move-exception v1

    .line 6577
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageManager][PartialImageList]: run: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6552
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
