.class public final Lcom/android/camera/component/HwCameraSwitchButton;
.super Lcom/android/camera/component/HwCameraSwitchButtonBase;
.source "HwCameraSwitchButton.java"


# static fields
.field private static final MSG_UPDATE_MODE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Hardware Camera-Switch Button Controller"

.field public static final STATE_CAMCORDER:I = 0x0

.field public static final STATE_CAMERA:I = 0x1

.field public static final STATE_UNINIAILIZED:I = -0x2

.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field private m_State:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    .line 41
    const-string v1, "Hardware Camera-Switch Button Controller"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/camera/component/HwCameraSwitchButtonBase;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 33
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 45
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->getButtonState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HwCameraSwitchButton$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HwCameraSwitchButton$1;-><init>(Lcom/android/camera/component/HwCameraSwitchButton;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 80
    iget-object v1, p1, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HwCameraSwitchButton$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HwCameraSwitchButton$2;-><init>(Lcom/android/camera/component/HwCameraSwitchButton;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 91
    iget-object v1, p1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HwCameraSwitchButton$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HwCameraSwitchButton$3;-><init>(Lcom/android/camera/component/HwCameraSwitchButton;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 102
    return-void

    .line 50
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Initialize mode to CAMERA_MODE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Initialize mode to VIDEO_MODE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Unable to initialize mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/camera/component/HwCameraSwitchButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/component/HwCameraSwitchButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/HwCameraSwitchButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->updateMode()V

    return-void
.end method

.method public static hasButton()Z
    .locals 2

    .prologue
    .line 170
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMode()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    .line 204
    .local v9, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v0, v9, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Capture UI is closed, cancel switching mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget v0, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    packed-switch v0, :pswitch_data_0

    .line 221
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to switch to undefined mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_0
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v9, v0}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    move-result v10

    .line 224
    .local v10, result:Z
    :goto_1
    if-nez v10, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Fail to switch camera mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/HwCameraSwitchButton;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0

    .line 218
    .end local v10           #result:Z
    :pswitch_1
    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v9, v0}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    move-result v10

    .line 219
    .restart local v10       #result:Z
    goto :goto_1

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getButtonState()I
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 110
    iget v4, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 112
    invoke-static {}, Lcom/android/camera/component/HwCameraSwitchButton;->hasButton()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 117
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_2d_3d_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, result:I
    packed-switch v2, :pswitch_data_0

    .line 125
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined button state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v2           #result:I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    :goto_1
    return v3

    .line 122
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v2       #result:I
    :pswitch_0
    :try_start_1
    iput v2, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 130
    .end local v2           #result:I
    :catch_0
    move-exception v1

    .line 132
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Cannot get hardware camera switch button state"

    invoke-static {v4, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 138
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_1
    iput v3, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->handleMessage(Landroid/os/Message;)V

    .line 163
    :goto_0
    return-void

    .line 156
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->updateMode()V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onButtonStateChanged(Landroid/content/Intent;Landroid/view/KeyEvent;)V
    .locals 10
    .parameter "intent"
    .parameter "keyEvent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    .line 181
    .local v9, state:I
    packed-switch v9, :pswitch_data_0

    .line 187
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined button state : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v9, -0x1

    .line 193
    :pswitch_0
    iput v9, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    .line 194
    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/HwCameraSwitchButton;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 195
    return-void

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
