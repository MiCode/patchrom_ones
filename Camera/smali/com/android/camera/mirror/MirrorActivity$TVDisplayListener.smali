.class Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;
.super Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
.source "MirrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/mirror/MirrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TVDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/mirror/MirrorActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/mirror/MirrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/mirror/MirrorActivity;Lcom/android/camera/mirror/MirrorActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;-><init>(Lcom/android/camera/mirror/MirrorActivity;)V

    return-void
.end method


# virtual methods
.method public onTVOff()V
    .locals 3

    .prologue
    .line 573
    const-string v1, "MirrorActivity"

    const-string v2, "Reset remote screen orientation onTVOff"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    #getter for: Lcom/android/camera/mirror/MirrorActivity;->m_isActivityPaused:Z
    invoke-static {v1}, Lcom/android/camera/mirror/MirrorActivity;->access$600(Lcom/android/camera/mirror/MirrorActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    const-string v1, "MirrorActivity"

    const-string v2, "isActivityPaused = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapSurface;->resetRemoteScreenOrientation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 587
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MirrorActivity"

    const-string v2, "Rotate remote Camera layout may not support"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTVOn()V
    .locals 3

    .prologue
    .line 594
    const-string v1, "MirrorActivity"

    const-string v2, "set remote screen orientation onTVOn"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;->this$0:Lcom/android/camera/mirror/MirrorActivity;

    #getter for: Lcom/android/camera/mirror/MirrorActivity;->m_isActivityPaused:Z
    invoke-static {v1}, Lcom/android/camera/mirror/MirrorActivity;->access$600(Lcom/android/camera/mirror/MirrorActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    const-string v1, "MirrorActivity"

    const-string v2, "isActivityPaused = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :cond_1
    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 608
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MirrorActivity"

    const-string v2, "Rotate remote Camera layout may not support"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
