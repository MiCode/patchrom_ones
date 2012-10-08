.class public final Lcom/android/camera/effect/PanoramaScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "PanoramaScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 19
    const-string v0, "panorama"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 20
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 87
    iget-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return v1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/PanoramaScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "Panorama UI"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaUI;

    iput-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "prevEffect"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->enterPanoramaMode()V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "nextEffect"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->exitPanoramaMode()V

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x11

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 2
    .parameter "prevEffect"
    .parameter "flags"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/SceneEffectBase;->prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 103
    if-eq p1, p0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v1, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/component/PanoramaUI;->prepareEnteringPanoramaMode(Z)V

    .line 110
    :cond_0
    :goto_1
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 2
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/SceneEffectBase;->prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 122
    if-eq p1, p0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/component/PanoramaUI;->prepareExitingPanoramaMode(Z)V

    .line 129
    :cond_0
    :goto_1
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
