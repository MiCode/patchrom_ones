.class public Lcom/htc/sunny2/RenderThread;
.super Lcom/htc/sunny2/IterationThread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/RenderThread$EventListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private actions:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private actionsToProcess:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionsToRestore:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

.field private eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

.field private events:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private eventsToProcess:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private forceDisableRenderingTimeMillis:J

.field public forceRender:Z

.field public forceRenderOnce:Z

.field private frameIndex:I

.field private isRenderThreadExpired:Z

.field private isRenderThreadReady:Z

.field private iterationCount:I

.field private lastPresentTimeMillis:J

.field private lastTimeRequestRenderThreadRunning:J

.field private needRenderDueToAction:Z

.field private needRenderDueToEvent:Z

.field private needRenderDueToInterruption:Z

.field private pauseRenderFlag:Z

.field private preparations:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private preparationsToProcess:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private preparationsToRestore:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private renderCount:I

.field private renderWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private runInterruptionLocker:Ljava/lang/Integer;

.field private taskRequestRenderThreadRunning:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/sunny2/RenderThread$EventListener;)V
    .locals 5
    .parameter "threadName"
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/htc/sunny2/IterationThread;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "SunnyRT"

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    .line 35
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    .line 36
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    .line 40
    iput v1, p0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    .line 42
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    .line 43
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->runInterruptionLocker:Ljava/lang/Integer;

    .line 45
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 46
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 50
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 51
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 55
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 56
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    iput-wide v3, p0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    .line 61
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->forceRender:Z

    .line 67
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 68
    iput-wide v3, p0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    .line 70
    iput v1, p0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    .line 71
    iput v1, p0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    .line 73
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    .line 75
    iput-wide v3, p0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    .line 84
    iput-object p2, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    .line 87
    return-void
.end method

.method private doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 1
    .parameter "task"
    .parameter "cancelReason"

    .prologue
    .line 956
    if-nez p1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    iget-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {p1, p2}, Lcom/htc/sunny2/RenderThreadTask;->onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 964
    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadTask;->onRemovedIRT()V

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    goto :goto_0
.end method

.method private doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 942
    if-nez p1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadTask;->onRemovedIRT()V

    .line 950
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    goto :goto_0
.end method

.method private doRemoveAllTaskIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 6
    .parameter "cancelReason"

    .prologue
    const/4 v5, 0x0

    .line 973
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear events"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 978
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_0

    .line 980
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadEvent;

    .line 981
    .local v1, event:Lcom/htc/sunny2/RenderThreadEvent;
    if-nez v1, :cond_9

    .line 985
    .end local v1           #event:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_1

    .line 987
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    .restart local v1       #event:Lcom/htc/sunny2/RenderThreadEvent;
    if-nez v1, :cond_b

    .line 995
    .end local v1           #event:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_1
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_2

    .line 997
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 998
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 1001
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1006
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear actions"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1011
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_3

    .line 1013
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadAction;

    .line 1014
    .local v0, action:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v0, :cond_c

    .line 1018
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_4

    .line 1020
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1021
    .restart local v0       #action:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v0, :cond_e

    .line 1028
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_4
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_5

    .line 1030
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 1031
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 1032
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 1035
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1040
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear preparations"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1045
    :goto_4
    :try_start_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_6

    .line 1047
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadPreparation;

    .line 1048
    .local v2, preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    if-nez v2, :cond_f

    .line 1052
    .end local v2           #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :cond_6
    :goto_5
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_7

    .line 1054
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadPreparation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1055
    .restart local v2       #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    if-nez v2, :cond_11

    .line 1062
    .end local v2           #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :cond_7
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_8

    .line 1064
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 1065
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 1066
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    .line 1069
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1071
    return-void

    .line 983
    .restart local v1       #event:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_9
    :try_start_3
    invoke-direct {p0, v1, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 995
    .end local v1           #event:Lcom/htc/sunny2/RenderThreadEvent;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_a

    .line 997
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 998
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 1001
    :cond_a
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 990
    .restart local v1       #event:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_b
    :try_start_4
    invoke-direct {p0, v1, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1016
    .end local v1           #event:Lcom/htc/sunny2/RenderThreadEvent;
    .restart local v0       #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_c
    :try_start_5
    invoke-direct {p0, v0, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1028
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    :catchall_1
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_d

    .line 1030
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 1031
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 1032
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 1035
    :cond_d
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 1023
    .restart local v0       #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_e
    :try_start_6
    invoke-direct {p0, v0, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 1050
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    .restart local v2       #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :cond_f
    :try_start_7
    invoke-direct {p0, v2, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 1062
    .end local v2           #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :catchall_2
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_10

    .line 1064
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 1065
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 1066
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    .line 1069
    :cond_10
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 1057
    .restart local v2       #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :cond_11
    :try_start_8
    invoke-direct {p0, v2, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5
.end method

.method private processActions(IJ)Z
    .locals 9
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v4, 0x1

    .line 768
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 770
    const/4 v3, 0x0

    .line 854
    :goto_0
    return v3

    .line 775
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 777
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 779
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 787
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    .line 788
    .local v1, action:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v1, :cond_3

    .line 829
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 832
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 836
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/RenderThreadAction;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    if-nez v1, :cond_8

    .line 851
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    .line 854
    goto :goto_0

    .line 795
    :cond_3
    iget v3, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    if-nez v3, :cond_4

    iget-wide v5, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    .line 797
    iput p1, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    .line 798
    iput-wide p2, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J

    .line 801
    :cond_4
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;->onDoActionIRT(IJ)Z

    move-result v2

    .line 803
    .local v2, needRestore:Z
    iget-boolean v3, v1, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v3, :cond_5

    .line 805
    iput-boolean v4, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    .line 807
    :cond_5
    iget-boolean v3, v1, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v3, :cond_6

    .line 809
    iput-boolean v4, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 812
    :cond_6
    if-nez v2, :cond_7

    .line 814
    invoke-direct {p0, v1}, Lcom/htc/sunny2/RenderThread;->doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V

    goto :goto_1

    .line 820
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 822
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Save action to restore NG"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v1, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    goto :goto_1

    .line 842
    .end local v2           #needRestore:Z
    :cond_8
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 844
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Restore action NG."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v1, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 851
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private processEvents()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 725
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2}, Lcom/htc/sunny2/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 727
    const/4 v1, 0x0

    .line 761
    :cond_0
    return v1

    .line 732
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 734
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 736
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 742
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadEvent;

    .line 743
    .local v0, event:Lcom/htc/sunny2/RenderThreadEvent;
    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 749
    iget-boolean v2, v0, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v2, :cond_2

    .line 751
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    .line 753
    :cond_2
    iget-boolean v2, v0, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v2, :cond_3

    .line 755
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 758
    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThread;->doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V

    goto :goto_0
.end method

.method private processPreparations(J)Z
    .locals 6
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v4, 0x1

    .line 861
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 863
    const/4 v3, 0x0

    .line 937
    :goto_0
    return v3

    .line 868
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 870
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 872
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 880
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadPreparation;

    .line 881
    .local v2, preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    if-nez v2, :cond_3

    .line 912
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 915
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 919
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/RenderThreadPreparation;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    if-nez v2, :cond_6

    .line 934
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    .line 937
    goto :goto_0

    .line 888
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/htc/sunny2/RenderThreadPreparation;->onProcessPreparationIRT(J)Z

    move-result v1

    .line 890
    .local v1, needRestore:Z
    iget-boolean v3, v2, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v3, :cond_4

    .line 892
    iput-boolean v4, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 895
    :cond_4
    if-nez v1, :cond_5

    .line 897
    invoke-direct {p0, v2}, Lcom/htc/sunny2/RenderThread;->doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V

    goto :goto_1

    .line 903
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 905
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Save preparation to restore NG"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v2, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    goto :goto_1

    .line 925
    .end local v1           #needRestore:Z
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 927
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Restore preparation NG."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v2, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 934
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private pushAction(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 5
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 616
    if-nez p1, :cond_0

    .line 618
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushAction() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_0
    return v1

    .line 622
    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    .line 624
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushAction() NG - already in queue, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadAction;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 630
    :cond_1
    const/4 v0, 0x0

    .line 632
    .local v0, pushOK:Z
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 635
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_3

    .line 637
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 639
    if-eqz v0, :cond_2

    .line 641
    const/4 v3, 0x0

    iput v3, p1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    .line 642
    const-wide/16 v3, 0x0

    iput-wide v3, p1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 655
    if-nez v0, :cond_4

    .line 657
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushAction() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 647
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushAction() NG - null actions"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 652
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 663
    :cond_4
    iput-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    .line 665
    goto :goto_0
.end method

.method private pushEvent(Lcom/htc/sunny2/RenderThreadEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 566
    if-nez p1, :cond_0

    .line 568
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_0
    return v1

    .line 572
    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    .line 574
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG - already in queue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_1
    const/4 v0, 0x0

    .line 582
    .local v0, pushOK:Z
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 585
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_2

    .line 587
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 596
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 599
    if-nez v0, :cond_3

    .line 601
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushEvent() NG - events null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 596
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 607
    :cond_3
    iput-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    .line 609
    goto :goto_0
.end method

.method private pushPreparation(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 5
    .parameter "preparation"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 672
    if-nez p1, :cond_0

    .line 674
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_0
    return v1

    .line 678
    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    .line 680
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG - already in queue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    :cond_1
    const/4 v0, 0x0

    .line 688
    .local v0, pushOK:Z
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 691
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_2

    .line 693
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 702
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 705
    if-nez v0, :cond_3

    .line 707
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 697
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushPreparation() NG - null preparations."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 702
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 713
    :cond_3
    iput-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    .line 715
    goto :goto_0
.end method


# virtual methods
.method public cancelForceDisableRenderingBeforeTimeMillis()V
    .locals 2

    .prologue
    .line 1278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    .line 1279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 1280
    return-void
.end method

.method public findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;
    .locals 4
    .parameter "actionHost"
    .parameter "actionName"

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 323
    :cond_0
    :goto_0
    return-object v1

    .line 309
    :cond_1
    new-instance v0, Lcom/htc/sunny2/RenderThread$1ActionComparator;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/RenderThread$1ActionComparator;-><init>(Lcom/htc/sunny2/RenderThread;Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .local v0, actionComparator:Lcom/htc/sunny2/RenderThread$1ActionComparator;
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Queue;->find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    .line 312
    .local v1, actionFound:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v1, :cond_0

    .line 315
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Queue;->find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #actionFound:Lcom/htc/sunny2/RenderThreadAction;
    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    .line 316
    .restart local v1       #actionFound:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v1, :cond_0

    .line 319
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Queue;->find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #actionFound:Lcom/htc/sunny2/RenderThreadAction;
    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    .line 320
    .restart local v1       #actionFound:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 323
    goto :goto_0
.end method

.method public isRenderThreadReady()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    return v0
.end method

.method public iterate()Z
    .locals 18

    .prologue
    .line 1081
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 1085
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    .line 1087
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    if-eqz v14, :cond_2

    .line 1089
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    invoke-virtual {v14}, Lcom/htc/sunny2/RenderThreadInterruption;->onProcessInterruptionIRT()V

    .line 1091
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    iget-boolean v14, v14, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v14, :cond_0

    .line 1093
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    .line 1095
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    iget-boolean v14, v14, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v14, :cond_1

    .line 1097
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 1100
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    .line 1102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v14, :cond_2

    .line 1103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v14}, Lcom/htc/sunny2/RenderThread$EventListener;->onInterruptionEndIRT()V

    .line 1109
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1111
    .local v1, currentFrameTimeMillis:J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    const-wide/16 v16, 0x5

    add-long v14, v14, v16

    cmp-long v14, v1, v14

    if-gez v14, :cond_3

    .line 1113
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    .line 1118
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    .line 1120
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/RenderThread;->processEvents()Z

    .line 1124
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    .line 1126
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v2}, Lcom/htc/sunny2/RenderThread;->processActions(IJ)Z

    .line 1130
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->forceRender:Z

    if-eqz v14, :cond_8

    :cond_4
    const/4 v9, 0x1

    .line 1131
    .local v9, needRender:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 1133
    .local v3, hasRequestOfForceRenderOnce:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1135
    const/4 v9, 0x0

    .line 1136
    const/4 v3, 0x0

    .line 1139
    :cond_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    .line 1141
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    cmp-long v14, v1, v14

    if-gtz v14, :cond_9

    .line 1143
    const/4 v9, 0x0

    .line 1151
    :cond_6
    :goto_1
    if-eqz v9, :cond_a

    .line 1153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1154
    .local v12, w:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1155
    .local v13, window:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v14, :cond_7

    .line 1156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v14, v13}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderToWindowIRT(I)V

    .line 1158
    :cond_7
    invoke-static {v13}, Lcom/htc/sunny2/Sunny2;->Window_RenderWithoutPresent(I)V

    goto :goto_2

    .line 1130
    .end local v3           #hasRequestOfForceRenderOnce:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #needRender:Z
    .end local v12           #w:Ljava/lang/Integer;
    .end local v13           #window:I
    :cond_8
    const/4 v9, 0x0

    goto :goto_0

    .line 1147
    .restart local v3       #hasRequestOfForceRenderOnce:Z
    .restart local v9       #needRender:Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    goto :goto_1

    .line 1172
    :cond_a
    const-wide/16 v7, 0x0

    .line 1173
    .local v7, limitedTimeMillis:J
    if-eqz v9, :cond_b

    .line 1175
    const-wide/16 v14, 0xd

    add-long v7, v1, v14

    .line 1182
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/htc/sunny2/RenderThread;->processPreparations(J)Z

    .line 1186
    const/4 v4, 0x0

    .line 1188
    .local v4, hasWindowPresented:Z
    if-eqz v9, :cond_e

    .line 1190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1191
    .restart local v12       #w:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lcom/htc/sunny2/Sunny2;->Window_Present(I)V

    .line 1192
    const/4 v4, 0x1

    goto :goto_4

    .line 1179
    .end local v4           #hasWindowPresented:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v12           #w:Ljava/lang/Integer;
    :cond_b
    const-wide/16 v14, 0x10

    add-long v7, v1, v14

    goto :goto_3

    .line 1202
    .restart local v4       #hasWindowPresented:Z
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_c
    if-eqz v3, :cond_d

    .line 1204
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 1206
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    .line 1209
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_e
    if-eqz v4, :cond_13

    .line 1211
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    .line 1232
    :cond_f
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    .line 1236
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    if-eqz v14, :cond_10

    .line 1238
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    .line 1241
    :cond_10
    const/4 v6, 0x1

    .line 1243
    .local v6, keepRunning:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    .line 1244
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    rem-int/lit16 v14, v14, 0x12c

    if-nez v14, :cond_11

    .line 1247
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    .line 1249
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    const-wide/16 v16, 0x2710

    add-long v14, v14, v16

    cmp-long v14, v1, v14

    if-lez v14, :cond_11

    .line 1251
    const/4 v6, 0x0

    .line 1252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v15, "RenderThread decides to pause."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    if-nez v14, :cond_12

    .line 1260
    const/4 v6, 0x0

    .line 1261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v15, "RenderThread: No running request."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_12
    return v6

    .line 1215
    .end local v6           #keepRunning:Z
    :cond_13
    const-wide/16 v14, 0x10

    add-long/2addr v14, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v10, v14, v16

    .line 1216
    .local v10, sleepTime:J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_f

    .line 1218
    const-wide/16 v14, 0x3c

    cmp-long v14, v10, v14

    if-lez v14, :cond_14

    .line 1220
    const-wide/16 v10, 0x3c

    .line 1225
    :cond_14
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1227
    :catch_0
    move-exception v14

    goto :goto_5
.end method

.method public onThreadBegin()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/RenderThread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RenderThread begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    .line 110
    .local v1, initFailed:Z
    :try_start_1
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT E"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 111
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT EP"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 113
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT A"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 114
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT AP"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 115
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT AR"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 117
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT P"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 118
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT PP"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 119
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT PR"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :goto_1
    if-nez v1, :cond_0

    .line 131
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v3}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStartIRT()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 134
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "onThreadBegin() NG - cancel"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    if-eqz v1, :cond_1

    .line 142
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 143
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 145
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 146
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 147
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 149
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 150
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 151
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    .line 153
    iput-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    .line 155
    const/4 v2, 0x0

    .line 162
    :goto_2
    return v2

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 124
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "onThreadBegin() NG - exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iput-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    goto :goto_2

    .line 99
    .end local v1           #initFailed:Z
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public onThreadEnd()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "onThreadEnd() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    .line 175
    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThread;->doRemoveAllTaskIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 179
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v0}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStopIRT()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "onThreadEnd() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RenderThread end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public pauseRender()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    return-void
.end method

.method public pushActionIHT(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushActionIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_0
    return v0

    .line 518
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushAction(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushActionIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 528
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushAction(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushActionIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushEventIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_0
    return v0

    .line 493
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushEvent(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushEventIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 503
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushEventIRT(Lcom/htc/sunny2/RenderThreadEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushEventIRT () "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadEvent;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushEvent(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushEventIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushPreparationIHT(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 3
    .parameter "preparation"

    .prologue
    const/4 v0, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushPreparationIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_0
    return v0

    .line 543
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushPreparation(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushPreparationIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 553
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 2
    .parameter "preparation"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushPreparation(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushPreparationIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerRenderWindowIRT(I)Z
    .locals 4
    .parameter "window"

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRenderWindowIRT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-nez p1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "registerRenderWindow() NG - null window"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRenderWindow() NG - has window = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "registerRenderWindow() NG - add window"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 328
    if-nez p1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    iget-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 343
    :cond_2
    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    move v0, v1

    .line 344
    goto :goto_0
.end method

.method public removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .parameter "actionHost"
    .parameter "actionName"

    .prologue
    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 353
    .local v0, action:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v0, :cond_0

    .line 355
    const/4 v1, 0x0

    .line 358
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeAllTaskIRT()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "removeAllTaskIRT()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThread;->doRemoveAllTaskIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 249
    return-void
.end method

.method public removePreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 3
    .parameter "preparation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 363
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call removePreparationIRT in non-RenderThread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    if-nez p1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "removePreparationIRT() NG - null action"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    :goto_0
    return v0

    .line 373
    :cond_2
    iget-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 382
    :cond_3
    sget-object v2, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, p1, v2}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 383
    sget-object v2, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-virtual {p1, v2}, Lcom/htc/sunny2/RenderThreadPreparation;->onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 384
    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadPreparation;->onRemovedIRT()V

    .line 385
    iput-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v0, v1

    .line 387
    goto :goto_0
.end method

.method public requestForceDisableRenderingBeforeTimeMillis(J)V
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 1272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    .line 1273
    return-void
.end method

.method public resumeRender()V
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    return-void
.end method

.method public runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z
    .locals 3
    .parameter "interruption"

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "runInterruptionIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return v0

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "runInterruptionIHT() NG - already has interruption."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run interruptionIHT in RenderThread - current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput-object p1, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    .line 460
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 464
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for interruption finish. +  RenderThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    if-eqz v0, :cond_2

    .line 470
    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 472
    :catch_0
    move-exception v0

    goto :goto_1

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for interruption finish. -  RenderThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unregisterRenderWindowIRT(I)Z
    .locals 7
    .parameter "window"

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterRenderWindowIRT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-nez p1, :cond_0

    .line 227
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "unregisterRenderWindow() NG - null window"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return v3

    .line 231
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 233
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 234
    .local v2, w:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 236
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 237
    const/4 v3, 0x1

    goto :goto_0

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    .end local v2           #w:Ljava/lang/Integer;
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "unregisterRenderWindow() NG - can not find the window"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public waitForRenderThreadReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 399
    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    if-nez v2, :cond_0

    .line 432
    :goto_0
    return v0

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "waitForRenderThreadReady() +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    if-nez v2, :cond_2

    .line 412
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    if-eqz v2, :cond_1

    .line 419
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() - expired"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 420
    goto :goto_0

    .line 424
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    if-eqz v2, :cond_3

    .line 426
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() - expired"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 427
    goto :goto_0

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :catch_0
    move-exception v2

    goto :goto_1
.end method
