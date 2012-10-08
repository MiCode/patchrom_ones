.class Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;
.super Ljava/lang/Thread;
.source "MediaDecoderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/MediaDecoderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDecoder"
.end annotation


# instance fields
.field private mBottom:I

.field private mHasRunningTask:Z

.field private mPause:Z

.field private mStop:Z

.field private mTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/sunny2/common/MediaDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTop:I

.field final synthetic this$0:Lcom/htc/sunny2/common/MediaDecoderManager;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/MediaDecoderManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 101
    iput-object p1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 94
    iput-boolean v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z

    .line 95
    iput-boolean v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mPause:Z

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    .line 97
    iput v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTop:I

    .line 98
    iput v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mBottom:I

    .line 99
    iput-boolean v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mHasRunningTask:Z

    .line 102
    iput-boolean v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z

    .line 103
    return-void
.end method

.method private checkPauseAndWaitIfNecessary()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mPause:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized isInVisibleRange(Lcom/htc/sunny2/common/MediaDecodeItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/htc/sunny2/common/MediaDecodeItem;->getPosistion()I

    move-result v0

    .line 209
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTop:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mBottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    .line 210
    const/4 v1, 0x1

    .line 213
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    .end local v0           #pos:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z

    .line 199
    invoke-virtual {p0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->removeAllTasks()V

    .line 200
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    monitor-enter v2

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v0

    .line 220
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-boolean v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mHasRunningTask:Z

    if-eqz v1, :cond_0

    .line 222
    add-int/lit8 v0, v0, 0x1

    .line 224
    :cond_0
    return v0

    .line 220
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeAllTasks()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 192
    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaDecoder awaked by removeAllTasks"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestResumeTask(Z)V
    .locals 2
    .parameter "isResume"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    monitor-enter v1

    .line 176
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mPause:Z

    .line 177
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 110
    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDecoder run+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z

    if-nez v3, :cond_1

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    iget-object v4, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    monitor-enter v4

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    :try_start_1
    iget-boolean v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    .line 118
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .end local v2           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDecoder run-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 120
    .restart local v2       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 126
    :goto_1
    :try_start_4
    monitor-exit v4

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaDecoder awake because of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/common/MediaDecodeItem;

    move-object v2, v0

    .line 130
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mHasRunningTask:Z

    .line 131
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    invoke-direct {p0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->checkPauseAndWaitIfNecessary()V

    .line 135
    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->isInVisibleRange(Lcom/htc/sunny2/common/MediaDecodeItem;)Z

    move-result v3

    if-ne v7, v3, :cond_4

    .line 137
    invoke-virtual {v2}, Lcom/htc/sunny2/common/MediaDecodeItem;->decode()V

    .line 138
    iput v7, v2, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    .line 140
    invoke-direct {p0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->checkPauseAndWaitIfNecessary()V

    .line 142
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    #calls: Lcom/htc/sunny2/common/MediaDecoderManager;->onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    invoke-static {v3, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$100(Lcom/htc/sunny2/common/MediaDecoderManager;Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 151
    :goto_2
    iput-boolean v8, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mHasRunningTask:Z

    .line 152
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    #getter for: Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z
    invoke-static {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$200(Lcom/htc/sunny2/common/MediaDecoderManager;)Z

    move-result v3

    if-ne v3, v7, :cond_0

    .line 154
    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDecoder thread priority set to DefaultPriority"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->setPriority(I)V

    .line 156
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    #setter for: Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z
    invoke-static {v3, v8}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$202(Lcom/htc/sunny2/common/MediaDecoderManager;Z)Z

    goto/16 :goto_0

    .line 145
    :cond_4
    const/4 v3, 0x2

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    .line 147
    invoke-direct {p0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->checkPauseAndWaitIfNecessary()V

    .line 149
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    #calls: Lcom/htc/sunny2/common/MediaDecoderManager;->onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    invoke-static {v3, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$100(Lcom/htc/sunny2/common/MediaDecoderManager;Lcom/htc/sunny2/common/MediaDecodeItem;)V

    goto :goto_2
.end method

.method public declared-synchronized setVisibleRange(II)V
    .locals 1
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTop:I

    .line 204
    iput p2, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mBottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
