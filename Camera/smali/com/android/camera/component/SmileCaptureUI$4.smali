.class Lcom/android/camera/component/SmileCaptureUI$4;
.super Ljava/lang/Object;
.source "SmileCaptureUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmileCaptureUI;->initializeOverride()V
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
        "Lcom/android/camera/effect/EffectBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmileCaptureUI;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/camera/component/SmileCaptureUI$4;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/effect/EffectBase;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/effect/EffectBase;>;"
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI$4;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    #calls: Lcom/android/camera/component/SmileCaptureUI;->updateSmileCaptureState()V
    invoke-static {v0}, Lcom/android/camera/component/SmileCaptureUI;->access$000(Lcom/android/camera/component/SmileCaptureUI;)V

    .line 133
    return-void
.end method
