.class final Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsLocationProviderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    .line 3407
    const-string v0, "GpsLocationProvider"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3408
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3411
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3412
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->initialize()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;)V

    .line 3414
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3415
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$2202(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3417
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3418
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3422
    :goto_0
    return-void

    .line 3419
    :catch_0
    move-exception v0

    .line 3420
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): ClassCastException reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
