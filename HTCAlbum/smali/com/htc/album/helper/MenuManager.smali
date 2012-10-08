.class public Lcom/htc/album/helper/MenuManager;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;,
        Lcom/htc/album/helper/MenuManager$RotateThread;,
        Lcom/htc/album/helper/MenuManager$SetAsFavorThread;,
        Lcom/htc/album/helper/MenuManager$RotateCallbackListener;,
        Lcom/htc/album/helper/MenuManager$RotateStateListener;,
        Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;,
        Lcom/htc/album/helper/MenuManager$UpdateLocationCallback;,
        Lcom/htc/album/helper/MenuManager$DecodeThumbTask;,
        Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;,
        Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    }
.end annotation


# static fields
.field public static final ACTION_SET_AS_CONTACTICON:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_SET_AS_FAVORITES:Ljava/lang/String; = "com.htc.HTCAlbum.MY_FAVORITES"

.field public static final ACTION_SET_AS_FOOTPRINTS:Ljava/lang/String; = "com.htc.android.setasFootprint"

.field public static final ACTION_SET_AS_LOCATIONS:Ljava/lang/String; = "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

.field public static final ACTION_SET_AS_WALLPAPER:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final DEFAULT_SHOW_TAG:Z = true

.field public static final DEFAULT_TAG_FIRSTTIME:Z = true

#the value of this static final field might be set in the static constructor
.field public static final DISABLE_GEOCODE_RELEATE_FUNCTION:Z = false

.field public static final EXCLUDE_ALL:I = -0x1

.field public static final EXCLUDE_BURSTSHOT_MODE:I = 0x200000

.field public static final EXCLUDE_COMMENT:I = 0x8000

.field public static final EXCLUDE_CROP_MENU:I = 0x8

.field public static final EXCLUDE_DELETE_MENU:I = 0x10

.field public static final EXCLUDE_DETAILS_MENU:I = 0x40

.field public static final EXCLUDE_EDIT_PHOTO_MENU:I = 0x40000

.field public static final EXCLUDE_NONE:I = 0x0

.field public static final EXCLUDE_PRINT_MENU:I = 0x80000

.field public static final EXCLUDE_PROTECTION_MENU:I = 0x80

.field public static final EXCLUDE_REFRESH:I = 0x1000

.field public static final EXCLUDE_ROTATE_MENU:I = 0x20

.field public static final EXCLUDE_SELECT_PLAYER:I = 0x20000

.field public static final EXCLUDE_SETTING_MENU:I = 0x100

.field public static final EXCLUDE_SET_AS_FAVORITE:I = 0x200

.field public static final EXCLUDE_SET_MENU:I = 0x4

.field public static final EXCLUDE_SHARELINK:I = 0x2000

.field public static final EXCLUDE_SHARE_MENU:I = 0x2

.field public static final EXCLUDE_SHOWHIDE_CAPTION:I = 0x4000

.field public static final EXCLUDE_SHOW_ON_MAP:I = 0x400

.field public static final EXCLUDE_SLIDESHOW_MENU:I = 0x1

.field public static final EXCLUDE_TAG:I = 0x10000

.field public static final EXCLUDE_TAG_HIDE:I = 0x100000

.field public static final EXCLUDE_VIEW_FULL:I = 0x800

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final PERF_TAG_TABLET_DETAILS:Ljava/lang/String; = "[showTabletItemDetails]"

.field public static final PKG_NAME_BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth"

.field public static final PKG_NAME_HTC_FACEBOOK:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final PKG_NAME_HTC_FLICKR:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final PKG_NAME_HTC_MAIL:Ljava/lang/String; = "com.htc.android.mail"

.field public static final PKG_NAME_HTC_MESSAGES:Ljava/lang/String; = "com.android.mms"

.field public static final PKG_NAME_HTC_RENREN:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin"

.field public static final PKG_NAME_HTC_SINA:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final PKG_NAME_HTC_SINAWEIBO:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final PKG_NAME_HTC_TWITTER:Ljava/lang/String; = "com.htc.htctwitter"

.field private static final sDateFormat:Ljava/lang/CharSequence;


# instance fields
.field private final EDIT_MENU_ID_ADJUST_3D_ALIGNMENT:I

.field private final EDIT_MENU_ID_CROP:I

.field private final EDIT_MENU_ID_EFFECTS:I

.field private final EDIT_MENU_ID_ROTATE_LEFT:I

.field private final EDIT_MENU_ID_ROTATE_RIGHT:I

.field private final EDIT_MENU_ID_SAVE_AS_2D:I

.field private detailThumb:Landroid/graphics/Bitmap;

.field private imgName:Ljava/lang/String;

.field private imgSubName:Ljava/lang/String;

.field private mCustomChooser:Landroid/app/AlertDialog;

.field private mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

.field private mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

.field public mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

.field private mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field private mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

.field private mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

.field private mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

.field private mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

.field private mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

.field public mbAllowEdit:Z

.field private tmpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    const-class v0, Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    .line 185
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    .line 5369
    const-string v0, "yyyy-MM-dd"

    sput-object v0, Lcom/htc/album/helper/MenuManager;->sDateFormat:Ljava/lang/CharSequence;

    return-void

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 176
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 178
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_SAVE_AS_2D:I

    .line 179
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_ADJUST_3D_ALIGNMENT:I

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_CROP:I

    .line 181
    iput v2, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_EFFECTS:I

    .line 182
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_ROTATE_RIGHT:I

    .line 183
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_ROTATE_LEFT:I

    .line 189
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    .line 191
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 194
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 197
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 216
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    .line 5362
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    .line 5363
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    .line 5364
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 5365
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    .line 5366
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->tmpName:Ljava/lang/String;

    .line 5367
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    .line 5375
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 5376
    iput-boolean v2, p0, Lcom/htc/album/helper/MenuManager;->mbAllowEdit:Z

    .line 229
    return-void
.end method

.method public static CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "act"
    .parameter "sData"
    .parameter "type"

    .prologue
    .line 1040
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CallPrintDialog2]+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1043
    :cond_0
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CallPrintDialog2]-:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :goto_0
    return-void

    .line 1049
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1051
    .local v1, data:Landroid/net/Uri;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.westtek.jcp"

    const-string v5, "com.westtek.jcp.JCPRINT"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .local v0, component:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1055
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1057
    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1063
    .local v2, extras:Landroid/os/Bundle;
    const-string v4, "password"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1066
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1068
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[CallPrintDialog2]-"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GetDataPathByUri0(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 1075
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    .line 1076
    .local v2, columns:[Ljava/lang/String;
    const-string v7, ""

    .line 1077
    .local v7, dataPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1081
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1083
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1095
    :cond_0
    if-eqz v6, :cond_1

    .line 1097
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1098
    const/4 v6, 0x0

    .line 1102
    :cond_1
    :goto_0
    return-object v7

    .line 1089
    :catch_0
    move-exception v8

    .line 1091
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    if-eqz v6, :cond_1

    .line 1097
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1098
    const/4 v6, 0x0

    goto :goto_0

    .line 1095
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1097
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1098
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static GetDataPathByUri1(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 15
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 1107
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_size"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "date_modified"

    aput-object v1, v2, v0

    .line 1110
    .local v2, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1113
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1115
    if-nez v6, :cond_0

    .line 1116
    const-string v0, ""

    .line 1151
    :goto_0
    return-object v0

    .line 1118
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1120
    .local v10, n:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1123
    .local v11, x:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1124
    .local v12, y:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v13, v0

    .line 1125
    .local v13, z:J
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v7, v0

    .line 1127
    .local v7, d:J
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1131
    .end local v7           #d:J
    .end local v10           #n:I
    .end local v11           #x:Ljava/lang/String;
    .end local v12           #y:Ljava/lang/String;
    .end local v13           #z:J
    :catch_0
    move-exception v9

    .line 1133
    .local v9, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz v6, :cond_2

    .line 1140
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1141
    const/4 v6, 0x0

    .line 1151
    :cond_2
    :goto_2
    const-string v0, ""

    goto :goto_0

    .line 1144
    :catch_1
    move-exception v9

    .line 1146
    .restart local v9       #e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception][close]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$RotateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/album/helper/MenuManager$RotateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$SetAsFavorThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$DecodeThumbTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/MenuManager;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/album/helper/MenuManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p7}, Lcom/htc/album/helper/MenuManager;->renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 117
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    .locals 5
    .parameter "context"
    .parameter "detailsContainer"
    .parameter "resID"
    .parameter "value"
    .parameter "bFirstRowAdded"

    .prologue
    .line 3762
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3764
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[addRowToDetailsContainer] Null context or detailsContainer found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3765
    const/4 v3, 0x0

    .line 3779
    :goto_0
    return v3

    .line 3768
    :cond_1
    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3769
    .local v0, rowLayout:Landroid/widget/LinearLayout;
    invoke-static {v0, p4}, Lcom/htc/album/helper/MenuManager;->setItemDetailsShadowBg(Landroid/view/View;Z)V

    .line 3771
    const v3, 0x7f09001f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3772
    .local v1, textNameView:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 3774
    const v3, 0x7f090020

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3775
    .local v2, textValueView:Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3777
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3779
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static callSharePicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;Ljava/lang/Object;)V
    .locals 10
    .parameter "activity"
    .parameter "collectionInfo"
    .parameter "ri"
    .parameter "objExtra"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1198
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1200
    :cond_0
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[callSharePicker] Null activity or adapter or IComparableRI found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    .end local p3
    :cond_1
    :goto_0
    return-void

    .line 1204
    .restart local p3
    :cond_2
    invoke-interface {p2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p0, v7}, Lcom/htc/album/helper/ShareMenuManager;->updateRecord(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 1206
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1207
    .local v3, share:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v4

    .line 1208
    .local v4, supportType:I
    sget-object v7, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][ShareMenuManager][callSharePicker]: type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const/high16 v7, 0x2

    and-int/2addr v7, v4

    if-eqz v7, :cond_7

    move v1, v5

    .line 1212
    .local v1, multiPicker:Z
    :goto_1
    if-eqz v1, :cond_8

    .line 1213
    const-string v7, "com.htc.album.ACTION_PICK_NF_MULTIPLE_ITEM"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    :goto_2
    invoke-interface {p2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1218
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1221
    const-string v7, "com.htc.android.mail"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.android.bluetooth"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1223
    :cond_3
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1270
    :goto_3
    const-string v7, "com.htc.socialnetwork.flickr"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.htc.socialnetwork.facebook"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v2}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1272
    :cond_4
    const-string v7, "request_htc_upload_list"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1276
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1277
    .local v0, extras:Landroid/os/Bundle;
    const-string v7, "collection_info"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1278
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1280
    if-eqz p3, :cond_6

    .line 1282
    instance-of v7, p3, [I

    if-eqz v7, :cond_6

    .line 1283
    const-string v7, "photoIds"

    check-cast p3, [I

    .end local p3
    check-cast p3, [I

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1286
    :cond_6
    const-string v7, "do_share"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1287
    const-string v7, "force_2d_result"

    invoke-static {v2}, Lcom/htc/album/helper/MenuManager;->support3DShare(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    :goto_4
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1291
    if-eqz v1, :cond_11

    .line 1293
    const-string v5, "request_3d_list"

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->show3DVirtualFolder()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1294
    const/high16 v5, 0x22

    invoke-virtual {p0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #multiPicker:Z
    .end local v2           #pkgName:Ljava/lang/String;
    .restart local p3
    :cond_7
    move v1, v6

    .line 1210
    goto/16 :goto_1

    .line 1215
    .restart local v1       #multiPicker:Z
    :cond_8
    const-string v7, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1226
    .restart local v2       #pkgName:Ljava/lang/String;
    :cond_9
    const-string v7, "com.android.mms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1228
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 1231
    :cond_a
    const-string v7, "com.htc.mmsmediaproxy"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1233
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1236
    :cond_b
    const-string v7, "com.htc.customizepkg1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1238
    const-string v7, "image/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1249
    :cond_c
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_d

    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_d

    .line 1251
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1254
    :cond_d
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_e

    .line 1256
    const-string v7, "image/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1257
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1259
    :cond_e
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_f

    .line 1261
    const-string v7, "video/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1262
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1266
    :cond_f
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[callSharePicker] Unsupported type found!!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local p3
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_10
    move v5, v6

    .line 1287
    goto/16 :goto_4

    .line 1298
    :cond_11
    const/high16 v5, 0x11

    invoke-virtual {p0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public static callSharePickerForPrint(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;)V
    .locals 4
    .parameter "activity"
    .parameter "collectionInfo"

    .prologue
    .line 1156
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1158
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[callSharePickerForPrint] Null activity or collectionInfo not found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :goto_0
    return-void

    .line 1162
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1164
    .local v1, share:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1165
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "collection_info"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1166
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1168
    const-string v2, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    const-string v2, "MimeTypeFilter"

    sget-object v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->sPrintSupport:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string v2, "show_drm_shareable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1173
    const-string v2, "disable_2d_conversion"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1175
    const/high16 v2, 0x55

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .parameter "act"
    .parameter "sData"

    .prologue
    .line 2382
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.muvee.video.trimer"

    const-string v4, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    .local v0, component:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2392
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2394
    const-string v3, "com.muvee.video.trimer.VIDEO_TRIM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2396
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2398
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2402
    const/16 v3, 0x13ba

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2403
    return-void
.end method

.method public static doSetAsMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "shareIntent"
    .parameter "pickerResult"

    .prologue
    .line 1345
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1347
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[doSetAsMultiMedia] Null activity or pickerResult found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    .end local p0
    :goto_0
    return-void

    .line 1351
    .restart local p0
    :cond_1
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1353
    .local v0, andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v1, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v1}, Lcom/htc/album/helper/MenuManager;-><init>()V

    .line 1354
    .local v1, menuMgr:Lcom/htc/album/helper/MenuManager;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {v1, p0, v0}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static doSetAsSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "shareIntent"
    .parameter "imageUri"
    .parameter "mime"
    .parameter "isDRM"

    .prologue
    .line 1305
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1307
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[doSetAsSingleMedia] Null activity or shareIntent or imageUri found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    .end local p0
    :goto_0
    return-void

    .line 1311
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, action:Ljava/lang/String;
    const-string v3, "SharedAdapter.KEY_CLASS_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, className:Ljava/lang/String;
    const-string v3, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1316
    new-instance v2, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v2}, Lcom/htc/album/helper/MenuManager;-><init>()V

    .line 1317
    .local v2, menuMgr:Lcom/htc/album/helper/MenuManager;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {v2, p0, p2}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 1319
    .end local v2           #menuMgr:Lcom/htc/album/helper/MenuManager;
    .restart local p0
    :cond_2
    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1322
    const-class v3, Lcom/htc/album/TabPluginDevice/Wallpaper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1324
    invoke-static {p0, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->setWallpaper(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1328
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    const-string v3, "mimeType"

    invoke-virtual {p1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1333
    :cond_4
    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1335
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-static {p0, p2}, Lcom/htc/album/helper/MenuManager;->setLocations(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 1339
    .restart local p0
    :cond_5
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[doSetAsMedia] Not supported!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "shareIntent"
    .parameter "pickerResult"

    .prologue
    .line 1627
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1629
    :cond_0
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[doShareMultiMedia] Error..."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    :cond_1
    :goto_0
    return-void

    .line 1633
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1634
    .local v0, action:Ljava/lang/String;
    const-string v10, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1635
    .local v8, sharedPkgName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 1637
    .local v6, mime:Ljava/lang/String;
    const-string v10, "SharedAdapter.KEY_SHARE_TO"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    .line 1638
    .local v7, shareItemGroup:Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;
    if-eqz v7, :cond_3

    .line 1639
    const-string v10, "SharedAdapter.KEY_SHARE_TO"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1641
    :cond_3
    sget-object v10, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SHAREVIA:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    invoke-static {v10, v8}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 1642
    const-string v10, "com.htc.socialnetwork.facebook"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.htc.socialnetwork.flickr"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1645
    :cond_4
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMedias]: Facebook / Flickr, (sharedPkgName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " )"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1649
    .local v5, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 1651
    :cond_5
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMultiMedia]: mediaList is null or empty !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1657
    .local v3, intentShare:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v8, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    .local v2, conpont:Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1660
    const-string v10, "com.htc.socialnetwork.facebook"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1661
    .local v4, isFacebook:Z
    if-eqz v4, :cond_7

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v9, v10, v11

    .line 1664
    .local v9, strServiceName:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1665
    if-eqz v3, :cond_8

    .line 1667
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1668
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1669
    const-string v10, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    const-string v10, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1671
    const-string v10, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1672
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1661
    .end local v9           #strServiceName:Ljava/lang/String;
    :cond_7
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v9, v10, v11

    goto :goto_1

    .line 1675
    .restart local v9       #strServiceName:Ljava/lang/String;
    :cond_8
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMultiMedia]: setScanIntent NG ! strServiceName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1678
    .end local v2           #conpont:Landroid/content/ComponentName;
    .end local v3           #intentShare:Landroid/content/Intent;
    .end local v4           #isFacebook:Z
    .end local v5           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v9           #strServiceName:Ljava/lang/String;
    :cond_9
    invoke-static {v8}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1682
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1684
    .restart local v5       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_b

    .line 1686
    :cond_a
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMultiMedia]: mediaList is null or empty !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1691
    :cond_b
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMedias][]: +, Sina - sharedPkgName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1695
    .restart local v3       #intentShare:Landroid/content/Intent;
    invoke-static {p0, v8}, Lcom/htc/album/helper/MenuManager;->getIntentForUploadService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1697
    if-nez v3, :cond_c

    .line 1699
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMultiMedia]: can\'t get conponet name !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1703
    :cond_c
    const-string v10, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1704
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1705
    const-string v10, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1706
    const-string v10, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1707
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1708
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1711
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMedias]: -, Sina medialist: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1714
    .end local v3           #intentShare:Landroid/content/Intent;
    .end local v5           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_d
    const-string v10, "com.htc.android.mail"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1717
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMedias]: Package = com.htc.android.mail"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1720
    .local v1, andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1721
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1722
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1724
    .end local v1           #andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_e
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "com.htc.vmm.SEND_MULTIPLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1726
    :cond_f
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMedias]: Intent.ACTION_SEND_MULTIPLE"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1729
    .restart local v1       #andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1730
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 21
    .parameter "context"
    .parameter "shareIntent"
    .parameter "imageUri"
    .parameter "mime"

    .prologue
    .line 1416
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1422
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/high16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/album/helper/ShareMenuManager;->updateRecord(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 1425
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1426
    .local v3, action:Ljava/lang/String;
    const-string v18, "SharedAdapter.KEY_PACKAGE"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1427
    .local v14, sharedPkgName:Ljava/lang/String;
    const-string v18, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1428
    .local v15, sharedPkgNameForOther:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1430
    .local v11, selectSharePkgName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1432
    .local v6, fromAlbum:Z
    const-string v18, "SharedAdapter.KEY_SHARE_TO"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    .line 1433
    .local v13, shareItemGroup:Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;
    if-eqz v13, :cond_2

    .line 1434
    const-string v18, "SharedAdapter.KEY_SHARE_TO"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1436
    :cond_2
    if-eqz v14, :cond_5

    .line 1438
    const/4 v6, 0x1

    .line 1439
    move-object v11, v14

    .line 1447
    :cond_3
    :goto_1
    sget-object v18, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SHAREVIA:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 1448
    if-eqz v11, :cond_0

    .line 1450
    const-string v18, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "com.htc.socialnetwork.flickr"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1453
    :cond_4
    if-eqz v6, :cond_8

    .line 1457
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1458
    .local v7, intentShare:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v14, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    .local v5, conpont:Landroid/content/ComponentName;
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1461
    const-string v18, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1462
    .local v8, isFacebook:Z
    if-eqz v8, :cond_6

    sget-object v18, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v16, v18, v19

    .line 1465
    .local v16, strServiceName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1467
    if-eqz v7, :cond_7

    .line 1469
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    .local v9, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v17, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1473
    .local v4, bundle:Landroid/os/Bundle;
    const-string v18, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    const-string v18, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v18, "com.htc.opensense.upload.TITLE"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v18, "com.htc.opensense.upload.DESCRIPTION"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1480
    const-string v18, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    const-string v18, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1482
    const-string v18, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1483
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1441
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #conpont:Landroid/content/ComponentName;
    .end local v7           #intentShare:Landroid/content/Intent;
    .end local v8           #isFacebook:Z
    .end local v9           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v16           #strServiceName:Ljava/lang/String;
    .end local v17           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_5
    if-eqz v15, :cond_3

    .line 1443
    const/4 v6, 0x0

    .line 1444
    move-object v11, v15

    goto/16 :goto_1

    .line 1462
    .restart local v5       #conpont:Landroid/content/ComponentName;
    .restart local v7       #intentShare:Landroid/content/Intent;
    .restart local v8       #isFacebook:Z
    :cond_6
    sget-object v18, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v16, v18, v19

    goto :goto_2

    .line 1486
    .restart local v16       #strServiceName:Ljava/lang/String;
    :cond_7
    sget-object v18, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][MenuManager][doShareSingleMedia]: setScanIntent NG ! strServiceName: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1490
    .end local v5           #conpont:Landroid/content/ComponentName;
    .end local v7           #intentShare:Landroid/content/Intent;
    .end local v8           #isFacebook:Z
    .end local v16           #strServiceName:Ljava/lang/String;
    :cond_8
    sget-object v18, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v19, "[HTCAlbum][MenuManager][doShareSingleMedia]: com.htc.socialnetwork.facebook or com.htc.socialnetwork.flickr"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    .restart local v9       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1494
    .restart local v17       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1495
    .restart local v4       #bundle:Landroid/os/Bundle;
    const-string v18, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v18, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string v18, "com.htc.opensense.upload.TITLE"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const-string v18, "com.htc.opensense.upload.DESCRIPTION"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1502
    .restart local v7       #intentShare:Landroid/content/Intent;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    const-string v18, "SharedAdapter.KEY_CLASS_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    const-string v18, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    const-string v18, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1506
    const-string v18, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1507
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1510
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v7           #intentShare:Landroid/content/Intent;
    .end local v9           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v17           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_9
    invoke-static {v14}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1514
    sget-object v18, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][MenuManager][doShareSingleMedia]: +, sharedPkgName: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1519
    .restart local v7       #intentShare:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v14, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    .restart local v5       #conpont:Landroid/content/ComponentName;
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1522
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/htc/album/helper/MenuManager;->getIntentForUploadService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1524
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    .restart local v9       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1527
    .restart local v17       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1528
    .restart local v4       #bundle:Landroid/os/Bundle;
    const-string v18, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v18, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v18, "com.htc.opensense.upload.TITLE"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v18, "com.htc.opensense.upload.DESCRIPTION"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1535
    const-string v18, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    const-string v18, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1537
    const-string v18, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1539
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1542
    sget-object v18, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v19, "[HTCAlbum][MenuManager][doShareSingleMedia]: -"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1544
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #conpont:Landroid/content/ComponentName;
    .end local v7           #intentShare:Landroid/content/Intent;
    .end local v9           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v17           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_a
    const-string v18, "com.android.mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1546
    const-string v18, "android.intent.action.SEND_MSG"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1547
    invoke-virtual/range {p1 .. p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1550
    :cond_b
    const-string v18, "com.htc.vmm.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1552
    sget-object v18, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][MenuManager][doShareSingleVMMMedia]: Intent.ACTION_SEND: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->isGroupItem()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1555
    const/4 v12, 0x0

    .line 1556
    .local v12, shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const-string v18, "image"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1557
    const v18, 0x10001

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v12

    .line 1561
    :cond_c
    :goto_3
    if-eqz v12, :cond_d

    .line 1563
    invoke-interface {v12}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1564
    sget-object v18, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][MenuManager][doShareSingleVMMMedia]: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v12}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    .end local v12           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_d
    const-string v18, "com.htc.vmm.SEND"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1571
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1558
    .restart local v12       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_e
    const-string v18, "video"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1559
    const v18, 0x10002

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v12

    goto :goto_3

    .line 1575
    .end local v12           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_f
    const-string v18, "com.htc.mmsmediaproxy"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1577
    sget-object v18, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v19, "[HTCAlbum][MenuManager][doShareSingleMedia]: com.htc.mmsmediaproxy"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p1 .. p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1579
    const/high16 v18, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1580
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1584
    :cond_10
    sget-object v18, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][MenuManager][doShareSingleMedia]: Intent.ACTION_SEND: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->isGroupItem()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1587
    const/4 v12, 0x0

    .line 1588
    .restart local v12       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const-string v18, "image"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1589
    const v18, 0x10001

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v12

    .line 1593
    :cond_11
    :goto_4
    if-eqz v12, :cond_12

    .line 1595
    invoke-interface {v12}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1596
    sget-object v18, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][MenuManager][doShareSingleMedia]: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v12}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    .end local v12           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_12
    const-string v18, "android.intent.action.SEND"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1603
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1590
    .restart local v12       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_13
    const-string v18, "video"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1591
    const v18, 0x10002

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v12

    goto :goto_4
.end method

.method private static excludeItem(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "id"

    .prologue
    .line 567
    if-nez p0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 571
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 572
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static exclusionSlideShow(Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V
    .locals 7
    .parameter "image"
    .parameter "exclusion"

    .prologue
    const/4 v4, 0x1

    .line 246
    if-nez p0, :cond_1

    .line 248
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[exclusionSlideShow] Null image found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 254
    .restart local p0
    :cond_1
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    .line 255
    .local v2, isDRM:Z
    if-eqz v2, :cond_3

    check-cast p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p0
    move-object v1, p0

    .line 257
    .local v1, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v0

    .line 258
    .local v0, drmType:I
    :goto_2
    if-ne v0, v4, :cond_5

    move v3, v4

    .line 260
    .local v3, isDRMFL:Z
    :goto_3
    if-eqz v2, :cond_2

    move v4, v3

    .line 261
    .local v4, showSlideShow:Z
    :cond_2
    if-nez v4, :cond_0

    .line 262
    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 255
    .end local v0           #drmType:I
    .end local v1           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v3           #isDRMFL:Z
    .end local v4           #showSlideShow:Z
    .restart local p0
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 257
    .end local p0
    .restart local v1       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    .line 258
    .restart local v0       #drmType:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11
    .parameter "activity"
    .parameter "durationMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4117
    if-nez p0, :cond_0

    .line 4119
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[formatDuration] Null activity found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4122
    :cond_0
    const-string v5, "fullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "durationMs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4123
    div-int/lit16 v0, p1, 0x3e8

    .line 4124
    .local v0, duration:I
    div-int/lit16 v2, v0, 0xe10

    .line 4125
    .local v2, h:I
    mul-int/lit16 v5, v2, 0xe10

    sub-int v5, v0, v5

    div-int/lit8 v3, v5, 0x3c

    .line 4126
    .local v3, m:I
    mul-int/lit16 v5, v2, 0xe10

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v5, v6

    sub-int v4, v0, v5

    .line 4128
    .local v4, s:I
    if-nez v2, :cond_1

    .line 4129
    const v5, 0x7f0a0078

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4136
    .local v1, durationValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4132
    .end local v1           #durationValue:Ljava/lang/String;
    :cond_1
    const v5, 0x7f0a0079

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getIntentForUploadService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .parameter "context"
    .parameter "szService"

    .prologue
    .line 1739
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1740
    :cond_0
    const/4 v1, 0x0

    .line 1784
    :cond_1
    :goto_0
    return-object v1

    .line 1742
    :cond_2
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1744
    :cond_3
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 1747
    :cond_4
    const/4 v1, 0x0

    .line 1748
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1749
    .local v2, intentQuery:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1751
    .local v0, actList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p1}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1754
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1755
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intentQuery:Landroid/content/Intent;
    const-string v6, "htc.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1756
    .restart local v2       #intentQuery:Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1759
    const/high16 v6, 0x1

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1762
    const/4 v5, 0x0

    .line 1764
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_1

    .line 1766
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .restart local v5       #resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_6

    .line 1764
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1769
    :cond_6
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1771
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MenuManager][getServiceComponentName]: Set Componet Name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1774
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1783
    .end local v3           #nIndex:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_7
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MenuManager][getServiceComponentName]: unknow service name. szService: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static hideExifInformation(Landroid/view/View;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 4149
    return-void
.end method

.method public static isCHSCustomerUploadPkgName(Ljava/lang/String;)Z
    .locals 2
    .parameter "strPkgName"

    .prologue
    const/4 v0, 0x0

    .line 1184
    if-nez p0, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return v0

    .line 1187
    :cond_1
    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMMSUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 4879
    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mms"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Bundle;)V
    .locals 4
    .parameter "activity"
    .parameter "aPhoto"
    .parameter "bundle"

    .prologue
    .line 4696
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4698
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[launchComments] null dispMgrListener or image found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4717
    :cond_1
    :goto_0
    return-void

    .line 4702
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4703
    .local v0, callerIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 4706
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4707
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/htc/album/SocialNetwork/ActivityMainComments;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4709
    const-string v2, "service_name"

    const-string v3, "service_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4711
    const-string v2, "user_id"

    const-string v3, "user_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4713
    const-string v2, "photo_id"

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4714
    const-string v2, "album_name"

    const-string v3, "album_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4716
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mime"
    .parameter "type"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 4604
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4606
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[launchCropMode] null activity or imageUri or mime found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4620
    :goto_0
    return-void

    .line 4610
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4611
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4612
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4613
    const-string v2, "cropType"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4615
    const-string v2, "toast_crop_result"

    if-eqz p4, :cond_2

    const-string v3, "toast_crop_result"

    invoke-virtual {p4, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4617
    if-eqz p4, :cond_3

    .line 4618
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4619
    :cond_3
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mimeType"
    .parameter "dataPath"
    .parameter "degreesRotated"

    .prologue
    .line 4635
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 4636
    return-void
.end method

.method public static launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mimeType"
    .parameter "dataPath"
    .parameter "degreesRotated"
    .parameter "extras"

    .prologue
    .line 4642
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 4644
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[launchEnhancerMode] null activity or error on image info"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4664
    :goto_0
    return-void

    .line 4648
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4649
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.photoenhancer"

    const-string v4, "com.htc.photoenhancer.PhotoEnhancer"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4650
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4651
    const-string v3, "filePath"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4652
    const-string v3, "degree"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4654
    if-eqz p5, :cond_2

    .line 4656
    const-string v3, "output"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4657
    .local v2, mOutputPath:Ljava/lang/String;
    const-string v3, "externalGivenOutputPath"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4660
    .end local v2           #mOutputPath:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x7f08

    :try_start_0
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4661
    :catch_0
    move-exception v0

    .line 4662
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[launchEnhancerMode] Launch Effects failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static launchEnhancerMode(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 6
    .parameter "activity"
    .parameter "image"

    .prologue
    .line 4624
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4626
    :cond_0
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[launchEnhancerMode] null activity or null IImage"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    :goto_0
    return-void

    .line 4629
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V
    .locals 11
    .parameter "activity"
    .parameter "image"
    .parameter "imageList"
    .parameter "params"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 2034
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2036
    :cond_0
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[launchGif] null activity or image found!!"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    :goto_0
    return-void

    .line 2040
    :cond_1
    const/4 v4, -0x1

    .line 2043
    .local v4, pos:I
    if-eqz p3, :cond_2

    .line 2044
    :try_start_0
    const-string v7, "position"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2051
    :cond_2
    :goto_1
    invoke-static {p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 2052
    .local v1, dmr:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v7

    if-ne v9, v7, :cond_4

    .line 2056
    if-ne v4, v10, :cond_3

    move v4, v6

    .end local v4           #pos:I
    :cond_3
    invoke-static {p0, v1, p2, v4, p3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalPhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2046
    .end local v1           #dmr:Ljava/lang/String;
    .restart local v4       #pos:I
    :catch_0
    move-exception v2

    .line 2048
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    goto :goto_1

    .line 2060
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #dmr:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "directmode"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_6

    if-eqz p3, :cond_6

    .line 2062
    const/4 v7, 0x3

    const/16 v8, 0x1398

    if-ne v4, v10, :cond_5

    const/4 v6, 0x0

    :goto_2
    invoke-static {p0, v7, v8, v9, v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    .line 2067
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2068
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/htc/album/TabPluginDevice/GifPlayer;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2070
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 2071
    .local v5, uri:Landroid/net/Uri;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 2072
    .local v0, dataPath:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2074
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2085
    :goto_3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2076
    :cond_7
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2078
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 2082
    :cond_8
    const-string v6, "path"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public static launchSettings(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 4395
    return-void
.end method

.method public static launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V
    .locals 7
    .parameter "activity"
    .parameter "adapter"
    .parameter "posStart"
    .parameter "objExtra"

    .prologue
    .line 1920
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1922
    :cond_0
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[launchSlideShow] null activity or adapter found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    .end local p3
    :goto_0
    return-void

    .line 1926
    .restart local p3
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1927
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 1928
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[launchSlideShow] null image at 0 found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1931
    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1933
    .local v3, startTarget:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1934
    .local v4, strPath:Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v5, :cond_3

    .line 1936
    invoke-virtual {p1, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    .line 1939
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 1941
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1942
    .local v2, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1943
    const-string v5, "key_bucket_id"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1944
    const-string v5, "itemIndex"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1945
    const-string v5, "itemfullpath"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1946
    const-string v5, "slideshow_setting_mode"

    const-string v6, "album_mode"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1947
    const-string v5, "folder_type"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1948
    const-string v5, "key_folder_name"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1950
    if-eqz p3, :cond_4

    .line 1952
    instance-of v5, p3, [I

    if-eqz v5, :cond_4

    .line 1953
    const-string v5, "photoIds"

    check-cast p3, [I

    .end local p3
    check-cast p3, [I

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1956
    :cond_4
    const v5, 0x7f090083

    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V
    .locals 10
    .parameter "activity"
    .parameter "selectedImage"
    .parameter "params"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1960
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1961
    :cond_0
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[launchVideo] null activity or image found!!"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    :goto_0
    return-void

    .line 1965
    :cond_1
    invoke-static {p0, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 1967
    .local v1, dmr:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v0

    if-ne v4, v0, :cond_3

    .line 1969
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1970
    .local v8, pos:Ljava/lang/Integer;
    if-eqz p2, :cond_2

    .line 1974
    :try_start_0
    const-string v0, "position"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 1982
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1985
    .end local v8           #pos:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "directmode"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_6

    if-eqz p2, :cond_6

    .line 1987
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1988
    .restart local v8       #pos:Ljava/lang/Integer;
    if-eqz p2, :cond_4

    .line 1992
    :try_start_1
    const-string v0, "position"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 2000
    :cond_4
    :goto_2
    const/4 v0, 0x3

    const/16 v2, 0x1398

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_5

    const/4 v8, 0x0

    .end local v8           #pos:Ljava/lang/Integer;
    :cond_5
    invoke-static {p0, v0, v2, v4, v8}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto :goto_0

    .line 2005
    :cond_6
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 2007
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->setDrmStateToNonCheck()V

    .line 2010
    :cond_7
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v9

    .line 2012
    .local v9, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2015
    .local v7, intent:Landroid/content/Intent;
    :try_start_2
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][launchVideo]: Launch Video Player "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][launchVideo]: Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    const-string v0, "com.htc.video"

    const-string v2, "com.htc.video.ViewVideo"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2018
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2019
    const-string v0, "Extras"

    invoke-virtual {v7, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2022
    const-string v0, "dmc_mode"

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2024
    const/16 v0, 0x13bb

    invoke-virtual {p0, v7, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2026
    :catch_0
    move-exception v6

    .line 2028
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch Video player failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1994
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #uri:Landroid/net/Uri;
    .restart local v8       #pos:Ljava/lang/Integer;
    :catch_1
    move-exception v0

    goto/16 :goto_2

    .line 1976
    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method private menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter
    .parameter "clickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 1812
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez p1, :cond_0

    .line 1814
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "You must specify first parameter"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const/4 v0, 0x0

    .line 1863
    :goto_0
    return-object v0

    .line 1818
    :cond_0
    new-instance v5, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v0, 0x1

    invoke-direct {v5, p1, p3, v0}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 1819
    .local v5, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->getShareViaAdapterInstance(Landroid/content/Context;)Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v3

    .line 1820
    .local v3, shareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcShareViaMultiAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1822
    new-instance v9, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    iget-object v10, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    new-instance v0, Lcom/htc/album/helper/MenuManager$4;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager$4;-><init>(Lcom/htc/album/helper/MenuManager;Ljava/util/ArrayList;Lcom/htc/widget/HtcShareViaMultiAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    invoke-direct {v9, v10, v3, v0}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Landroid/app/AlertDialog;Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1839
    .local v9, shareViaListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    invoke-static {p1, v5}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->rearrangeListItem(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    .line 1840
    invoke-static {p1, p2, v3, v9}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->createAlertDialogBuilder(Landroid/content/Context;ILandroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1845
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v6, :cond_1

    .line 1847
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1851
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListSelectorHighlightedColor(Landroid/content/Context;)I

    move-result v8

    .line 1852
    .local v8, resId:I
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 1853
    .local v7, dialogLView:Landroid/widget/ListView;
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 1854
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setSelector(I)V

    .line 1858
    :cond_2
    invoke-virtual {v3}, Lcom/htc/widget/HtcShareViaMultiAdapter;->shrink()V

    .line 1859
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1860
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1863
    .end local v7           #dialogLView:Landroid/widget/ListView;
    .end local v8           #resId:I
    :cond_3
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static playVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "activity"
    .parameter "image"
    .parameter "imageList"
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 2090
    const/4 v0, 0x0

    .line 2092
    .local v0, bPlayed:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2094
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[playVideo] null activity or image found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    :goto_0
    return v1

    .line 2098
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2099
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[playVideo] isCorrupted!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2103
    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2105
    invoke-static {p0, p1, p3}, Lcom/htc/album/helper/MenuManager;->launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 2106
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 2118
    goto :goto_0

    .line 2108
    :cond_3
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 2110
    invoke-static {p0, p1, p2, p3}, Lcom/htc/album/helper/MenuManager;->launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V

    .line 2111
    const/4 v0, 0x1

    goto :goto_1

    .line 2115
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private recycleDetailBitmap()V
    .locals 0

    .prologue
    .line 3832
    return-void
.end method

.method private renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "adapter"
    .parameter "pos"
    .parameter "curImage"
    .parameter "oldName"
    .parameter "newName"
    .parameter "subFileName"

    .prologue
    .line 4209
    const/4 v10, 0x0

    .line 4210
    .local v10, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-nez v10, :cond_1

    .line 4338
    :cond_0
    :goto_0
    return-void

    .line 4214
    :cond_1
    if-nez p2, :cond_2

    .line 4216
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null adapter"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4220
    :cond_2
    if-nez p4, :cond_3

    .line 4222
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[renameFile] null image found!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4226
    :cond_3
    const/4 v0, 0x0

    const v1, 0x7f0a0042

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v2, v4}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    .local v3, dialog:Lcom/htc/app/HtcProgressDialog;
    move-object v9, p1

    .line 4232
    check-cast v9, Landroid/app/Activity;

    .line 4233
    .local v9, activity:Landroid/app/Activity;
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/album/helper/MenuManager$15;

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/album/helper/MenuManager$15;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/app/HtcProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/app/Activity;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4337
    .local v11, th:Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static setContentIntoRow(Landroid/widget/TextView;I)V
    .locals 2
    .parameter "textview"
    .parameter "contentId"

    .prologue
    .line 3836
    if-eqz p0, :cond_0

    .line 3838
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3839
    .local v0, content:Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lcom/htc/album/helper/MenuManager;->setContentIntoRow(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 3841
    .end local v0           #content:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private static setContentIntoRow(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "textview"
    .parameter "content"

    .prologue
    const/4 v6, 0x0

    .line 3844
    if-nez p0, :cond_0

    .line 3869
    :goto_0
    return-void

    .line 3847
    :cond_0
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 3849
    .local v3, styleSpan:Landroid/text/style/StyleSpan;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3850
    .local v0, colName:Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3856
    .local v2, st:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3857
    .local v1, index:I
    if-gez v1, :cond_1

    .line 3858
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3860
    :cond_1
    const/16 v4, 0x21

    invoke-virtual {v2, v3, v6, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3863
    const-string v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3865
    if-eqz p1, :cond_2

    .line 3866
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3868
    :cond_2
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setFootprint(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 8
    .parameter "activity"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4766
    if-eqz p0, :cond_0

    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    if-nez p2, :cond_1

    .line 4768
    :cond_0
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[setFootprint] Null activity or data or result not OK"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4783
    :goto_0
    return-void

    .line 4772
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.android.setasFootprint"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4773
    .local v1, footprint:Landroid/content/Intent;
    const-string v6, "com.htc.android.footprints"

    const-string v7, "com.htc.android.footprints.activity.FootprintDetailEditActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4774
    const-string v6, "filepath"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4775
    .local v5, path:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 4776
    invoke-static {v5}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 4777
    .local v0, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4778
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4779
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4781
    .end local v0           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4782
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static setItemDetailsShadowBg(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "bFirstRowAdded"

    .prologue
    .line 3784
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    .line 3788
    :cond_0
    return-void
.end method

.method private setKeepScreenOn(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "screenOn"

    .prologue
    .line 5236
    if-nez p1, :cond_0

    .line 5248
    :goto_0
    return-void

    .line 5239
    :cond_0
    new-instance v0, Lcom/htc/album/helper/MenuManager$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/album/helper/MenuManager$23;-><init>(Lcom/htc/album/helper/MenuManager;ZLandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static setLatLngDetails(Landroid/view/View;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .parameter "d"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4180
    .local p2, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public static setLocations(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3
    .parameter "activity"
    .parameter "imageUri"

    .prologue
    .line 4787
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4795
    :cond_0
    :goto_0
    return-void

    .line 4790
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4791
    .local v1, footprint:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4792
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "FILE_URI"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4793
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4794
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setLockScreen(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "activity"
    .parameter "image"

    .prologue
    .line 4732
    return-void
.end method

.method private setTabletLatLngDetails(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/HashMap;)V
    .locals 7
    .parameter "context"
    .parameter "detailsContainer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/high16 v4, 0x437f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4184
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 4186
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[setTabletLatLngDetails] Null context or detailsContainer or exifData found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    :cond_1
    :goto_0
    return-void

    .line 4190
    :cond_2
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v2

    .line 4191
    .local v2, latlng:[F
    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-nez v3, :cond_1

    .line 4193
    aget v3, v2, v6

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    aget v3, v2, v5

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 4197
    const v3, 0x7f0a0086

    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v3, v4, v5}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    .line 4198
    const v3, 0x7f0a0087

    aget v4, v2, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v3, v4, v5}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    .line 4201
    new-instance v0, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v3, v4}, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 4202
    .local v0, cb:Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 4203
    .local v1, geocoder:Landroid/location/Geocoder;
    new-instance v3, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;

    invoke-direct {v3, v1, v2, v0}, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;-><init>(Landroid/location/Geocoder;[FLcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "srcBmp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3792
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3794
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[setThumbnailImageMask] Null context or srcBmp found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3795
    const/4 v1, 0x0

    .line 3803
    :goto_0
    return-object v1

    .line 3798
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3800
    .local v0, maskBmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v1, :cond_2

    .line 3801
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 3803
    :cond_2
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, p1, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmapWithCustomMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static setWallpaper(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "imageUri"
    .parameter "mime"
    .parameter "isDRM"

    .prologue
    .line 4752
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4754
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[setWallpaper] null activity or imageUri or mime found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4762
    :goto_0
    return-void

    .line 4757
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4758
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/TabPluginDevice/Wallpaper;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4759
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4760
    const-string v1, "drm_content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4761
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setWallpaperWithPreview(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mime"

    .prologue
    .line 4736
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4739
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[setWallpaperWithPreview] null activity or imageUri or mime found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4748
    :goto_0
    return-void

    .line 4743
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4744
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4745
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4746
    const-string v1, "drm_content"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4747
    const/16 v1, 0x7f01

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private static setupDefaultVideoDetailRows(Landroid/content/Context;Landroid/view/View;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V
    .locals 0
    .parameter "context"
    .parameter "d"
    .parameter "video"

    .prologue
    .line 3979
    return-void
.end method

.method private static setupDefaultVideoDetailRows2(Landroid/content/Context;Landroid/view/View;Lcom/htc/album/DetailDlgParams;)V
    .locals 0
    .parameter "context"
    .parameter "d"
    .parameter "detailDlgParams"

    .prologue
    .line 2494
    return-void
.end method

.method private static setupTabletVideoDetailRows(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V
    .locals 11
    .parameter "context"
    .parameter "detailsContainer"
    .parameter "video"

    .prologue
    .line 3983
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3985
    :cond_0
    sget-object v9, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[setupDefaultVideoDetailRows] Null context or detailsContainer or VideoObject found!!"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4113
    :goto_0
    return-void

    .line 3989
    :cond_1
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3993
    .local v8, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 3998
    const/4 v1, 0x0

    .line 3999
    .local v1, dimensionWidth:I
    const/4 v0, 0x0

    .line 4023
    .local v0, dimensionHeight:I
    invoke-virtual {p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->isDrm()Z

    move-result v9

    if-nez v9, :cond_2

    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 4024
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4025
    .local v7, resolution:Ljava/lang/String;
    const v9, 0x7f0a0074

    const/4 v10, 0x1

    invoke-static {p0, p1, v9, v7, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4030
    .end local v7           #resolution:Ljava/lang/String;
    :cond_2
    const/16 v9, 0x9

    :try_start_1
    invoke-virtual {v8, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4033
    .local v2, durationMs:I
    invoke-static {p0, v2}, Lcom/htc/album/helper/MenuManager;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 4034
    .local v3, durationValue:Ljava/lang/String;
    const v9, 0x7f0a0075

    const/4 v10, 0x1

    invoke-static {p0, p1, v9, v3, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4089
    .end local v2           #durationMs:I
    .end local v3           #durationValue:Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string v6, ""

    .line 4098
    .local v6, format:Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v9, ""

    if-ne v6, v9, :cond_4

    .line 4099
    :cond_3
    invoke-virtual {p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 4101
    :cond_4
    const v9, 0x7f0a0082

    const/4 v10, 0x1

    invoke-static {p0, p1, v9, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4108
    :try_start_3
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 4109
    :catch_0
    move-exception v5

    .line 4110
    .local v5, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 4035
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .end local v6           #format:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 4036
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 4103
    .end local v0           #dimensionHeight:I
    .end local v1           #dimensionWidth:I
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v5

    .line 4105
    .restart local v5       #ex:Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4108
    :try_start_6
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 4109
    :catch_3
    move-exception v5

    .line 4110
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 4107
    .end local v5           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    .line 4108
    :try_start_7
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 4111
    :goto_2
    throw v9

    .line 4109
    :catch_4
    move-exception v5

    .line 4110
    .restart local v5       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method

.method public static showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 12
    .parameter "context"
    .parameter "image"

    .prologue
    .line 4798
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4800
    :cond_0
    sget-object v8, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[showOnMap] null context or image found!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4834
    :cond_1
    :goto_0
    return-void

    .line 4804
    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 4805
    .local v2, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 4806
    invoke-static {v2}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v4

    .line 4807
    .local v4, latlng:[F
    if-nez v4, :cond_3

    .line 4809
    sget-object v8, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[showOnMap] NO LatLng found!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4812
    :cond_3
    const/4 v8, 0x0

    aget v3, v4, v8

    .line 4813
    .local v3, latitude:F
    const/4 v8, 0x1

    aget v5, v4, v8

    .line 4822
    .local v5, longitude:F
    :try_start_0
    const-string v8, "http://maps.google.com/maps?f=q&q=(%s,%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4823
    .local v7, url:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.google.android.apps.maps"

    const-string v9, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4824
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 4825
    .local v6, mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4826
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v6           #mapsIntent:Landroid/content/Intent;
    .end local v7           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4828
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-object v8, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "GMM activity not found!"

    invoke-static {v8, v9, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4829
    const-string v8, "geo:%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4830
    .restart local v7       #url:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4831
    .restart local v6       #mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showPhotoMenuOnline(Landroid/app/Activity;Landroid/view/Menu;I)V
    .locals 12
    .parameter "activity"
    .parameter "menu"
    .parameter "exclusion"

    .prologue
    const v11, 0x7f090091

    const v10, 0x7f090090

    const v9, 0x7f090086

    const v8, 0x7f090085

    const/4 v7, 0x1

    .line 618
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 620
    :cond_0
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[showPhotoMenuOnline] Null activity or menu found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 624
    .local v1, inflater:Landroid/view/MenuInflater;
    const v5, 0x7f0d0001

    invoke-virtual {v1, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 626
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_2

    .line 628
    const v5, 0x7f09008e

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 630
    :cond_2
    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    .line 632
    const v5, 0x7f09008f

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 634
    :cond_3
    and-int/lit16 v5, p2, 0x2000

    if-eqz v5, :cond_4

    .line 636
    const v5, 0x7f09008d

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 638
    :cond_4
    and-int/lit16 v5, p2, 0x800

    if-eqz v5, :cond_5

    .line 640
    const v5, 0x7f090079

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 642
    :cond_5
    and-int/lit16 v5, p2, 0x4000

    if-eqz v5, :cond_6

    .line 644
    invoke-static {p1, v10}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 645
    invoke-static {p1, v11}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 646
    const v5, 0x7f090092

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 647
    const v5, 0x7f090093

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 649
    :cond_6
    const/high16 v5, 0x1

    and-int/2addr v5, p2

    if-eqz v5, :cond_7

    .line 651
    invoke-static {p1, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 652
    invoke-static {p1, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 655
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "service_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 656
    .local v4, service:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 658
    .local v3, pref:Landroid/content/SharedPreferences;
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 660
    const v5, 0x7f090092

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 661
    const v5, 0x7f090093

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 663
    const/4 v0, 0x0

    .line 665
    .local v0, bShow:Z
    const-string v5, "showCaption"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 666
    if-eqz v0, :cond_9

    .line 667
    invoke-static {p1, v10}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 671
    :goto_0
    const-string v5, "showTag"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 672
    if-eqz v0, :cond_a

    .line 673
    invoke-static {p1, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 697
    .end local v0           #bShow:Z
    :cond_8
    :goto_1
    const/4 v2, 0x0

    .line 727
    .local v2, menuItem:Landroid/view/MenuItem;
    return-void

    .line 669
    .end local v2           #menuItem:Landroid/view/MenuItem;
    .restart local v0       #bShow:Z
    :cond_9
    invoke-static {p1, v11}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_0

    .line 675
    :cond_a
    invoke-static {p1, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_1

    .line 677
    .end local v0           #bShow:Z
    :cond_b
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 679
    invoke-static {p1, v10}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 680
    invoke-static {p1, v11}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 682
    const/4 v0, 0x0

    .line 684
    .restart local v0       #bShow:Z
    const-string v5, "showCaption"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 685
    if-eqz v0, :cond_c

    .line 686
    const v5, 0x7f090092

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 690
    :goto_2
    const-string v5, "showTag"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 691
    if-eqz v0, :cond_d

    .line 692
    invoke-static {p1, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_1

    .line 688
    :cond_c
    const v5, 0x7f090093

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_2

    .line 694
    :cond_d
    invoke-static {p1, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_1
.end method

.method public static support3DShare(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 233
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.htctwitter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendSetAsAttachData(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsAttachData]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 826
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsAttachData] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :goto_0
    return-void

    .line 830
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 832
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const-string v3, "mimeType"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 837
    .local v0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "android.intent.action.ATTACH_DATA"

    const v4, 0x10001

    invoke-static {v0, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public appendSetAsContactIcon(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsContactIcon]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 846
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsContactIcon] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_1
    :goto_0
    return-void

    .line 850
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 852
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.ATTACH_IMAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .local v0, contactIntent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 855
    .local v2, setAsContactList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    .line 856
    const-string v3, "com.android.contacts.action.ATTACH_IMAGE"

    const v4, 0x10001

    invoke-static {p3, v2, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public appendSetAsFavorite(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p2, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez p1, :cond_0

    .line 863
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[appendSetAsFavorite] null context found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :goto_0
    return-void

    .line 867
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[appendSetAsFavorite]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const v1, 0x7f0a0071

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v0

    .line 869
    .local v0, myFav:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v1, 0x20003

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 870
    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setQueriedActionName(Ljava/lang/String;)V

    .line 871
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public appendSetAsFootprints(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsFootprints]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 880
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsFootprints] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :goto_0
    return-void

    .line 884
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 895
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 897
    .local v0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    const v4, 0x10001

    invoke-static {p3, v0, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public appendSetAsLockScreen(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 924
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[appendSetAsLockScreen]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    if-nez p1, :cond_0

    .line 928
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[appendSetAsLockScreen] null context found!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[appendSetAsLockScreen] LiveWallpaper enabled, Set As LockScreen disabled!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public appendSetAsWallpaper(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsWallpaper]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 908
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsWallpaper] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :goto_0
    return-void

    .line 912
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 914
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 915
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    const-string v3, "mimeType"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.Wallpaper"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 919
    .local v0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "android.intent.action.ATTACH_DATA"

    const/high16 v4, 0x33

    invoke-static {p3, v0, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public dismissShowingDialog()V
    .locals 1

    .prologue
    .line 5252
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5254
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5257
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 5258
    return-void
.end method

.method public gotoShareLink(Landroid/content/Context;ILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "nResTitle"
    .parameter "szUrlLink"

    .prologue
    .line 578
    if-nez p1, :cond_0

    .line 580
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[gotoShareLink] Null context found!!"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v4, 0x0

    .line 613
    :goto_0
    return-object v4

    .line 584
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, intentText:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    move-object v3, p3

    .line 589
    .local v3, szWebLink:Ljava/lang/String;
    new-instance v0, Lcom/htc/album/helper/MenuManager$1;

    invoke-direct {v0, p0, v3, p1}, Lcom/htc/album/helper/MenuManager$1;-><init>(Lcom/htc/album/helper/MenuManager;Ljava/lang/String;Landroid/content/Context;)V

    .line 611
    .local v0, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 613
    .local v2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0
.end method

.method public isPhotoHaveExifInfo(Ljava/lang/String;)Z
    .locals 2
    .parameter "strMimetype"

    .prologue
    const/4 v0, 0x0

    .line 552
    if-nez p1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v0

    .line 555
    :cond_1
    const-string v1, "image/jpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/jps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/mpo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public launchRotateMode(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;I)V
    .locals 9
    .parameter "activity"
    .parameter "adapter"
    .parameter "position"
    .parameter "curImage"
    .parameter "custListener"
    .parameter "rotateDegrees"

    .prologue
    .line 5130
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 5175
    :cond_0
    :goto_0
    return-void

    .line 5134
    :cond_1
    const/16 v0, 0x5a

    if-eq p6, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p6, v0, :cond_0

    .line 5139
    :cond_2
    new-instance v8, Lcom/htc/album/helper/MenuManager$22;

    invoke-direct {v8, p0, p2, p1}, Lcom/htc/album/helper/MenuManager$22;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/app/Activity;)V

    .line 5169
    .local v8, listener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;
    move v5, p6

    .line 5170
    .local v5, rotation:I
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    if-eqz v0, :cond_3

    .line 5172
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->cancel()V

    .line 5174
    :cond_3
    new-instance v0, Lcom/htc/album/helper/MenuManager$RotateThread;

    if-nez p5, :cond_4

    move-object v6, v8

    :goto_1
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager$RotateThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    goto :goto_0

    :cond_4
    move-object v6, p5

    goto :goto_1
.end method

.method public makeExclusion(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;ZZII)I
    .locals 9
    .parameter "context"
    .parameter "image"
    .parameter "viewFromOtherAp"
    .parameter "viewSingleImage"
    .parameter "canSetAsImageCount"
    .parameter "exclusion"

    .prologue
    .line 425
    sget-boolean v6, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-eqz v6, :cond_0

    .line 426
    or-int/lit16 p6, p6, 0x400

    .line 429
    :cond_0
    if-nez p2, :cond_1

    .line 431
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[makeExclusion] null image found!!"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v6, -0x1

    .line 547
    :goto_0
    return v6

    .line 435
    :cond_1
    const/high16 v6, 0x20

    or-int/2addr p6, v6

    .line 437
    const-string v6, "video/x-wmv-drm"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 438
    .local v2, isWMDrm:Z
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_10

    :cond_2
    const/4 v1, 0x1

    .line 440
    .local v1, isDrm:Z
    :goto_1
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 446
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_3

    const-string v6, "content"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "mms"

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 450
    or-int/lit8 p6, p6, 0x2

    .line 453
    or-int/lit16 p6, p6, 0x400

    .line 457
    :cond_3
    if-eqz p3, :cond_6

    .line 459
    const v6, 0x40738

    or-int/2addr p6, v6

    .line 466
    if-eqz p4, :cond_4

    .line 467
    or-int/lit16 p6, p6, 0x401

    .line 470
    :cond_4
    if-eqz v1, :cond_5

    .line 471
    if-eqz v2, :cond_11

    const/4 v4, 0x1

    .line 472
    .local v4, type:I
    :goto_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    .line 473
    or-int/lit8 p6, p6, 0x4

    .line 478
    .end local v4           #type:I
    :cond_5
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 479
    or-int/lit8 p6, p6, 0x40

    .line 483
    :cond_6
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, mimeType:Ljava/lang/String;
    if-nez v3, :cond_7

    const-string v3, "none"

    .line 487
    :cond_7
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/MenuManager;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 489
    or-int/lit16 p6, p6, 0x400

    .line 493
    :cond_8
    if-eqz v1, :cond_a

    .line 494
    const/high16 v6, 0x4

    or-int/2addr p6, v6

    .line 495
    or-int/lit8 p6, p6, 0x8

    .line 496
    or-int/lit8 p6, p6, 0x20

    .line 498
    or-int/lit16 p6, p6, 0x400

    .line 499
    if-eqz v2, :cond_12

    const/4 v4, 0x1

    .line 500
    .restart local v4       #type:I
    :goto_3
    const/4 v6, 0x3

    if-eq v4, v6, :cond_9

    .line 501
    or-int/lit8 p6, p6, 0x2

    .line 503
    :cond_9
    if-eqz v2, :cond_a

    .line 504
    or-int/lit16 p6, p6, 0x80

    .line 510
    .end local v4           #type:I
    :cond_a
    if-nez v1, :cond_c

    .line 512
    or-int/lit16 p6, p6, 0x80

    .line 513
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/MenuManager;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 515
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/album/AlbumUtility/ExifUtil;->hasGpsInfo(Ljava/lang/String;)Z

    move-result v0

    .line 516
    .local v0, hasInfo:Z
    if-nez v0, :cond_b

    .line 518
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t have gps info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    or-int/lit16 p6, p6, 0x400

    .line 525
    .end local v0           #hasInfo:Z
    :cond_b
    invoke-static {p1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_c

    .line 527
    or-int/lit8 p6, p6, 0x20

    .line 532
    :cond_c
    const/4 v6, 0x1

    if-gt p5, v6, :cond_d

    .line 533
    or-int/lit8 p6, p6, 0x1

    .line 538
    :cond_d
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 539
    or-int/lit16 p6, p6, 0x200

    .line 542
    :cond_e
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 543
    or-int/lit16 p6, p6, 0x800

    :cond_f
    move v6, p6

    .line 547
    goto/16 :goto_0

    .line 438
    .end local v1           #isDrm:Z
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #isDrm:Z
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_11
    move-object v6, p2

    .line 471
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    goto/16 :goto_2

    .restart local v3       #mimeType:Ljava/lang/String;
    :cond_12
    move-object v6, p2

    .line 499
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    goto :goto_3
.end method

.method public menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter
    .parameter "clickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 1868
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez p1, :cond_0

    .line 1870
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "You must specify first parameter"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const/4 v4, 0x0

    .line 1908
    :goto_0
    return-object v4

    .line 1874
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p3, v4}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 1875
    .local v0, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    invoke-static {p1, v0}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->rearrangeListItem(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    .line 1876
    new-instance v4, Lcom/htc/album/helper/MenuManager$5;

    invoke-direct {v4, p0, p4, v0}, Lcom/htc/album/helper/MenuManager$5;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    invoke-static {p1, p2, v0, v4}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->createAlertDialogBuilder(Landroid/content/Context;ILandroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1892
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_1

    .line 1894
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 1895
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1897
    :cond_1
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    .line 1899
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListSelectorHighlightedColor(Landroid/content/Context;)I

    move-result v3

    .line 1900
    .local v3, resId:I
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1901
    .local v2, dialogLView:Landroid/widget/ListView;
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1902
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 1905
    :cond_2
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1908
    .end local v2           #dialogLView:Landroid/widget/ListView;
    .end local v3           #resId:I
    :cond_3
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onclickImageRotate(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;IILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 8
    .parameter "activity"
    .parameter "adapter"
    .parameter "nIndex"
    .parameter "nRotate"
    .parameter "custListener"
    .parameter "rotateStateListener"
    .parameter "pluginWarningMessage"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x2

    .line 4547
    invoke-virtual {p2, p3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4549
    .local v4, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v0, :cond_1

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4551
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][onclickImageRotate!]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-ne p4, v3, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-interface {v1, v0, p3, v7}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 4601
    :goto_1
    return-void

    .line 4552
    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    .line 4556
    :cond_1
    if-ne p4, v3, :cond_3

    const/16 v5, 0x5a

    .line 4557
    .local v5, rotation:I
    :goto_2
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    if-eqz v0, :cond_2

    .line 4558
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->cancel()V

    .line 4560
    :cond_2
    if-nez p7, :cond_5

    .line 4561
    new-instance v0, Lcom/htc/album/helper/MenuManager$RotateThread;

    if-nez p5, :cond_4

    move-object v6, p6

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager$RotateThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    goto :goto_1

    .line 4556
    .end local v5           #rotation:I
    :cond_3
    const/16 v5, 0x10e

    goto :goto_2

    .restart local v5       #rotation:I
    :cond_4
    move-object v6, p5

    .line 4561
    goto :goto_3

    .line 4564
    :cond_5
    new-instance v1, Lcom/htc/album/helper/MenuManager$17;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/htc/album/helper/MenuManager$17;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;)V

    invoke-interface {p7, v1}, Lcom/htc/album/AlbumUtility/IPluginWarningMessage;->setListenerOK(Lcom/htc/album/AlbumUtility/IPluginButtonStateListener;)V

    .line 4590
    new-instance v0, Lcom/htc/album/helper/MenuManager$18;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/MenuManager$18;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-interface {p7, v0}, Lcom/htc/album/AlbumUtility/IPluginWarningMessage;->setListenerCancel(Lcom/htc/album/AlbumUtility/IPluginButtonStateListener;)V

    .line 4598
    invoke-interface {p7}, Lcom/htc/album/AlbumUtility/IPluginWarningMessage;->show()V

    goto :goto_1
.end method

.method public preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mimeType"

    .prologue
    .line 1612
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v1, :cond_0

    .line 1614
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[preDoPrintSingleMedia]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1616
    .local v0, tempIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V

    .line 1623
    .end local v0           #tempIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1621
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .parameter "activity"
    .parameter "imageUri"

    .prologue
    .line 4838
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4844
    :cond_0
    :goto_0
    return-void

    .line 4841
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4842
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4843
    invoke-virtual {p0, p1, v0}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4848
    .local p2, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4850
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[setFavorite] null activity or image found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4873
    :goto_0
    return-void

    .line 4854
    :cond_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4855
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 4856
    const v2, 0x7f0a0042

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4857
    .local v1, loggingStr1:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4858
    new-instance v2, Lcom/htc/album/helper/MenuManager$19;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/MenuManager$19;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4866
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 4868
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4869
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->cancel()V

    .line 4871
    :cond_2
    new-instance v2, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/htc/app/HtcProgressDialog;)V

    iput-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    .line 4872
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->start()V

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    .line 224
    return-void
.end method

.method public setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    .line 242
    return-void
.end method

.method public showDefaultItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)V
    .locals 0
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    .line 2654
    return-void
.end method

.method public showDefaultProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "context"
    .parameter "curImage"

    .prologue
    .line 2249
    return-void
.end method

.method public showEditPhotoMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 18
    .parameter "activity"
    .parameter "mainAdapter"
    .parameter "position"
    .parameter "custListener"
    .parameter "pluginWarningMessage"

    .prologue
    .line 4439
    if-nez p2, :cond_0

    .line 4441
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][MenuManager][showEditPhotoMenu]: no adapter..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4536
    :goto_0
    return-void

    .line 4444
    :cond_0
    invoke-virtual/range {p2 .. p3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4445
    .local v5, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v5, :cond_1

    .line 4447
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][MenuManager][showEditPhotoMenu]: no item..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4453
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4454
    .local v11, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v3, :cond_2

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4456
    const v3, 0x7f0a00cc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v16

    .line 4457
    .local v16, menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4459
    .end local v16           #menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_2
    const v3, 0x2040215

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v12

    .line 4460
    .local v12, menu_crop:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v3, 0x7f0a00c9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v13

    .line 4461
    .local v13, menu_enhance:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v3, 0x7f0a0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v15

    .line 4462
    .local v15, menu_rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v3, 0x7f0a0003

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v14

    .line 4463
    .local v14, menu_rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4464
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4466
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 4468
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4469
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4473
    :cond_3
    const v17, 0x7f0a00ca

    new-instance v3, Lcom/htc/album/helper/MenuManager$16;

    move-object/from16 v4, p0

    move/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/htc/album/helper/MenuManager$16;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public showImageRotateMenu(Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)V
    .locals 10
    .parameter "activity"
    .parameter "position"
    .parameter "curImage"
    .parameter "listener"

    .prologue
    .line 5051
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 5070
    :cond_0
    :goto_0
    return-void

    .line 5054
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5055
    .local v6, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const v0, 0x7f0a0004

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v8

    .line 5056
    .local v8, rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v0, 0x7f0a0003

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v7

    .line 5057
    .local v7, rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5058
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5059
    const v9, 0x2040213

    new-instance v0, Lcom/htc/album/helper/MenuManager$21;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager$21;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)V

    invoke-virtual {p0, p1, v9, v6, v0}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V
    .locals 8
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"

    .prologue
    .line 3808
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)V

    .line 3811
    return-void
.end method

.method public showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)V
    .locals 8
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"
    .parameter "callback"
    .parameter "isEditable"

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-nez v0, :cond_0

    .line 3821
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/DetailsViewHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 3823
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromLocal(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)Z

    .line 3824
    return-void
.end method

.method public showItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)V
    .locals 2
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-nez v0, :cond_0

    .line 2424
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/DetailsViewHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 2426
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromDetailDlg(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Z

    .line 2429
    return-void
.end method

.method public showPhotoEditMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 19
    .parameter "activity"
    .parameter "mainAdapter"
    .parameter "position"
    .parameter "curImage"
    .parameter "cusListener"
    .parameter "pluginWarningMessage"

    .prologue
    .line 4892
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 5046
    :cond_0
    :goto_0
    return-void

    .line 4918
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4920
    .local v12, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-interface/range {p4 .. p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v3, :cond_2

    .line 4923
    const v3, 0x7f0a00cc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v14

    .line 4924
    .local v14, menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4926
    .end local v14           #menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_2
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    if-eqz v3, :cond_3

    .line 4927
    const v3, 0x7f0a010c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v13

    .line 4928
    .local v13, menu_adjust_3d_alignment:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4932
    .end local v13           #menu_adjust_3d_alignment:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_3
    const v3, 0x2040215

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v10

    .line 4933
    .local v10, crop:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4935
    const v3, 0x7f0a00c9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v11

    .line 4936
    .local v11, enhance:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4938
    const/4 v15, 0x0

    .line 4939
    .local v15, nCount:I
    invoke-interface/range {p4 .. p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4941
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v15

    .line 4944
    :cond_4
    const/4 v3, 0x1

    if-lt v3, v15, :cond_5

    .line 4946
    const v3, 0x7f0a0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v17

    .line 4947
    .local v17, rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4949
    const v3, 0x7f0a0003

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v16

    .line 4950
    .local v16, rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4953
    .end local v16           #rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v17           #rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_5
    const v18, 0x7f0a00ca

    new-instance v3, Lcom/htc/album/helper/MenuManager$20;

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/htc/album/helper/MenuManager$20;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public showPhotoMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V
    .locals 8
    .parameter "context"
    .parameter "menuInflater"
    .parameter "menu"
    .parameter "image"
    .parameter "exclusion"

    .prologue
    const v7, 0x7f090086

    const v6, 0x7f090085

    const v5, 0x7f09007a

    const v4, 0x7f090079

    .line 268
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 270
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[showPhotoMenu] null activity or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 274
    :cond_1
    const/high16 v3, 0x7f0d

    invoke-virtual {p2, v3, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 276
    and-int/lit16 v3, p5, 0x800

    if-eqz v3, :cond_1b

    .line 277
    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 278
    invoke-static {p3, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 285
    :goto_1
    const/high16 v3, 0x20

    and-int/2addr v3, p5

    if-eqz v3, :cond_2

    .line 286
    const v3, 0x7f09007b

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 289
    :cond_2
    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_3

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 290
    :cond_3
    const v3, 0x7f090083

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 292
    :cond_4
    and-int/lit8 v3, p5, 0x2

    if-nez v3, :cond_5

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/helper/MenuManager;->isMMSUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "video/x-wmv-drm"

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 293
    :cond_5
    const v3, 0x7f090087

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 295
    :cond_6
    and-int/lit8 v3, p5, 0x4

    if-nez v3, :cond_7

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 296
    :cond_7
    const v3, 0x7f09007e

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 298
    :cond_8
    and-int/lit8 v3, p5, 0x8

    if-nez v3, :cond_9

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 299
    :cond_9
    const v3, 0x7f090082

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 301
    :cond_a
    and-int/lit8 v3, p5, 0x10

    if-eqz v3, :cond_b

    .line 302
    const v3, 0x7f090081

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 304
    :cond_b
    and-int/lit8 v3, p5, 0x20

    if-nez v3, :cond_c

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 305
    :cond_c
    const v3, 0x7f090080

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 307
    :cond_d
    and-int/lit8 v3, p5, 0x40

    if-eqz v3, :cond_e

    .line 308
    const v3, 0x7f09008c

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 310
    :cond_e
    and-int/lit16 v3, p5, 0x80

    if-eqz v3, :cond_f

    .line 311
    const v3, 0x7f09008b

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 313
    :cond_f
    and-int/lit16 v3, p5, 0x100

    if-eqz v3, :cond_10

    .line 314
    const v3, 0x7f09008a

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 316
    :cond_10
    and-int/lit16 v3, p5, 0x200

    if-nez v3, :cond_11

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-nez v3, :cond_12

    .line 317
    :cond_11
    const v3, 0x7f09007f

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 319
    :cond_12
    and-int/lit16 v3, p5, 0x400

    if-nez v3, :cond_13

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-nez v3, :cond_13

    sget-boolean v3, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-eqz v3, :cond_14

    .line 320
    :cond_13
    const v3, 0x7f090089

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 322
    :cond_14
    const/high16 v3, 0x2

    and-int/2addr v3, p5

    if-eqz v3, :cond_15

    .line 323
    const v3, 0x7f090084

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 325
    :cond_15
    const/high16 v3, 0x4

    and-int/2addr v3, p5

    if-nez v3, :cond_16

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 326
    :cond_16
    const v3, 0x7f09007c

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 329
    :cond_17
    const/high16 v3, 0x8

    and-int/2addr v3, p5

    if-nez v3, :cond_18

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 330
    :cond_18
    const v3, 0x7f090088

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 333
    :cond_19
    const/high16 v3, 0x10

    and-int/2addr v3, p5

    if-eqz v3, :cond_1d

    .line 335
    invoke-static {p3, v6}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 336
    invoke-static {p3, v7}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 348
    :goto_2
    const/high16 v3, 0x1

    and-int/2addr v3, p5

    if-eqz v3, :cond_1a

    .line 350
    const v3, 0x7f09007d

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 357
    :cond_1a
    const/4 v1, 0x0

    .line 421
    .local v1, menuItem:Landroid/view/MenuItem;
    goto/16 :goto_0

    .line 279
    .end local v1           #menuItem:Landroid/view/MenuItem;
    :cond_1b
    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 280
    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto/16 :goto_1

    .line 282
    :cond_1c
    invoke-static {p3, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto/16 :goto_1

    .line 340
    :cond_1d
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 341
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "showTag"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 342
    .local v0, bShow:Z
    if-eqz v0, :cond_1e

    .line 343
    invoke-static {p3, v6}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_2

    .line 345
    :cond_1e
    invoke-static {p3, v7}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_2
.end method

.method public showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 1
    .parameter "context"
    .parameter "curImage"

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-nez v0, :cond_0

    .line 2368
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/DetailsViewHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 2370
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromDRMProtectInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 2371
    return-void
.end method

.method public showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;
    .locals 1
    .parameter "context"
    .parameter "image"
    .parameter "position"

    .prologue
    .line 731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;IZ)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;IZ)Landroid/app/AlertDialog;
    .locals 9
    .parameter "context"
    .parameter "image"
    .parameter "position"
    .parameter "viewSingle"

    .prologue
    const/4 v8, 0x1

    .line 736
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[MenuManager][showSetAsMenu]"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 740
    :cond_0
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[showSetAsMenu] null context or image found, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/4 v6, 0x0

    .line 817
    :goto_0
    return-object v6

    .line 744
    :cond_1
    move-object v1, p2

    .line 746
    .local v1, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    .line 747
    .local v3, isDrm:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v5, realInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 749
    .local v2, fakeInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez v3, :cond_5

    .line 751
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsAttachData(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 754
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsContactIcon(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 757
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/helper/MenuManager;->appendSetAsLockScreen(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 772
    :cond_2
    :goto_1
    if-nez p4, :cond_3

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v6

    if-nez v6, :cond_3

    .line 773
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/helper/MenuManager;->appendSetAsFavorite(Landroid/content/Context;Ljava/util/List;)V

    .line 775
    :cond_3
    if-nez v3, :cond_4

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v6

    if-nez v6, :cond_4

    .line 776
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsFootprints(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 778
    :cond_4
    new-instance v0, Lcom/htc/album/helper/MenuManager$2;

    invoke-direct {v0, p0, p3, p1, v1}, Lcom/htc/album/helper/MenuManager$2;-><init>(Lcom/htc/album/helper/MenuManager;ILandroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 812
    .local v0, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v4, mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 814
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 815
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 817
    const v6, 0x2040210

    invoke-virtual {p0, p1, v6, v4, v0}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 759
    .end local v0           #clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    .end local v4           #mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    :cond_5
    instance-of v6, v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v6, :cond_2

    move-object v6, v1

    .line 760
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 762
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsWallpaper(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 765
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/helper/MenuManager;->appendSetAsLockScreen(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public showShareMediaFolderMenu(Landroid/content/Context;IIZLcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"
    .parameter "clickListener"

    .prologue
    const/4 v1, 0x0

    .line 1794
    if-nez p1, :cond_1

    .line 1796
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[showShareMediaFolderMenu] Null context"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    :cond_0
    :goto_0
    return-object v1

    .line 1800
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1801
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][MenuManager][shareItems]: Ends"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1808
    const v1, 0x20400a1

    invoke-direct {p0, p1, v1, v0, p5}, Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "image"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 951
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 953
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[showShareMediaMenu] null context or adapter found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :goto_0
    return-object v1

    .line 957
    :cond_1
    move-object v5, p2

    .line 958
    .local v5, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v5, :cond_2

    .line 960
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[showShareMediaMenu] null image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :cond_2
    invoke-static {p1, v5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v2

    .line 967
    .local v2, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 969
    new-instance v0, Lcom/htc/album/helper/MenuManager$3;

    move-object v1, p0

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager$3;-><init>(Lcom/htc/album/helper/MenuManager;Ljava/util/ArrayList;ILandroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 1001
    .local v0, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    const v1, 0x20400a1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1004
    .end local v0           #clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    :cond_3
    const v3, 0x7f0a000c

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showTabletItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 52
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"

    .prologue
    .line 3358
    if-nez p3, :cond_0

    .line 3360
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[showItemDetails] null image found!!"

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3361
    const/16 v21, 0x0

    .line 3757
    :goto_0
    return-object v21

    .line 3364
    :cond_0
    const v4, 0x7f03000a

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 3365
    .local v5, d:Landroid/widget/ScrollView;
    const v4, 0x7f090023

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 3368
    .local v22, detailsContainer:Landroid/view/ViewGroup;
    const v4, 0x7f090026

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    .line 3371
    .local v30, imageView:Landroid/widget/ImageView;
    new-instance v4, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 3372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3374
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v31

    .line 3376
    .local v31, isDrm:Z
    const/16 v45, -0x1

    .line 3377
    .local v45, size:I
    const v4, 0x7f090028

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/EditText;

    .line 3378
    .local v24, editText:Landroid/widget/EditText;
    const v4, 0x7f090027

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 3379
    .local v47, textView:Landroid/widget/TextView;
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3380
    const/4 v4, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3381
    const/16 v4, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3383
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 3384
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 3385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v46

    .line 3386
    .local v46, subFileIndex:I
    const/4 v4, -0x1

    move/from16 v0, v46

    if-eq v0, v4, :cond_12

    .line 3387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v48

    .line 3388
    .local v48, tmpSubName:Ljava/lang/String;
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    .line 3389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    const/4 v6, 0x0

    move/from16 v0, v46

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 3393
    .end local v48           #tmpSubName:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3397
    const/4 v14, 0x0

    .line 3400
    .local v14, bFirstRowAdded:Z
    if-eqz p5, :cond_1

    const-string v4, "file"

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3405
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v28

    .line 3406
    .local v28, fullPathName:Ljava/lang/String;
    const/16 v40, 0x0

    .line 3407
    .local v40, pathName:Ljava/lang/String;
    if-eqz v28, :cond_2

    .line 3408
    const/16 v37, 0x0

    .line 3409
    .local v37, nStart:I
    const/16 v4, 0x2f

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v36

    .line 3410
    .local v36, nLastIndex:I
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    .line 3411
    move-object/from16 v0, v28

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    .line 3414
    .end local v36           #nLastIndex:I
    .end local v37           #nStart:I
    :cond_2
    if-eqz v40, :cond_3

    .line 3416
    const v4, 0x7f0a0073

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v40

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3421
    .end local v28           #fullPathName:Ljava/lang/String;
    .end local v40           #pathName:Ljava/lang/String;
    :cond_3
    if-nez p5, :cond_5

    .line 3423
    const-string v20, ""

    .line 3424
    .local v20, dateString:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v18

    .line 3425
    .local v18, dateSort:J
    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-nez v4, :cond_4

    .line 3427
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v18

    .line 3428
    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-nez v4, :cond_4

    .line 3430
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateAdded()J

    move-result-wide v18

    .line 3433
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-eqz v4, :cond_5

    .line 3435
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    .line 3436
    .local v17, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 3437
    .local v15, cal:Ljava/util/Calendar;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3439
    sget-object v4, Lcom/htc/album/helper/MenuManager;->sDateFormat:Ljava/lang/CharSequence;

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3442
    const/16 v4, 0xb

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v29

    .line 3443
    .local v29, hour:I
    const/16 v4, 0xc

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v35

    .line 3447
    .local v35, min:I
    const/16 v4, 0xa

    move/from16 v0, v29

    if-ge v0, v4, :cond_13

    .line 3448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " 0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3452
    :goto_2
    const/16 v4, 0xa

    move/from16 v0, v35

    if-ge v0, v4, :cond_14

    .line 3453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3459
    :goto_3
    const v4, 0x7f0a007d

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3464
    .end local v15           #cal:Ljava/util/Calendar;
    .end local v17           #date:Ljava/util/Date;
    .end local v18           #dateSort:J
    .end local v20           #dateString:Ljava/lang/String;
    .end local v29           #hour:I
    .end local v35           #min:I
    :cond_5
    const-string v34, ""

    .line 3467
    .local v34, lengthString:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v42

    .line 3468
    .local v42, recordLength:J
    const-wide/16 v6, -0x1

    cmp-long v4, v42, v6

    if-nez v4, :cond_6

    .line 3469
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v49

    .line 3471
    .local v49, uri:Landroid/net/Uri;
    const-string v4, "file"

    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3473
    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v39

    .line 3475
    .local v39, path:Ljava/lang/String;
    :try_start_0
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3476
    .local v27, file:Ljava/io/File;
    const-string v4, "[showTabletItemDetails]"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3478
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v42

    .line 3485
    .end local v27           #file:Ljava/io/File;
    .end local v39           #path:Ljava/lang/String;
    .end local v49           #uri:Landroid/net/Uri;
    :cond_6
    :goto_4
    const-wide/16 v6, 0x0

    cmp-long v4, v42, v6

    if-lez v4, :cond_7

    .line 3486
    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 3489
    :cond_7
    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3490
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v16

    .line 3492
    .local v16, data:Ljava/io/InputStream;
    if-eqz v16, :cond_8

    .line 3493
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v32, v0

    .line 3494
    .local v32, length:J
    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 3496
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3504
    .end local v16           #data:Ljava/io/InputStream;
    .end local v32           #length:J
    :cond_8
    :goto_5
    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3505
    const v4, 0x7f0a0081

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v34

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3509
    :cond_9
    if-nez v31, :cond_a

    .line 3510
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 3512
    .local v44, resolution:Ljava/lang/String;
    const v4, 0x7f0a0074

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3517
    .end local v44           #resolution:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p3

    instance-of v4, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    if-eqz v4, :cond_15

    move-object/from16 v4, p3

    .line 3518
    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/htc/album/helper/MenuManager;->setupTabletVideoDetailRows(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V

    .line 3527
    :goto_6
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "video/x-wmv-drm"

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3528
    :cond_b
    const v4, 0x7f0a007e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0080

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4, v6, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3540
    :goto_7
    const/16 v26, 0x0

    .line 3542
    .local v26, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/album/helper/MenuManager;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3543
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v26

    .line 3545
    :cond_c
    if-eqz v26, :cond_11

    .line 3547
    const-string v4, "Make"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 3548
    .local v50, value:Ljava/lang/String;
    if-eqz v50, :cond_d

    .line 3549
    const v4, 0x7f0a0083

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v50

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3552
    :cond_d
    const-string v4, "Model"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    .end local v50           #value:Ljava/lang/String;
    check-cast v50, Ljava/lang/String;

    .line 3553
    .restart local v50       #value:Ljava/lang/String;
    if-eqz v50, :cond_e

    .line 3554
    const v4, 0x7f0a0084

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v50

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3557
    :cond_e
    const-string v4, "WhiteBalance"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    .end local v50           #value:Ljava/lang/String;
    check-cast v50, Ljava/lang/String;

    .line 3558
    .restart local v50       #value:Ljava/lang/String;
    if-eqz v50, :cond_f

    .line 3559
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/htc/album/AlbumUtility/ExifUtil;->whiteBalanceToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v50

    .line 3561
    :cond_f
    if-eqz v50, :cond_10

    const-string v4, ""

    move-object/from16 v0, v50

    if-eq v0, v4, :cond_10

    .line 3562
    const v4, 0x7f0a0085

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v50

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3565
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager;->setTabletLatLngDetails(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    .line 3570
    .end local v50           #value:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3572
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 3391
    .end local v14           #bFirstRowAdded:Z
    .end local v26           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v34           #lengthString:Ljava/lang/String;
    .end local v42           #recordLength:J
    :cond_12
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    goto/16 :goto_1

    .line 3450
    .restart local v14       #bFirstRowAdded:Z
    .restart local v15       #cal:Ljava/util/Calendar;
    .restart local v17       #date:Ljava/util/Date;
    .restart local v18       #dateSort:J
    .restart local v20       #dateString:Ljava/lang/String;
    .restart local v29       #hour:I
    .restart local v35       #min:I
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 3455
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 3480
    .end local v15           #cal:Ljava/util/Calendar;
    .end local v17           #date:Ljava/util/Date;
    .end local v18           #dateSort:J
    .end local v20           #dateString:Ljava/lang/String;
    .end local v29           #hour:I
    .end local v35           #min:I
    .restart local v34       #lengthString:Ljava/lang/String;
    .restart local v39       #path:Ljava/lang/String;
    .restart local v42       #recordLength:J
    .restart local v49       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v23

    .line 3481
    .local v23, e:Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 3498
    .end local v23           #e:Ljava/lang/Exception;
    .end local v39           #path:Ljava/lang/String;
    .end local v49           #uri:Landroid/net/Uri;
    .restart local v16       #data:Ljava/io/InputStream;
    :catch_1
    move-exception v25

    .line 3499
    .local v25, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 3500
    .end local v25           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    throw v4

    .line 3523
    .end local v16           #data:Ljava/io/InputStream;
    :cond_15
    const v4, 0x7f0a0082

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4, v6, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    goto/16 :goto_6

    .line 3530
    :cond_16
    const v4, 0x7f0a007e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4, v6, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    goto/16 :goto_7

    .line 3578
    .restart local v26       #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0015

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v51, 0x2040174

    new-instance v6, Lcom/htc/album/helper/MenuManager$12;

    move-object/from16 v7, p0

    move/from16 v8, v31

    move-object/from16 v9, v24

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v6 .. v13}, Lcom/htc/album/helper/MenuManager$12;-><init>(Lcom/htc/album/helper/MenuManager;ZLandroid/widget/EditText;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    move/from16 v0, v51

    invoke-virtual {v4, v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x20401ee

    new-instance v7, Lcom/htc/album/helper/MenuManager$11;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/album/helper/MenuManager$11;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x20401ee

    new-instance v7, Lcom/htc/album/helper/MenuManager$10;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/album/helper/MenuManager$10;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 3636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v21, v0

    .line 3639
    .local v21, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3644
    const/4 v4, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v41

    .line 3645
    .local v41, positiveBtn:Landroid/widget/Button;
    if-eqz v41, :cond_18

    const/4 v4, 0x4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3647
    :cond_18
    const/4 v4, -0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v38

    .line 3648
    .local v38, negativeBtn:Landroid/widget/Button;
    if-eqz v38, :cond_19

    const/4 v4, 0x4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3650
    :cond_19
    if-nez v31, :cond_1a

    if-nez p5, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/album/helper/MenuManager;->mbAllowEdit:Z

    if-eqz v4, :cond_1a

    .line 3654
    new-instance v4, Lcom/htc/album/helper/MenuManager$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v47

    move-object/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager$13;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/widget/HtcAlertDialog;Landroid/widget/TextView;Landroid/widget/EditText;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3738
    :cond_1a
    new-instance v4, Lcom/htc/album/helper/MenuManager$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/helper/MenuManager$14;-><init>(Lcom/htc/album/helper/MenuManager;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3754
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x400

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 3755
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showTabletItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 24
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    .line 2660
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2662
    :cond_0
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[showTabletItemDetails_FromDetailDlgParams] null context or DetailDlgParams found!!"

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    const/4 v14, 0x0

    .line 2786
    :goto_0
    return-object v14

    .line 2670
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/helper/MenuManager;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 2672
    const v4, 0x7f03000a

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 2673
    .local v5, d:Landroid/widget/ScrollView;
    const v4, 0x7f090023

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 2675
    .local v15, detailsContainer:Landroid/view/ViewGroup;
    const v4, 0x7f090026

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 2681
    .local v19, imageView:Landroid/widget/ImageView;
    new-instance v4, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/album/DetailDlgParams;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 2682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2684
    const v4, 0x7f090028

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 2685
    .local v18, editText:Landroid/widget/EditText;
    const v4, 0x7f090027

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2686
    .local v21, textView:Landroid/widget/TextView;
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2687
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2688
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2690
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 2691
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 2692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2696
    const/4 v10, 0x0

    .line 2699
    .local v10, bFirstRowAdded:Z
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getPathName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2700
    const v4, 0x7f0a0073

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getPathName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2703
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 2704
    const v4, 0x7f0a007d

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDateString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2707
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/DetailDlgParams;->getSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 2708
    .local v20, sSize:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 2709
    const v4, 0x7f0a0081

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v15, v4, v1, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2713
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->isVideio()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 2714
    const v4, 0x7f0a0074

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2717
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->isVideio()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 2720
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 2721
    const v4, 0x7f0a0074

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2724
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 2725
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v0, v4, 0x3e8

    move/from16 v16, v0

    .line 2726
    .local v16, durationMs:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    .line 2727
    .local v17, durationValue:Ljava/lang/String;
    const v4, 0x7f0a0075

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v15, v4, v1, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2730
    .end local v16           #durationMs:I
    .end local v17           #durationValue:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getFramerate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 2731
    const v4, 0x7f0a0076

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getFramerate()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2734
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getBitrate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 2735
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getBitrate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2737
    .local v11, bitRate:J
    const-wide/32 v6, 0xf4240

    cmp-long v4, v11, v6

    if-gez v4, :cond_b

    .line 2738
    const v4, 0x7f0a007b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    div-long v8, v11, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2743
    .local v13, bps:Ljava/lang/String;
    :goto_1
    const v4, 0x7f0a0077

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v13, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2747
    .end local v11           #bitRate:J
    .end local v13           #bps:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    .line 2749
    const v4, 0x7f0a0082

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getMimeType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2753
    :cond_a
    const v4, 0x7f0a007e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2757
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0015

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x2040174

    new-instance v7, Lcom/htc/album/helper/MenuManager$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/album/helper/MenuManager$8;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v14

    .line 2768
    .local v14, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    new-instance v4, Lcom/htc/album/helper/MenuManager$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/helper/MenuManager$9;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v14, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2783
    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x400

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 2784
    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 2740
    .end local v14           #detailDlg:Lcom/htc/widget/HtcAlertDialog;
    .restart local v11       #bitRate:J
    :cond_b
    const v4, 0x7f0a007c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-double v8, v11

    const-wide v22, 0x412e848000000000L

    div-double v8, v8, v22

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #bps:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public showTabletProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 20
    .parameter "context"
    .parameter "curImage"

    .prologue
    .line 2254
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2363
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 2260
    .restart local p2
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2265
    const v4, 0x7f03000a

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 2266
    .local v5, d:Landroid/widget/ScrollView;
    const v4, 0x7f090023

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 2269
    .local v15, detailsContainer:Landroid/view/ViewGroup;
    const v4, 0x7f090026

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 2271
    .local v18, imageView:Landroid/widget/ImageView;
    const v4, 0x7f090028

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 2272
    .local v17, editText:Landroid/widget/EditText;
    const v4, 0x7f090027

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 2273
    .local v19, titleText:Landroid/widget/TextView;
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2274
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2275
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2276
    const v4, 0x7f0a0097

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2278
    const/4 v10, 0x0

    .local v10, bFirstRowAdded:Z
    move-object/from16 v4, p2

    .line 2279
    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v16

    .line 2280
    .local v16, drmType:I
    const/4 v4, 0x3

    move/from16 v0, v16

    if-ne v0, v4, :cond_2

    .line 2281
    const v4, 0x7f0a0091

    const v6, 0x7f0a0099

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2286
    :goto_1
    new-instance v4, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 2287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2289
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_3

    .line 2292
    const v4, 0x7f0a0092

    const v6, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2293
    const v4, 0x7f0a0093

    const v6, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2294
    const v4, 0x7f0a0094

    const v6, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2332
    .end local p2
    :goto_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a008c

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x2040174

    new-instance v7, Lcom/htc/album/helper/MenuManager$6;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/album/helper/MenuManager$6;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    .line 2343
    .local v11, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v11, :cond_0

    .line 2345
    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v14

    .line 2346
    .local v14, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v14, :cond_0

    .line 2348
    new-instance v4, Lcom/htc/album/helper/MenuManager$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/helper/MenuManager$7;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v14, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2360
    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 2283
    .end local v11           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v14           #detailDlg:Lcom/htc/widget/HtcAlertDialog;
    .restart local p2
    :cond_2
    const v4, 0x7f0a0091

    const v6, 0x7f0a0098

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_1

    .line 2299
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 2300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02002d

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    .line 2302
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/htc/opensense2/album/util/BitmapUtil2;->isUsableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-ne v4, v6, :cond_5

    .line 2304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/htc/album/helper/MenuManager;->setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2307
    :cond_5
    const/4 v4, 0x2

    new-array v12, v4, [Ljava/lang/String;

    .line 2308
    .local v12, constraints:[Ljava/lang/String;
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/htc/opensense2/album/util/DrmManager;->getConstranitStringType(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;[Ljava/lang/String;)I

    move-result v13

    .line 2309
    .local v13, constriantType:I
    const/4 v4, -0x1

    if-ne v13, v4, :cond_6

    .line 2310
    const v4, 0x7f0a0092

    const-string v6, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2311
    const v4, 0x7f0a0093

    const v6, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2312
    const v4, 0x7f0a0094

    const v6, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_2

    .line 2314
    :cond_6
    if-nez v13, :cond_7

    .line 2315
    const v4, 0x7f0a0092

    const/4 v6, 0x0

    aget-object v6, v12, v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2316
    const v4, 0x7f0a0093

    const v6, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2317
    const v4, 0x7f0a0094

    const v6, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_2

    .line 2319
    :cond_7
    const/4 v4, 0x2

    if-ne v13, v4, :cond_8

    .line 2320
    const v4, 0x7f0a0092

    const-string v6, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2321
    const v4, 0x7f0a0093

    const/4 v6, 0x0

    aget-object v6, v12, v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2322
    const v4, 0x7f0a0094

    const/4 v6, 0x1

    aget-object v6, v12, v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_2

    .line 2324
    :cond_8
    const v4, 0x7f0a0092

    const-string v6, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2325
    const v4, 0x7f0a0093

    const v6, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2326
    const v4, 0x7f0a0094

    const v6, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_2
.end method
