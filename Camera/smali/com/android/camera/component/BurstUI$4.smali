.class Lcom/android/camera/component/BurstUI$4;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/QueryEventArgs",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/MediaInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/QueryEventArgs;)V
    .locals 4
    .parameter
    .parameter "sender"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/QueryEventArgs<Ljava/util/List<Lcom/android/camera/MediaInfo;>;>;>;"
    .local p3, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Ljava/util/List<Lcom/android/camera/MediaInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v0, contentUri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/MediaInfo;>;"
    iget-object v2, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/camera/component/BurstUI;->access$500(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/camera/component/BurstUI;->access$500(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 698
    new-instance v1, Lcom/android/camera/MediaInfo;

    invoke-direct {v1}, Lcom/android/camera/MediaInfo;-><init>()V

    .line 699
    .local v1, mediaInfo:Lcom/android/camera/MediaInfo;
    iget-object v2, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/camera/component/BurstUI;->access$500(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 700
    const-string v2, "image/jpeg"

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 702
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-virtual {p3, v0}, Lcom/android/camera/QueryEventArgs;->setResult(Ljava/lang/Object;)V

    .line 705
    .end local v1           #mediaInfo:Lcom/android/camera/MediaInfo;
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 691
    check-cast p3, Lcom/android/camera/QueryEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/BurstUI$4;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/QueryEventArgs;)V

    return-void
.end method
