.class Lcom/android/camera/effect/EffectManager$10;
.super Lcom/android/camera/trigger/Trigger;
.source "EffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$10;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$10;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->setupCurrentEffectAndScene()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectManager;->access$2000(Lcom/android/camera/effect/EffectManager;)V

    .line 444
    return-void
.end method
