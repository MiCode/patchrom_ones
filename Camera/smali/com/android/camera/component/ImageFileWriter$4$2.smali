.class Lcom/android/camera/component/ImageFileWriter$4$2;
.super Ljava/lang/Object;
.source "ImageFileWriter.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageFileWriter$4;->run()V
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
        "Lcom/android/camera/OneValueEventArgs",
        "<",
        "Lcom/android/camera/io/StorageSlot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/ImageFileWriter$4;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageFileWriter$4;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/camera/component/ImageFileWriter$4$2;->this$1:Lcom/android/camera/component/ImageFileWriter$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 2
    .parameter
    .parameter "sender"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/io/StorageSlot;>;>;"
    .local p3, e:Lcom/android/camera/OneValueEventArgs;,"Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/io/StorageSlot;>;"
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter$4$2;->this$1:Lcom/android/camera/component/ImageFileWriter$4;

    iget-object v1, v0, Lcom/android/camera/component/ImageFileWriter$4;->this$0:Lcom/android/camera/component/ImageFileWriter;

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    #calls: Lcom/android/camera/component/ImageFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/ImageFileWriter;->access$100(Lcom/android/camera/component/ImageFileWriter;Lcom/android/camera/io/StorageSlot;)V

    .line 188
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 183
    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ImageFileWriter$4$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
