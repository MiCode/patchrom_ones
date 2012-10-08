.class public Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;
.super Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;
.source "MfFragmentMainOnline.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfFragmentMainOnline"

.field private static final OPENSENSE_ACTION_ALBUM:Ljava/lang/String; = "com.htc.album.actions.opensense.albums"


# instance fields
.field private mGotoScene:Ljava/lang/String;

.field protected mIsExternal:Z

.field private mIsOpensenseAlbum:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    return-void
.end method

.method private startSceneFromDMC(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 127
    const-string v2, "dmc_bundle"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 128
    .local v1, bundleData:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 130
    const-string v2, "MfFragmentMainOnline"

    const-string v3, "[HTCAlbum][ActivityMainOnline][startSceneFromDMC]: bundleData NG !"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v2, "video"

    const-string v3, "from_where"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .local v0, bIsFromVideoLaunch:Z
    if-eqz v0, :cond_1

    .line 137
    const-string v2, "MfFragmentMainOnline"

    const-string v3, "[HTCAlbum][ActivityMainOnline][startSceneFromDMC]: Lanch from Video."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    const-string v2, "service_name"

    const-string v3, "service_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v2, "service_url"

    const-string v3, "service_url"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v2, "tab_default"

    const-string v3, "tab_default"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "com.htc.album.action.DLNA_VIEW_ONLINE_PHOTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v2, v1, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v2, "com.htc.album.action.DLNA_VIEW_ONLINE_BROWSE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneOnlinePhotoThumbnail"

    invoke-virtual {v2, v1, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_3
    const-string v2, "MfFragmentMainOnline"

    const-string v3, "[HTCAlbum][ActivityMainOnline][startSceneFromDMC]: Impossible There is no this action !"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSceneWithIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "service_name"

    const-string v2, "service_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "user_id"

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "album_id"

    const-string v2, "album_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "album_name"

    const-string v2, "album_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "flag_genuine"

    const-string v2, "flag_genuine"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    const-string v1, "from_tabhost"

    const-string v2, "from_tabhost"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    const-string v1, "from_albumhost"

    const-string v2, "from_albumhost"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    const-string v1, "from_tmoFaves"

    const-string v2, "from_tmoFaves"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v1, "opensense_pugin"

    const-string v2, "opensense_pugin"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    const-string v1, "user_name"

    const-string v2, "user_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "user_buddyicon"

    const-string v2, "user_buddyicon"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "from_outside"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "online_scene"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private startWatchViewerScene(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "from_watch"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    const-string v1, "album_id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "opensense_pugin"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string v1, "service_name"

    const-string v2, "WatchDataPlugin"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, v0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method public enable2Pane()Z
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 235
    :cond_0
    return v0
.end method

.method protected enableProgressInterrupt()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 196
    const v0, 0x7f03002c

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onBackPressedOverride()Z
    .locals 5

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 329
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, strAction:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 332
    const/4 v1, 0x0

    .line 337
    .local v1, isLaunchFromDMC:Z
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v1

    .line 339
    if-eqz v1, :cond_0

    .line 341
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 344
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v2, :cond_0

    .line 345
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v4

    .line 350
    .end local v1           #isLaunchFromDMC:Z
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return v4

    :cond_0
    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onBackPressedOverride()Z

    move-result v4

    goto :goto_0
.end method

.method public onCreateScene()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, bundleArg:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 69
    const-string v7, "MfFragmentMainOnline"

    const-string v8, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: no arguments..."

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return v6

    .line 72
    :cond_0
    const-string v8, "social_intent"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 73
    .local v2, intentArg:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 75
    const-string v7, "MfFragmentMainOnline"

    const-string v8, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: no social intent..."

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, szAction:Ljava/lang/String;
    const-string v8, "MfFragmentMainOnline"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v5, :cond_2

    const-string v8, "com.htc.album.actions.opensense.albums"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 81
    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    .line 83
    :cond_2
    const-string v8, "from_outside"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    .line 84
    const-string v8, "com.htc.album.action.VIEW_WATCH_ONLINE_FULLSCREEN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 85
    .local v3, isWatch:Z
    const-string v8, "goto_scene"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    .line 87
    iget-boolean v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-eqz v8, :cond_4

    .line 89
    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: external..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->startSceneWithIntent(Landroid/content/Intent;)V

    .line 113
    :goto_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 115
    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070036

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int v4, v8, v9

    .line 117
    .local v4, nTop:I
    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v8, v6, v4, v6, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setPadding(IIII)V

    .end local v4           #nTop:I
    :cond_3
    move v6, v7

    .line 122
    goto/16 :goto_0

    .line 92
    :cond_4
    if-eqz v3, :cond_5

    .line 94
    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: 2..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->startWatchViewerScene(Landroid/content/Intent;)V

    goto :goto_1

    .line 97
    :cond_5
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 99
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->startSceneFromDMC(Landroid/content/Intent;)V

    goto :goto_1

    .line 101
    :cond_6
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 103
    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: 3..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v8, "social_bundle"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 105
    .local v1, bundleSocial:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    .end local v1           #bundleSocial:Landroid/os/Bundle;
    :cond_7
    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: 4..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v9, 0x0

    const-string v10, "SceneOnlineFolder"

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 50
    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onNewIntent]:... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->onCreateScene()Z

    .line 60
    return-void
.end method

.method public paneRight()Z
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 249
    :cond_0
    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneOnlineFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;-><init>()V

    .line 217
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    const-string v1, "SceneOnlinePhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 212
    :cond_2
    const-string v1, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 214
    :cond_3
    const-string v1, "ScenePhotoTagEditor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    new-instance v0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0
.end method

.method public sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    .locals 4
    .parameter "szIdentity"

    .prologue
    .line 315
    const-string v1, "MfFragmentMainOnline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainOnline][sceneSourceFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v0, Lcom/htc/album/UploadEditor/SceneSourceLive;

    invoke-direct {v0}, Lcom/htc/album/UploadEditor/SceneSourceLive;-><init>()V

    .line 318
    .local v0, plugin:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    return-object v0
.end method
