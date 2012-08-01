.class public Lcom/htc/album/AlbumCommon/AlbumLauncher;
.super Ljava/lang/Object;
.source "AlbumLauncher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/album/AlbumCommon/AlbumLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gotoAlbumList(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 183
    return-void
.end method

.method public static gotoCamera(Landroid/app/Activity;Z)V
    .locals 9
    .parameter "activity"
    .parameter "bVideoMode"

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "preview_mode"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 26
    sget-object v6, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "go to Camera by close album(came from camera)"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "preview_mode"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    :cond_0
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_1

    .line 62
    sget-object v6, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][AlbumLauncher][gotoCamera]overrideRotateAnimation, TYPE_NO_ROTATE_ANIMATION"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/16 v6, 0x68

    invoke-static {p0, v6}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    .line 65
    :cond_1
    return-void

    .line 33
    :cond_2
    sget-object v6, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Launch Camera by start a new Activity"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v1, camera:Landroid/content/Intent;
    const/high16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    if-eqz p1, :cond_5

    .line 38
    const-string v6, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :goto_0
    const-string v6, "RequestedFrom"

    const-string v7, "album"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 45
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 46
    .local v5, supportCameraApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 47
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 48
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 49
    .local v4, resoInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 50
    .local v0, appInfo:Landroid/content/pm/ActivityInfo;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.htc.camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 51
    :cond_3
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    const/16 v6, 0x1390

    invoke-virtual {p0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40
    .end local v0           #appInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #i:I
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    .end local v4           #resoInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #supportCameraApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static gotoCollections(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 125
    return-void
.end method

.method public static gotoSnapbooth(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "preview_mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v2, "go to Camera by close album(came from camera)"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "preview_mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 86
    :goto_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    .line 89
    sget-object v1, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][AlbumLauncher][gotoSnapbooth]overrideRotateAnimation, TYPE_NO_ROTATE_ANIMATION"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/16 v1, 0x68

    invoke-static {p0, v1}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    .line 92
    :cond_0
    return-void

    .line 76
    :cond_1
    sget-object v1, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Launch Snapbooth by start a new Activity"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.snapbooth.action.LAUNCH_SNAPBOOTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, snapbooth:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    const-string v1, "RequestedFrom"

    const-string v2, "album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/16 v1, 0x139b

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static gotoVod(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 200
    return-void
.end method

.method public static gotoWirelessConnection(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
