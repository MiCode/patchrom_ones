.class public Lcom/htc/lockscreen/music/MusicRemoteCtrl;
.super Ljava/lang/Object;
.source "MusicRemoteCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;,
        Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;
    }
.end annotation


# static fields
.field public static final PLAYSTATE_HIDE_PANEL:I = 0x2711


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;)V
    .locals 2
    .parameter "context"
    .parameter "displayControl"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    invoke-direct {v0, p2}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;-><init>(Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;)V

    iput-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    .line 21
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mAudioManager:Landroid/media/AudioManager;

    .line 22
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 24
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    .line 31
    :cond_0
    return-void
.end method
