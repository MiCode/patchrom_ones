.class public Lcom/htc/sunny2/widget/presentation/SDataSetObservable;
.super Landroid/database/Observable;
.source "SDataSetObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/htc/sunny2/widget/presentation/SDataSetObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 4

    .prologue
    .line 34
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/presentation/SDataSetObserver;

    .line 36
    .local v1, observer:Lcom/htc/sunny2/widget/presentation/SDataSetObserver;
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SDataSetObserver;->onChanged()V

    goto :goto_0

    .line 38
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/htc/sunny2/widget/presentation/SDataSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    return-void
.end method

.method public notifyChanged(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 42
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/presentation/SDataSetObserver;

    .line 44
    .local v1, observer:Lcom/htc/sunny2/widget/presentation/SDataSetObserver;
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/presentation/SDataSetObserver;->onChanged(I)V

    goto :goto_0

    .line 46
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/htc/sunny2/widget/presentation/SDataSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    return-void
.end method

.method public notifyInvalidated()V
    .locals 4

    .prologue
    .line 54
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/presentation/SDataSetObserver;

    .line 56
    .local v1, observer:Lcom/htc/sunny2/widget/presentation/SDataSetObserver;
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SDataSetObserver;->onInvalidated()V

    goto :goto_0

    .line 58
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/htc/sunny2/widget/presentation/SDataSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    return-void
.end method
