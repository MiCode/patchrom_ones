.class Lcom/android/camera/bi/ContinuousBurstStatisticController$3;
.super Ljava/lang/Object;
.source "ContinuousBurstStatisticController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/bi/ContinuousBurstStatisticController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

.field final synthetic val$activity:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/bi/ContinuousBurstStatisticController;Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iput-object p2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 5
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
    .line 112
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    iget-object v2, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, finalresult:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v4, v4, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 117
    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_bi_continuousburst_history"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 124
    .end local v0           #finalresult:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_bi_continuousburst_history"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, history:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
