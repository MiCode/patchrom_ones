.class abstract Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 232
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;,"Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/common/SimpleAsyncTask$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 232
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;,"Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
