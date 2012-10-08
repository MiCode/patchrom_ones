.class public Lcom/android/camera/bi/VideoModeRecordStatisticController;
.super Lcom/android/camera/bi/MediaStatisticController;
.source "VideoModeRecordStatisticController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "VideoMode Record Statistic Controller"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 29
    const-string v0, "VideoModeRecordStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/bi/MediaStatisticController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getSlowMotionKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    const-string v0, "1"

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getVideoQualityKeyValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 72
    .local v0, activity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v3

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v3, v0, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 75
    .local v1, resolution:Lcom/android/camera/Resolution;
    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getVideoStabilizationKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isVideoStabilizationEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    const-string v0, "1"

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/camera/bi/MediaStatisticController;->initializeOverride()V

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    .line 43
    const-string v1, "pref_bi_video_setting_recording_history"

    invoke-virtual {p0, v1}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 48
    .local v0, activity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/bi/VideoModeRecordStatisticController$1;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/bi/VideoModeRecordStatisticController$1;-><init>(Lcom/android/camera/bi/VideoModeRecordStatisticController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method protected rebuildComposeKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    iget-boolean v2, p0, Lcom/android/camera/bi/MediaStatisticController;->mIsResetToDefault:Z

    if-eqz v2, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 93
    .local v1, settingsbuffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getCameraTypeKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getEffectKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getSlowMotionKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getVideoQualityKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getReviewDurationKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getVideoStabilizationKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, result:Ljava/lang/String;
    goto :goto_0
.end method

.method protected writeBehaviorData(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/camera/bi/VideoModeRecordStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_bi_video_setting_recording_history"

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 124
    return-void
.end method
