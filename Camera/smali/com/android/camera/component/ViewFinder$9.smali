.class Lcom/android/camera/component/ViewFinder$9;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder;->setupCameraThreadEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/imaging/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder;)V
    .locals 0
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$9;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1011
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/imaging/Size;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/imaging/Size;>;"
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/imaging/Size;

    .line 1012
    .local v0, previewSize:Lcom/android/camera/imaging/Size;
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder$9;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/component/ViewFinder;->access$600(Lcom/android/camera/component/ViewFinder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1014
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder$9;->this$0:Lcom/android/camera/component/ViewFinder;

    #setter for: Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;
    invoke-static {v1, v0}, Lcom/android/camera/component/ViewFinder;->access$702(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;

    .line 1015
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder$9;->this$0:Lcom/android/camera/component/ViewFinder;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1, v3}, Lcom/android/camera/component/ViewFinder;->access$802(Lcom/android/camera/component/ViewFinder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1024
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder$9;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/ViewFinder;->access$900(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview frame size has changed to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/android/camera/imaging/Size;->width:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " x "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/android/camera/imaging/Size;->height:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    monitor-exit v2

    .line 1030
    return-void

    .line 1024
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 1025
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
