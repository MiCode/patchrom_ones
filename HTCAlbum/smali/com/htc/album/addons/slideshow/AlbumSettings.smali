.class public Lcom/htc/album/addons/slideshow/AlbumSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "AlbumSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;,
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;,
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;
    }
.end annotation


# static fields
.field public static final SLIDE_SHOW_ASK_MUSIC_KEY:Ljava/lang/String; = "slide_show_ask_music_setting"

.field public static final SLIDE_SHOW_FOLDER_PICKER_KEY:Ljava/lang/String; = "slide_show_folder_picker_setting"

.field public static final SLIDE_SHOW_MUSIC_DISPLAY_KEY:Ljava/lang/String; = "slide_show_music_display"

.field public static final SLIDE_SHOW_MUSIC_ENABLE_KEY:Ljava/lang/String; = "slide_show_music_enable_setting"

.field public static final SLIDE_SHOW_MUSIC_FILE_PATH_KEY:Ljava/lang/String; = "slide_show_music_file_path"

.field public static final SLIDE_SHOW_MUSIC_PICKER_KEY:Ljava/lang/String; = "slide_show_music_picker_setting"

.field public static final SLIDE_SHOW_ORIENTATION_KEY:Ljava/lang/String; = "slide_show_orientation_setting"

.field public static final SLIDE_SHOW_REPEAT_KEY:Ljava/lang/String; = "slide_show_repeat_setting"

.field public static final SLIDE_SHOW_SHUFFLE_KEY:Ljava/lang/String; = "slide_show_shuffle_setting"

.field public static final SLIDE_SHOW_SPEED_KEY:Ljava/lang/String; = "slide_show_duration_setting"

.field public static final SLIDE_SHOW_TRANS_KEY:Ljava/lang/String; = "slide_show_transition_setting"

.field private static final TAG:Ljava/lang/String; = "AlbumSettings"

.field private static final mFolderPickerRequestCode:I = 0xd673

.field private static final mMusicPickerRequestCode:I = 0x18605


# instance fields
.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mCurrentMode:Ljava/lang/String;

.field private mFolderPicker:Lcom/htc/preference/HtcPreference;

.field private mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mMusicPickerPre:Lcom/htc/preference/HtcPreference;

.field private mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field private mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

.field private mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

.field private mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSlideshowShufflePref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method public static getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "activity"
    .parameter "contentUri"

    .prologue
    .line 223
    if-nez p1, :cond_1

    const/4 v11, 0x0

    .line 269
    :cond_0
    :goto_0
    return-object v11

    .line 224
    :cond_1
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 225
    .local v2, proj:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 226
    .local v12, strFilePath:Ljava/lang/String;
    const/4 v11, 0x0

    .line 227
    .local v11, strDisplay:Ljava/lang/String;
    const/4 v13, 0x0

    .line 229
    .local v13, strTemp:Ljava/lang/String;
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: Query Cursor start !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 233
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 235
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 239
    .local v6, column_index:I
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 240
    if-eqz v13, :cond_2

    move-object v12, v13

    .line 244
    :cond_2
    const/4 v13, 0x0

    .line 245
    const-string v0, "album"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 246
    .local v7, column_index_album:I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 248
    const-string v0, "title"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 249
    .local v8, column_index_title:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 250
    if-eqz v13, :cond_3

    move-object v11, v13

    .line 253
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v6           #column_index:I
    .end local v7           #column_index_album:I
    .end local v8           #column_index_title:I
    :cond_4
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: Query Cursor end !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eqz v11, :cond_5

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :cond_5
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: cursor.getString NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 256
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 257
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: cursor.getString Exception !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V
    .locals 3
    .parameter "prefernce"
    .parameter "value"

    .prologue
    .line 324
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 327
    .local v1, seq:[Ljava/lang/CharSequence;
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    .end local v1           #seq:[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strFolderType"

    .prologue
    const/4 v4, 0x2

    .line 406
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 421
    :goto_0
    return-object v2

    .line 408
    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 409
    .local v0, ret:[Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, type:Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 412
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 414
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 416
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_1

    .line 421
    :cond_3
    aget-object v2, v0, v4

    goto :goto_0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 3

    .prologue
    .line 449
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 475
    :goto_0
    return-object v1

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 453
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 455
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 456
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    .line 459
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const v2, 0x7f0a0095

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    .line 461
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    new-instance v2, Lcom/htc/album/addons/slideshow/AlbumSettings$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/AlbumSettings$1;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 190
    if-ne v6, p2, :cond_2

    const v5, 0x18605

    if-ne p1, v5, :cond_2

    .line 191
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, selectSoundUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, csValue:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 195
    .local v2, strFileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_1

    .line 200
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_picker_setting"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v0       #csValue:Ljava/lang/CharSequence;
    .restart local v1       #selectSoundUri:Landroid/net/Uri;
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 211
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_2
    if-ne v6, p2, :cond_0

    const v5, 0xd673

    if-ne p1, v5, :cond_0

    .line 212
    const-string v5, "folder_type"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, strFolderType:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 215
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_folder_picker_setting"

    invoke-virtual {v5, v6, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, strFolderName:Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 79
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/AlbumSettings;->requestWindowFeature(I)Z

    .line 80
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 81
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "slideshow_setting_mode"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    .line 85
    new-instance v8, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 86
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v8, p0, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    .line 88
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    const-string v11, "album_mode"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 89
    const v8, 0x7f050001

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/AlbumSettings;->addPreferencesFromResource(I)V

    .line 101
    :goto_0
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_repeat_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, strKey:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 104
    :cond_0
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_shuffle_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowShufflePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 107
    :cond_1
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_orientation_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcListPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    .line 110
    :cond_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_transition_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcListPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    .line 113
    :cond_3
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_duration_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_4

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcListPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    .line 117
    :cond_4
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_music_enable_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 120
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_music_picker_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    .line 124
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    .line 128
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v8, v11}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 129
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v8, v11}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 130
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v8, v11}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 132
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 133
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 134
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 135
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v11, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;

    invoke-direct {v11, p0}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 136
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    new-instance v11, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;

    invoke-direct {v11, p0}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 137
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    new-instance v11, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;

    invoke-direct {v11, p0}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 140
    :cond_5
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateOrientationPref(I)V

    .line 143
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateRepeatPref(I)V

    .line 146
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updatePlaybackSpeedPref(I)V

    .line 149
    const/4 v6, 0x0

    .line 150
    .local v6, strSunnary:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_music_picker_setting"

    const-string v12, ""

    invoke-virtual {v8, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 152
    .local v7, uriTemp:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 153
    .local v2, strFilename:Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 156
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    if-eqz v8, :cond_a

    move v1, v9

    .line 157
    .local v1, isEnableMusic:Z
    :goto_1
    if-eqz v1, :cond_6

    .line 159
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_music_enable_setting"

    invoke-virtual {v8, v11, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 160
    .local v0, bEnableMusic:Z
    if-ne v0, v9, :cond_b

    if-eqz v2, :cond_b

    .line 162
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 163
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 164
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    .end local v0           #bEnableMusic:Z
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    if-eqz v8, :cond_7

    .line 183
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "slide_show_folder_picker_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, strFolderType:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, strFolderName:Ljava/lang/String;
    if-eqz v3, :cond_7

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    .end local v1           #isEnableMusic:Z
    .end local v2           #strFilename:Ljava/lang/String;
    .end local v3           #strFolderName:Ljava/lang/String;
    .end local v4           #strFolderType:Ljava/lang/String;
    .end local v5           #strKey:Ljava/lang/String;
    .end local v6           #strSunnary:Ljava/lang/String;
    .end local v7           #uriTemp:Landroid/net/Uri;
    :cond_7
    :goto_3
    return-void

    .line 90
    :cond_8
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    const-string v11, "dock_mode"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 91
    const v8, 0x7f050002

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/AlbumSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 94
    :cond_9
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->finish()V

    .line 95
    const-string v8, "AlbumSettings"

    const-string v9, "[HTCAlbum][AlbumSetting][onCreate]: unknow mode !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .restart local v2       #strFilename:Ljava/lang/String;
    .restart local v5       #strKey:Ljava/lang/String;
    .restart local v6       #strSunnary:Ljava/lang/String;
    .restart local v7       #uriTemp:Landroid/net/Uri;
    :cond_a
    move v1, v10

    .line 156
    goto :goto_1

    .line 166
    .restart local v0       #bEnableMusic:Z
    .restart local v1       #isEnableMusic:Z
    :cond_b
    if-eqz v2, :cond_c

    .line 168
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 169
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 170
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 174
    :cond_c
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 175
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 176
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    const v9, 0x7f0a001f

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 337
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 338
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 353
    const-string v0, "AlbumSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 357
    check-cast v0, Lcom/htc/preference/HtcListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 361
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateOrientationPref(I)V

    move-object v0, p2

    .line 362
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateRepeatPref(I)V

    .line 363
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updatePlaybackSpeedPref(I)V

    .line 366
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 343
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 344
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 350
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateOrientationPref(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 371
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updatePlaybackSpeedPref(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 392
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 394
    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, FAST:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v1, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 403
    .end local v0           #FAST:Ljava/lang/String;
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updateRepeatPref(I)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 379
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 382
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
