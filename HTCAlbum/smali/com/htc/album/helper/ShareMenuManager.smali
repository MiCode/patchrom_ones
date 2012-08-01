.class public Lcom/htc/album/helper/ShareMenuManager;
.super Ljava/lang/Object;
.source "ShareMenuManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SHARE_VIA_MIN:I = 0x4

.field private static mShareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;


# instance fields
.field mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field private mSharePluginButtonId:I

.field private mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

.field private mSharePluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->mShareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginButtonId:I

    .line 56
    iput-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 57
    iput-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    return-void
.end method

.method public static createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;
    .locals 53
    .parameter "context"
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    if-nez p0, :cond_0

    .line 385
    sget-object v51, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v52, "[createLocalFolderShareList] Null context"

    invoke-static/range {v51 .. v52}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/16 v29, 0x0

    .line 723
    :goto_0
    return-object v29

    .line 393
    :cond_0
    sget-object v51, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v52, "[createLocalFolderShareList]: Begin"

    invoke-static/range {v51 .. v52}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    if-gtz p1, :cond_1

    if-gtz p2, :cond_1

    .line 397
    sget-object v51, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v52, "[createLocalFolderShareList]: Nothing to share!!"

    invoke-static/range {v51 .. v52}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/16 v29, 0x0

    goto :goto_0

    .line 402
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    const/16 v51, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    .local v17, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    .line 405
    .local v32, pm:Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Lcom/htc/album/helper/ShareMenuManager;->getShareViaAdapterInstance(Landroid/content/Context;)Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v45

    .line 408
    .local v45, shareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;
    new-instance v18, Landroid/content/Intent;

    const-string v51, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v18, msgIntent:Landroid/content/Intent;
    const-string v51, "image/*"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v51, "video/*"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v47

    .line 412
    .local v47, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v51, "android.intent.action.SEND_MSG"

    const v52, 0x10003

    move-object/from16 v0, v17

    move-object/from16 v1, v47

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 415
    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 418
    new-instance v43, Landroid/content/Intent;

    const-string v51, "com.htc.vmm.SEND"

    move-object/from16 v0, v43

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v43, sendVMMVideoIntent:Landroid/content/Intent;
    const-string v51, "video/*"

    move-object/from16 v0, v43

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    new-instance v40, Landroid/content/Intent;

    const-string v51, "com.htc.vmm.SEND"

    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v40, sendVMMImageIntent:Landroid/content/Intent;
    const-string v51, "image/*"

    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    new-instance v42, Landroid/content/Intent;

    const-string v51, "com.htc.vmm.SEND_MULTIPLE"

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v42, sendVMMMultipleVideoIntent:Landroid/content/Intent;
    const-string v51, "video/*"

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    new-instance v41, Landroid/content/Intent;

    const-string v51, "com.htc.vmm.SEND_MULTIPLE"

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v41, sendVMMMultipleImageIntent:Landroid/content/Intent;
    const-string v51, "image/*"

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    new-instance v44, Landroid/content/Intent;

    const-string v51, "android.intent.action.SEND"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v44, sendVideoIntent:Landroid/content/Intent;
    const-string v51, "video/*"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    new-instance v35, Landroid/content/Intent;

    const-string v51, "android.intent.action.SEND"

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v35, sendImageIntent:Landroid/content/Intent;
    const-string v51, "image/*"

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    new-instance v37, Landroid/content/Intent;

    const-string v51, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v37, sendMultipleImageIntent_android:Landroid/content/Intent;
    const-string v51, "image/*"

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    new-instance v39, Landroid/content/Intent;

    const-string v51, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v39

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v39, sendMultipleVideoIntent_android:Landroid/content/Intent;
    const-string v51, "video/*"

    move-object/from16 v0, v39

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    new-instance v36, Landroid/content/Intent;

    const-string v51, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v36

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v36, sendMultipleImageIntent:Landroid/content/Intent;
    const-string v51, "image/*"

    move-object/from16 v0, v36

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    new-instance v38, Landroid/content/Intent;

    const-string v51, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v38, sendMultipleVideoIntent:Landroid/content/Intent;
    const-string v51, "video/*"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 451
    .local v15, imageVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v50

    .line 452
    .local v50, videoVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v23

    .line 453
    .local v23, multiImageVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v28

    .line 455
    .local v28, multiVideoVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 457
    .local v13, imageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v48

    .line 460
    .local v48, videoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .line 463
    .local v20, multiImageList_android:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v25

    .line 465
    .local v25, multiVideoList_android:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 467
    .local v19, multiImageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v51, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v24

    .line 471
    .local v24, multiVideoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 472
    .local v6, IMAGE_FOLDER:I
    const/16 v9, 0xa

    .line 473
    .local v9, VIDEO_FOLDER:I
    const/16 v8, 0x1e

    .line 486
    .local v8, MIXED_FOLDER:I
    const/4 v5, -0x1

    .line 490
    .local v5, FOLDER_TYPE:I
    if-gtz p1, :cond_5

    .line 492
    const-string v51, "android.intent.action.SEND"

    const v52, 0x10002

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 494
    const-string v51, "android.intent.action.SEND_MULTIPLE"

    const v52, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 496
    const-string v51, "htc.intent.action.SEND_MULTIPLE"

    const v52, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 499
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 500
    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 501
    move-object/from16 v0, v45

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 505
    const-string v51, "com.htc.vmm.SEND"

    const v52, 0x10002

    move-object/from16 v0, v17

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 506
    const-string v51, "com.htc.vmm.SEND_MULTIPLE"

    const v52, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 508
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 509
    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 513
    if-eqz p3, :cond_2

    .line 514
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V

    .line 515
    :cond_2
    const/16 v5, 0xa

    .line 593
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDuplicateItems(Ljava/util/List;)V

    .line 595
    sget-boolean v51, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_MMS:Z

    if-eqz v51, :cond_3

    .line 596
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutMMSItems(Ljava/util/List;)V

    .line 598
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 600
    .local v16, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/16 v46, 0x0

    .line 602
    .local v46, szLabel:Ljava/lang/String;
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v46

    if-nez v46, :cond_4

    goto :goto_2

    .line 517
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v46           #szLabel:Ljava/lang/String;
    :cond_5
    if-gtz p2, :cond_7

    .line 519
    const-string v51, "android.intent.action.SEND"

    const v52, 0x10001

    move-object/from16 v0, v17

    move-object/from16 v1, v51

    move-object/from16 v2, p0

    move/from16 v3, v52

    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 521
    const-string v51, "android.intent.action.SEND_MULTIPLE"

    const v52, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 523
    const-string v51, "htc.intent.action.SEND_MULTIPLE"

    const v52, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 526
    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 527
    move-object/from16 v0, v45

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 528
    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 532
    const-string v51, "com.htc.vmm.SEND"

    const v52, 0x10001

    move-object/from16 v0, v17

    move-object/from16 v1, v51

    move-object/from16 v2, p0

    move/from16 v3, v52

    invoke-static {v0, v15, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 533
    const-string v51, "com.htc.vmm.SEND_MULTIPLE"

    const v52, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 535
    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 536
    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 541
    if-eqz p3, :cond_6

    .line 542
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V

    .line 543
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 547
    :cond_7
    const-string v51, "android.intent.action.SEND"

    const v52, 0x10002

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 550
    const-string v51, "android.intent.action.SEND"

    const v52, 0x10001

    move-object/from16 v0, v17

    move-object/from16 v1, v51

    move-object/from16 v2, p0

    move/from16 v3, v52

    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 553
    const-string v51, "android.intent.action.SEND_MULTIPLE"

    const v52, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 555
    const-string v51, "android.intent.action.SEND_MULTIPLE"

    const v52, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 557
    const-string v51, "htc.intent.action.SEND_MULTIPLE"

    const v52, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 559
    const-string v51, "htc.intent.action.SEND_MULTIPLE"

    const v52, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 562
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 563
    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 564
    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 565
    move-object/from16 v0, v45

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 566
    move-object/from16 v0, v45

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 567
    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 571
    const-string v51, "com.htc.vmm.SEND"

    const v52, 0x10002

    move-object/from16 v0, v17

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 572
    const-string v51, "com.htc.vmm.SEND_MULTIPLE"

    const v52, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 573
    const-string v51, "com.htc.vmm.SEND"

    const v52, 0x10001

    move-object/from16 v0, v17

    move-object/from16 v1, v51

    move-object/from16 v2, p0

    move/from16 v3, v52

    invoke-static {v0, v15, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 574
    const-string v51, "com.htc.vmm.SEND_MULTIPLE"

    const v52, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v51

    move-object/from16 v3, p0

    move/from16 v4, v52

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 576
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 577
    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 578
    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 579
    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 584
    if-eqz p3, :cond_8

    .line 585
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V

    .line 587
    :cond_8
    const/16 v5, 0x1e

    goto/16 :goto_1

    .line 608
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDisabledItems(Ljava/util/List;)V

    .line 612
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v17

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/ShareMenuManager;->searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;Lcom/htc/widget/HtcShareViaMultiAdapter;)Z

    .line 614
    sparse-switch v5, :sswitch_data_0

    .line 718
    :goto_3
    invoke-virtual/range {v45 .. v45}, Lcom/htc/widget/HtcShareViaMultiAdapter;->getShareListResolveInfo()Ljava/util/List;

    move-result-object v30

    .line 719
    .local v30, orderList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/htc/album/helper/ShareMenuManager;->getOrderComparableList(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v29

    .line 721
    .local v29, orderComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v51, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v52, "[createLocalFolderShareList]: Ends"

    invoke-static/range {v51 .. v52}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    .end local v29           #orderComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    .end local v30           #orderList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :sswitch_0
    sget-object v51, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v52, "[createLocalFolderShareList]: Image/Video Folder"

    invoke-static/range {v51 .. v52}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 621
    :sswitch_1
    sget-object v51, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v52, "[createLocalFolderShareList]: Mixed Folder"

    invoke-static/range {v51 .. v52}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v51

    move/from16 v0, v51

    new-array v7, v0, [I

    .line 627
    .local v7, ITEMS_TYPE:[I
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 628
    .local v14, imageMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v49, Ljava/util/HashSet;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashSet;-><init>()V

    .line 629
    .local v49, videoMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 630
    .local v22, multiImageMap_android:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 631
    .local v27, multiVideoMap_android:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 632
    .local v21, multiImageMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 634
    .local v26, multiVideoMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 635
    .local v34, rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 636
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_a
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 637
    .restart local v34       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 638
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_b
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 639
    .restart local v34       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 640
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_c
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 641
    .restart local v34       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 642
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_d
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 643
    .restart local v34       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 644
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_e
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 645
    .restart local v34       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 646
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_f
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 647
    .restart local v34       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 648
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_10
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 649
    .restart local v34       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 650
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_11
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 651
    .restart local v34       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 652
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_12
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 653
    .restart local v34       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 655
    .end local v34           #rs:Landroid/content/pm/ResolveInfo;
    :cond_13
    const/4 v11, 0x0

    .local v11, i:I
    :goto_e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v51

    move/from16 v0, v51

    if-ge v11, v0, :cond_1e

    .line 657
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 658
    .local v33, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v51

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 659
    .local v10, aiName:Ljava/lang/String;
    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v51

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 661
    .local v31, packageName:Ljava/lang/String;
    const-string v51, "com.htc.android.mail"

    move-object/from16 v0, v51

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_14

    .line 663
    const v51, 0x20003

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 655
    :goto_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 666
    :cond_14
    const-string v51, "com.android.mms"

    move-object/from16 v0, v51

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_15

    .line 668
    const v51, 0x10003

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 672
    :cond_15
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_17

    .line 674
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_16

    .line 675
    const v51, 0x20003

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 677
    :cond_16
    const v51, 0x20001

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 680
    :cond_17
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_18

    .line 682
    const v51, 0x20002

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 685
    :cond_18
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1a

    .line 687
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_19

    .line 688
    const v51, 0x20003

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 690
    :cond_19
    const v51, 0x20001

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 693
    :cond_1a
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1b

    .line 695
    const v51, 0x20002

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 698
    :cond_1b
    invoke-virtual {v14, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1d

    .line 700
    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1c

    .line 701
    const v51, 0x10003

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 703
    :cond_1c
    const v51, 0x10001

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 707
    :cond_1d
    const v51, 0x10002

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 713
    .end local v10           #aiName:Ljava/lang/String;
    .end local v31           #packageName:Ljava/lang/String;
    .end local v33           #ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_1e
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsByGroupMerge(Ljava/util/List;)V

    goto/16 :goto_3

    .line 614
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method public static createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;
    .locals 22
    .parameter "context"
    .parameter "targetImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    if-nez p0, :cond_1

    .line 179
    sget-object v19, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v20, "[createLocalSingleShareList] null context"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v11, 0x0

    .line 284
    :cond_0
    :goto_0
    return-object v11

    .line 183
    :cond_1
    move-object/from16 v4, p1

    .line 184
    .local v4, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v4, :cond_2

    .line 186
    sget-object v19, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v20, "[createLocalSingleShareList] null image found!!"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v11, 0x0

    goto :goto_0

    .line 191
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v9, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 194
    .local v13, pm:Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Lcom/htc/album/helper/ShareMenuManager;->getShareViaAdapterInstance(Landroid/content/Context;)Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v16

    .line 199
    .local v16, shareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;
    new-instance v7, Landroid/content/Intent;

    const-string v19, "com.htc.vmm.SEND"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v7, intent:Landroid/content/Intent;
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v8

    .line 201
    .local v8, isVideo:Z
    if-eqz v8, :cond_6

    .line 202
    const-string v19, "video/*"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :goto_1
    const/high16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 206
    .local v18, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v20, "com.htc.vmm.SEND"

    if-eqz v8, :cond_7

    const v19, 0x10002

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v19

    invoke-static {v9, v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 208
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 213
    new-instance v14, Landroid/content/Intent;

    const-string v19, "android.intent.action.SEND"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v14, sendIntent:Landroid/content/Intent;
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 216
    const-string v19, "video/*"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :goto_3
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v10, msgIntent:Landroid/content/Intent;
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 226
    const-string v19, "video/*"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :goto_4
    const/high16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v14, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 237
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_a

    const v15, 0x10002

    .line 239
    .local v15, shareType:I
    :goto_5
    const-string v19, "android.intent.action.SEND"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-static {v9, v0, v1, v2, v15}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 241
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 245
    const/high16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 246
    const-string v19, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-static {v9, v0, v1, v2, v15}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 249
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 251
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 252
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V

    .line 255
    :cond_3
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_MMS:Z

    if-eqz v19, :cond_4

    .line 256
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutMMSItems(Ljava/util/List;)V

    .line 258
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 260
    .local v6, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/16 v17, 0x0

    .line 262
    .local v17, szLabel:Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 265
    sget-object v19, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[createLocalSingleShareList]: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 204
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v10           #msgIntent:Landroid/content/Intent;
    .end local v14           #sendIntent:Landroid/content/Intent;
    .end local v15           #shareType:I
    .end local v17           #szLabel:Ljava/lang/String;
    .end local v18           #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    const-string v19, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 206
    .restart local v18       #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    const v19, 0x10001

    goto/16 :goto_2

    .line 220
    .restart local v14       #sendIntent:Landroid/content/Intent;
    :cond_8
    const-string v19, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 230
    .restart local v10       #msgIntent:Landroid/content/Intent;
    :cond_9
    const-string v19, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 237
    :cond_a
    const v15, 0x10001

    goto/16 :goto_5

    .line 267
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v15       #shareType:I
    :cond_b
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDisabledItems(Ljava/util/List;)V

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v4, v9, v1}, Lcom/htc/album/helper/ShareMenuManager;->searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;Lcom/htc/widget/HtcShareViaMultiAdapter;)Z

    .line 271
    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcShareViaMultiAdapter;->getShareListResolveInfo()Ljava/util/List;

    move-result-object v12

    .line 272
    .local v12, orderList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v9, v12}, Lcom/htc/album/helper/ShareMenuManager;->getOrderComparableList(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v11

    .line 275
    .local v11, orderComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_0

    .line 281
    const v19, 0x7f0a000c

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 284
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    if-nez p0, :cond_0

    .line 815
    const/4 v2, 0x0

    .line 830
    :goto_0
    return-object v2

    .line 817
    :cond_0
    invoke-static {p0}, Lcom/htc/album/helper/ShareMenuManager;->getShareViaAdapterInstance(Landroid/content/Context;)Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v5

    .line 819
    .local v5, shareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    .local v1, intentText:Landroid/content/Intent;
    const-string v6, "text/plain"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 824
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x1

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 825
    .local v4, shareList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v6, "android.intent.action.SEND"

    const v7, 0x10003

    invoke-static {v4, v6, p0, v7}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 827
    .local v0, criList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual {v5}, Lcom/htc/widget/HtcShareViaMultiAdapter;->getShareListResolveInfo()Ljava/util/List;

    move-result-object v3

    .line 828
    .local v3, orderList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v0, v3}, Lcom/htc/album/helper/ShareMenuManager;->getOrderComparableList(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 830
    .local v2, orderComparableList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    check-cast v2, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    .local p3, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v4

    .line 158
    :cond_1
    :goto_0
    return v3

    .line 139
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 141
    :cond_3
    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[createShareSocialMenu] Null share list!!"

    invoke-static {v3, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 142
    goto :goto_0

    .line 145
    :cond_4
    new-instance v4, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v4, p1, p3, v3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 146
    invoke-virtual {p2}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, item:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 151
    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v4, v1}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .restart local v0       #item:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-nez v0, :cond_5

    .line 149
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_5
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    .local v2, shareIcon:Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v2, v4}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2
.end method

.method private doCreateDropList(Landroid/content/Context;Landroid/view/SubMenu;ILjava/util/ArrayList;)Z
    .locals 6
    .parameter "context"
    .parameter "shareMenu"
    .parameter "nGroupId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/SubMenu;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v5, 0x0

    .line 162
    new-instance v2, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v2, p1, p4, v5}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v2, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 164
    sget-object v2, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][doCreateDropList]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 169
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .restart local v1       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p3, v0, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z
    .locals 10
    .parameter "context"
    .parameter
    .parameter "menu"
    .parameter "menuItem"
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Landroid/view/Menu;",
            "Landroid/view/MenuItem;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 65
    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 66
    .local v1, id:I
    if-nez p1, :cond_1

    .line 68
    invoke-interface {p3, p5}, Landroid/view/Menu;->removeGroup(I)V

    .line 69
    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 129
    .end local v1           #id:I
    :cond_0
    :goto_0
    return v7

    .line 73
    .restart local v1       #id:I
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 75
    :cond_2
    sget-object v8, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[doCreateMenu] Null share list!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {p3, p5}, Landroid/view/Menu;->removeGroup(I)V

    .line 77
    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 81
    :cond_3
    new-instance v9, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v9, p1, p2, v8}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v9, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 83
    invoke-interface {p4}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    .line 84
    .local v3, order:I
    invoke-interface {p4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 85
    .local v6, title:Ljava/lang/CharSequence;
    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 86
    invoke-interface {p3, v7, v1, v3, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    .line 88
    .local v5, subMenu:Landroid/view/SubMenu;
    const/4 v2, 0x0

    .line 89
    .local v2, index:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 91
    .local v4, shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, p5, v2, v7, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    .end local v4           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_4
    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    .line 96
    const/4 v7, 0x2

    invoke-interface {p4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 97
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v7, v8

    .line 99
    goto :goto_0

    .line 103
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:I
    .end local v2           #index:I
    .end local v3           #order:I
    .end local v5           #subMenu:Landroid/view/SubMenu;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_5
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 106
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_7

    .line 108
    :cond_6
    sget-object v8, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[doCreateMenu] Null share list!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_7
    new-instance v9, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v9, p1, p2, v8}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v9, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 114
    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 115
    .restart local v1       #id:I
    invoke-interface {p4}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    .line 116
    .restart local v3       #order:I
    invoke-interface {p4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 117
    .restart local v6       #title:Ljava/lang/CharSequence;
    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 118
    invoke-interface {p3, v7, v1, v3, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    .line 120
    .restart local v5       #subMenu:Landroid/view/SubMenu;
    const/4 v2, 0x0

    .line 121
    .restart local v2       #index:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 123
    .restart local v4       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, p5, v2, v7, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    .end local v4           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_8
    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    move v7, v8

    .line 129
    goto/16 :goto_0
.end method

.method private static getOrderComparableList(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, mergedComparableList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    .local p1, orderList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 291
    .local v5, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v3, orderComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 294
    .local v4, orderRI:Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_2

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 295
    .local v6, srcPkgName:Ljava/lang/String;
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 296
    .local v2, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, tarPkgName:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 298
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v6           #srcPkgName:Ljava/lang/String;
    .end local v7           #tarPkgName:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 304
    .end local v4           #orderRI:Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v3
.end method

.method private getOrderPluginComparableList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, orderList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, mergelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v7, 0x0

    .line 941
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v3, v7

    .line 959
    :cond_1
    return-object v3

    .line 944
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v3, orderComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 948
    .local v4, orderRI:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_0
    check-cast v5, Ljava/lang/String;

    .line 949
    .local v5, srcActName:Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 951
    .local v2, info:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v6

    .line 952
    .local v6, tarActName:Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 954
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v5           #srcActName:Ljava/lang/String;
    .end local v6           #tarActName:Ljava/lang/String;
    :cond_5
    move-object v5, v7

    .line 948
    goto :goto_0
.end method

.method public static getShareViaAdapterInstance(Landroid/content/Context;)Lcom/htc/widget/HtcShareViaMultiAdapter;
    .locals 1
    .parameter "context"

    .prologue
    .line 890
    new-instance v0, Lcom/htc/widget/HtcShareViaMultiAdapter;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcShareViaMultiAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->mShareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;

    .line 892
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->mShareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;

    return-object v0
.end method

.method public static searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;Lcom/htc/widget/HtcShareViaMultiAdapter;)Z
    .locals 10
    .parameter "context"
    .parameter "iImageCurrent"
    .parameter
    .parameter "shareViaAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Lcom/htc/widget/HtcShareViaMultiAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, listShareTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/high16 v4, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 733
    const/4 v6, 0x0

    .line 734
    .local v6, bResult:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 741
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.USCSEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v8, sendIntent:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 744
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 745
    const-string v0, "video/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    :goto_0
    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 755
    .local v9, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 757
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: no android.intent.action.USCSEND"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_0
    :goto_1
    return v5

    .line 747
    .end local v9           #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const-string v0, "image/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 751
    :cond_2
    const-string v0, "*/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 761
    .restart local v9       #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    if-eqz p1, :cond_4

    .line 766
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-eq v3, v0, :cond_0

    .line 770
    :cond_4
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addSingleComparableRIList(Ljava/util/List;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;II)V

    .line 776
    invoke-virtual {p3, v8}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static updateRecord(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .parameter "context"
    .parameter "activityInfo"

    .prologue
    .line 897
    invoke-static {p0}, Lcom/htc/album/helper/ShareMenuManager;->getShareViaAdapterInstance(Landroid/content/Context;)Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v0

    .line 899
    .local v0, shareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;
    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->UpdateRecord(Landroid/content/pm/ActivityInfo;)Z

    .line 901
    :cond_0
    return-void
.end method


# virtual methods
.method public createLocalFolderShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;IIZ)Z
    .locals 2
    .parameter "context"
    .parameter
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;IIZ)Z"
        }
    .end annotation

    .prologue
    .line 796
    .local p2, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-static {p1, p3, p4, p5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 798
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createLocalFolderShareMenu(Landroid/content/Context;Landroid/view/Menu;IIZ)Z
    .locals 6
    .parameter "context"
    .parameter "menu"
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"

    .prologue
    .line 783
    const v0, 0x7f090087

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 784
    .local v4, menuItem:Landroid/view/MenuItem;
    if-nez v4, :cond_0

    .line 786
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[createLocalFolderShareMenu] No share menu found!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x0

    .line 792
    :goto_0
    return v0

    .line 790
    :cond_0
    invoke-static {p1, p3, p4, p5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 792
    .local v2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/16 v5, 0x303a

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createLocalSingleShareBubble(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/ui/widget/ControlButton;)Z
    .locals 3
    .parameter "context"
    .parameter "targetImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 327
    .local p3, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 329
    :cond_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[createLocalSingleShareBubble] Invalid inputs!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x0

    .line 334
    :goto_0
    return v1

    .line 333
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v0

    .line 334
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_0
.end method

.method public createLocalSingleShareMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/view/Menu;)Z
    .locals 6
    .parameter "context"
    .parameter "targetImage"
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 308
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 310
    :cond_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[createLocalSingleShareMenu] Invalid inputs!!"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    return v0

    .line 314
    :cond_1
    const v1, 0x7f090087

    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 315
    .local v4, menuItem:Landroid/view/MenuItem;
    if-nez v4, :cond_2

    .line 317
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[createLocalSingleShareMenu] No share menu found!!"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    invoke-static {p1, p2}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v2

    .line 322
    .local v2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/16 v5, 0x3039

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 912
    .local p2, shareBtnSubList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-nez p1, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    const/4 v3, 0x0

    .line 916
    .local v3, orderList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 917
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v0, 0x0

    .line 919
    .local v0, criList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->getShareViaAdapterInstance(Landroid/content/Context;)Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v4

    .line 920
    .local v4, shareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;
    if-eqz v4, :cond_0

    .line 922
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v1, intentText:Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 926
    invoke-virtual {v4}, Lcom/htc/widget/HtcShareViaMultiAdapter;->getShareListResolveInfo()Ljava/util/List;

    move-result-object v3

    .line 927
    const-string v5, "android.intent.action.SEND"

    const v6, 0x10003

    invoke-static {v3, v5, p1, v6}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 928
    iget-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    if-nez v5, :cond_2

    .line 929
    new-instance v5, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v6, 0x1

    invoke-direct {v5, p1, v0, v6}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 931
    :cond_2
    if-eqz p2, :cond_3

    .line 932
    invoke-direct {p0, p1, v3, p2}, Lcom/htc/album/helper/ShareMenuManager;->getOrderPluginComparableList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 935
    :goto_1
    if-eqz v2, :cond_0

    .line 936
    check-cast v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    iput-object v2, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    goto :goto_0

    .line 934
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_3
    iget-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v5}, Lcom/htc/album/helper/ShareMenuManager;->getOrderPluginComparableList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1
.end method

.method public createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 850
    .local p2, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 852
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createSocialShareDropList(Landroid/content/Context;Landroid/view/SubMenu;I)Z
    .locals 2
    .parameter "context"
    .parameter "shareMenu"
    .parameter "nGroupId"

    .prologue
    .line 856
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 858
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateDropList(Landroid/content/Context;Landroid/view/SubMenu;ILjava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createSocialShareMenu(Landroid/content/Context;Landroid/view/Menu;)Z
    .locals 1
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z
    .locals 7
    .parameter "footerBtn"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/FooterButton;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v4, 0x0

    .line 987
    const/4 v1, 0x0

    .line 988
    .local v1, bBtnIconBitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 990
    .local v3, toDoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-nez p1, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return v4

    .line 993
    :cond_1
    if-eqz p2, :cond_2

    .line 994
    move-object v3, p2

    .line 1001
    :goto_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/FooterButton;->clearBubble()V

    .line 1002
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1004
    .local v0, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1005
    if-eqz v1, :cond_3

    .line 1006
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v1, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2

    .line 995
    .end local v0           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 996
    iget-object v3, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    goto :goto_1

    .line 1008
    .restart local v0       #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2

    .line 1010
    .end local v0           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getPluginButtonID()I
    .locals 1

    .prologue
    .line 1018
    iget v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginButtonId:I

    return v0
.end method

.method public getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

    return-object v0
.end method

.method public onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "shareIndex"
    .parameter "shareClickListener"

    .prologue
    .line 803
    if-nez p1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    if-eqz p3, :cond_0

    .line 808
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-interface {p3, v0, v1, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;->onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    goto :goto_0
.end method

.method public onSocialPluginShareClick(Landroid/content/Context;Lcom/htc/opensense/album/plugin/CommandBarButton;)V
    .locals 8
    .parameter "context"
    .parameter "shareClickButton"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 964
    .local v0, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getCount()I

    move-result v5

    .line 968
    .local v5, size:I
    const/4 v3, 0x0

    .line 969
    .local v3, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 971
    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 972
    .restart local v3       #ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-nez v3, :cond_3

    .line 969
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 975
    :cond_3
    invoke-interface {v3}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 976
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 979
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_0

    .line 980
    invoke-interface {v3}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 981
    .local v4, riResolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p1, v6}, Lcom/htc/album/helper/ShareMenuManager;->updateRecord(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method public onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "shareIndex"
    .parameter "shareLink"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 863
    .local v0, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-virtual {v0, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 867
    .local v2, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p1, v4}, Lcom/htc/album/helper/ShareMenuManager;->updateRecord(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 869
    invoke-virtual {v0, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v3

    .line 870
    .local v3, target:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 872
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 878
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 880
    :catch_0
    move-exception v1

    .line 882
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f0a0089

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 905
    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->mShareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;

    .line 906
    iput-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 907
    return-void
.end method

.method public setPluginButtonID(I)V
    .locals 0
    .parameter "buttonID"

    .prologue
    .line 1014
    iput p1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginButtonId:I

    .line 1015
    return-void
.end method

.method public setPluginFooterButton(Lcom/htc/album/modules/ui/widget/FooterButton;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 1022
    if-eqz p1, :cond_0

    .line 1023
    iput-object p1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1024
    :cond_0
    return-void
.end method
