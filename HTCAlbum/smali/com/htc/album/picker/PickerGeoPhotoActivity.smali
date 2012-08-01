.class public Lcom/htc/album/picker/PickerGeoPhotoActivity;
.super Lcom/htc/album/picker/PickerItemActivity;
.source "PickerGeoPhotoActivity.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoPhotoActivity"


# instance fields
.field private mCarDockListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/album/picker/PickerItemActivity;-><init>()V

    .line 107
    new-instance v0, Lcom/htc/album/picker/PickerGeoPhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/album/picker/PickerGeoPhotoActivity$1;-><init>(Lcom/htc/album/picker/PickerGeoPhotoActivity;)V

    iput-object v0, p0, Lcom/htc/album/picker/PickerGeoPhotoActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 4

    .prologue
    .line 48
    iget-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 66
    :goto_0
    return-object v2

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoPhotoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 57
    new-instance v2, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    sget-object v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;)V

    iput-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 58
    iget-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->getActionBarContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 59
    .local v1, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 66
    .end local v1           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    :cond_1
    iget-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstance"

    .prologue
    const/16 v1, 0x400

    .line 30
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerGeoPhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 31
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 33
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 34
    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 35
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerItemActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/htc/album/picker/PickerItemActivity;->onStart()V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, f:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/album/picker/PickerGeoPhotoActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/picker/PickerGeoPhotoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public onStartFragment()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/htc/album/picker/PickerGeoPhotoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/picker/PickerGeoPhotoActivity;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 43
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/picker/PickerGeoPhotoActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/PickerGeoPhotoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    invoke-super {p0}, Lcom/htc/album/picker/PickerItemActivity;->onStop()V

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "PickerGeoPhotoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onStop] Exception while unregister car dock listener, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
