.class Lcom/android/camera/effect/EffectPanelUI$10;
.super Lcom/android/camera/trigger/Trigger;
.source "EffectPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$10;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 5

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$10;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->openUI()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1000(Lcom/android/camera/effect/EffectPanelUI;)V

    .line 345
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$10;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_IsFakeRotation:Z
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1200(Lcom/android/camera/effect/EffectPanelUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$10;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$10;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/16 v2, 0x2712

    const-wide/16 v3, 0x3e8

    #calls: Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IJ)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/EffectPanelUI;->access$1300(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IJ)Z

    .line 347
    :cond_0
    return-void
.end method
