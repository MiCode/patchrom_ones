.class Lcom/android/camera/component/NewMediaBroadcaster$2$1;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/NewMediaBroadcaster$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

.field final synthetic val$e:Lcom/android/camera/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/component/NewMediaBroadcaster$2;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iput-object p2, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->val$e:Lcom/android/camera/MediaEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->val$e:Lcom/android/camera/MediaEventArgs;

    invoke-virtual {v1}, Lcom/android/camera/MediaEventArgs;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->val$e:Lcom/android/camera/MediaEventArgs;

    iget-object v2, v2, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 80
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->val$e:Lcom/android/camera/MediaEventArgs;

    iget-boolean v1, v1, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    #calls: Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v1}, Lcom/android/camera/component/NewMediaBroadcaster;->access$100(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 84
    :cond_1
    return-void

    .line 70
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
