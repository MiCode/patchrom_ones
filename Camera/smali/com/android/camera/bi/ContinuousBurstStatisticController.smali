.class public Lcom/android/camera/bi/ContinuousBurstStatisticController;
.super Lcom/android/camera/component/UIComponent;
.source "ContinuousBurstStatisticController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Continuous Burst snap Statistic Controller"


# instance fields
.field protected mContinuousHistory:Ljava/lang/StringBuffer;

.field private mPhoto_taken:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 31
    const-string v0, "ContinuousBurstStaticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/bi/ContinuousBurstStatisticController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/bi/ContinuousBurstStatisticController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/bi/ContinuousBurstStatisticController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 6

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 42
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v4, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 44
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {p0}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 46
    .local v0, activity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    const-string v5, "pref_bi_continuousburst_history"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, history:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 48
    iget-object v4, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_0
    new-instance v3, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;-><init>(Lcom/android/camera/bi/ContinuousBurstStatisticController;Lcom/android/camera/HTCCamera;)V

    .line 97
    .local v3, m_MediaSavedFinishedEventHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/MediaEventArgs;>;"
    new-instance v4, Lcom/android/camera/bi/ContinuousBurstStatisticController$2;

    invoke-direct {v4, p0, v1, v3}, Lcom/android/camera/bi/ContinuousBurstStatisticController$2;-><init>(Lcom/android/camera/bi/ContinuousBurstStatisticController;Lcom/android/camera/CameraThread;Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 107
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;

    invoke-direct {v5, p0, v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController$3;-><init>(Lcom/android/camera/bi/ContinuousBurstStatisticController;Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 127
    return-void
.end method
