.class Lcom/android/camera/component/AudioManager$2;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AudioManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AudioManager;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/component/AudioManager$2;->this$0:Lcom/android/camera/component/AudioManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 11
    .parameter "soundPool"
    .parameter "soundId"
    .parameter "status"

    .prologue
    const/4 v10, 0x1

    .line 128
    const-string v0, "AudioManager(Camera)"

    const-string v1, "onLoadComplete(soundId="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", status="

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    if-nez p3, :cond_3

    .line 132
    .local v10, successful:Z
    :goto_0
    const/4 v8, 0x0

    .line 133
    .local v8, soundHandle:Lcom/android/camera/component/AudioManager$SoundHandle;
    iget-object v1, p0, Lcom/android/camera/component/AudioManager$2;->this$0:Lcom/android/camera/component/AudioManager;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/AudioManager$2;->this$0:Lcom/android/camera/component/AudioManager;

    #getter for: Lcom/android/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/component/AudioManager;->access$000(Lcom/android/camera/component/AudioManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/component/AudioManager$SoundHandle;

    .line 137
    .local v6, candHandle:Lcom/android/camera/component/AudioManager$SoundHandle;
    iget v0, v6, Lcom/android/camera/component/AudioManager$SoundHandle;->soundId:I

    if-ne v0, p2, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/camera/component/AudioManager$SoundHandle;->isLoaded:Z

    .line 140
    move-object v8, v6

    .line 144
    .end local v6           #candHandle:Lcom/android/camera/component/AudioManager$SoundHandle;
    :cond_1
    monitor-exit v1

    .line 145
    if-nez v8, :cond_4

    .line 158
    :cond_2
    :goto_1
    return-void

    .line 131
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #soundHandle:Lcom/android/camera/component/AudioManager$SoundHandle;
    .end local v10           #successful:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 144
    .restart local v8       #soundHandle:Lcom/android/camera/component/AudioManager$SoundHandle;
    .restart local v10       #successful:Z
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_4
    if-eqz v10, :cond_2

    .line 151
    iget-object v0, v8, Lcom/android/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/component/AudioManager$StreamHandle;

    .line 153
    .local v9, streamHandle:Lcom/android/camera/component/AudioManager$StreamHandle;
    const-string v0, "AudioManager(Camera)"

    const-string v1, "onLoadComplete() - Play pending sound : "

    iget-object v2, v9, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, " ["

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/component/AudioManager$2;->this$0:Lcom/android/camera/component/AudioManager;

    #calls: Lcom/android/camera/component/AudioManager;->playInMemorySound(Lcom/android/camera/component/AudioManager$StreamHandle;)V
    invoke-static {v0, v9}, Lcom/android/camera/component/AudioManager;->access$100(Lcom/android/camera/component/AudioManager;Lcom/android/camera/component/AudioManager$StreamHandle;)V

    goto :goto_2

    .line 156
    .end local v9           #streamHandle:Lcom/android/camera/component/AudioManager$StreamHandle;
    :cond_5
    iget-object v0, v8, Lcom/android/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method
