.class Lcom/android/camera/bi/MediaStatisticController$1;
.super Ljava/lang/Object;
.source "MediaStatisticController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/bi/MediaStatisticController;->initializeOverride()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/bi/MediaStatisticController;


# direct methods
.method constructor <init>(Lcom/android/camera/bi/MediaStatisticController;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/bi/MediaStatisticController$1;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/camera/bi/MediaStatisticController$1;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/android/camera/bi/MediaStatisticController$1;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    invoke-virtual {v1}, Lcom/android/camera/bi/MediaStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/camera/bi/MediaStatisticController$1;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/android/camera/bi/MediaStatisticController$1;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v2, p0, Lcom/android/camera/bi/MediaStatisticController$1;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v2, v2, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/bi/MediaStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    .line 78
    iget-object v0, p0, Lcom/android/camera/bi/MediaStatisticController$1;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/bi/MediaStatisticController;->access$000(Lcom/android/camera/bi/MediaStatisticController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PupupBubble dismiss"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
