.class public Lcom/htc/album/SocialNetwork/ActivityMainOnline;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "ActivityMainOnline.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainOnline"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstance"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onStartFragment()V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 59
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, bundleSocial:Landroid/os/Bundle;
    const-string v2, "social_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    const-class v2, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 64
    return-void
.end method

.method public sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    .locals 4
    .parameter "szIdentity"

    .prologue
    .line 46
    const-string v1, "ActivityMainOnline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainOnline][sceneSourceFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/htc/album/UploadEditor/SceneSourceLive;

    invoke-direct {v0}, Lcom/htc/album/UploadEditor/SceneSourceLive;-><init>()V

    .line 49
    .local v0, plugin:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    return-object v0
.end method
