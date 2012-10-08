.class public Lcom/htc/album/picker/PickerMultiItemScene;
.super Lcom/htc/album/picker/PickerMultiItemBaseScene;
.source "PickerMultiItemScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerMultiItemScene$1;,
        Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;,
        Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;,
        Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;
    }
.end annotation


# static fields
.field private static final DIALOG_STYLE_LOADING:I = 0x2b11

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MSG_HIDE_LOADING:I = 0x2b12

.field private static final MSG_LOAD_COMPLETE:I = 0x2b10

.field private static final MSG_SHOW_LOADING:I = 0x2b11


# instance fields
.field private dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

.field private mGoStop:Z

.field private mHideMaxCount:Z

.field private mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

.field private mMaxPickCount:I

.field private mPickerResult:Landroid/content/Intent;

.field private mTextConfirm:Ljava/lang/String;

.field private mTextTitle:Ljava/lang/String;

.field private mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 52
    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    .line 53
    iput-boolean v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    .line 55
    iput-boolean v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mHideMaxCount:Z

    .line 56
    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextConfirm:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    .line 676
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private selectAll(Z)V
    .locals 9
    .parameter "selectAll"

    .prologue
    const/4 v8, -0x1

    .line 479
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 480
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v6, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    .line 484
    .local v1, nCount:I
    const/4 v2, 0x0

    .line 485
    .local v2, nCountPicker:I
    const/4 v4, 0x0

    .line 492
    .local v4, nPickStart:I
    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v8, v6, :cond_2

    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-le v1, v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 498
    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    sub-int v4, v1, v6

    .line 502
    :cond_2
    move v3, v4

    .local v3, nIndex:I
    :goto_1
    if-le v1, v3, :cond_3

    .line 504
    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerMultiItemScene;->isItemPicked(I)Z

    move-result v5

    .line 506
    .local v5, selected:Z
    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v8, v6, :cond_4

    if-eqz p1, :cond_4

    .line 508
    iget-object v6, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 509
    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-ne v6, v2, :cond_4

    .line 511
    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerMultiItemScene;->isItemPicked(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 513
    sget-object v6, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][PickerMultiItemTemplateBase][selectAll]: max pick reached: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .end local v5           #selected:Z
    :cond_3
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 528
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    .line 529
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemScene;->invalidateControlBars()V

    goto :goto_0

    .line 520
    .restart local v5       #selected:Z
    :cond_4
    xor-int v6, v5, p1

    if-eqz v6, :cond_5

    .line 522
    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerMultiItemScene;->pickItem(I)V

    .line 502
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 528
    .end local v5           #selected:Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private sendBackResult(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .parameter "activity"
    .parameter "pickerResult"

    .prologue
    .line 430
    if-eqz p2, :cond_0

    .line 432
    :try_start_0
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[handleActivityMessage] Result OK"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v1, -0x1

    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 440
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 446
    :goto_1
    return-void

    .line 437
    :cond_0
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[handleActivityMessage] Result Failed"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 444
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleActivityMessage] Activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PickerResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected getConfirmText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextConfirm:Ljava/lang/String;

    return-object v0
.end method

.method protected getGridViewItemStyle()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    sget-boolean v0, Lcom/htc/album/picker/PickerMultiItemScene;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getSelectionCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mHideMaxCount:Z

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onConfirm()V
    .locals 3

    .prologue
    .line 290
    new-instance v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    .line 291
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v0}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->start()V

    .line 292
    return-void
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v2, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, handled:Z
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/processor/ImageProcessorManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 93
    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0x2b11

    if-ne p1, v1, :cond_1

    .line 95
    new-instance v1, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    invoke-direct {v1, p0, v2, v2}, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    .line 96
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_LOADING"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    .line 99
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, handled:Z
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1, p1}, Lcom/htc/album/processor/ImageProcessorManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 110
    :cond_0
    if-nez v0, :cond_2

    const/16 v1, 0x2b11

    if-ne p1, v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->dismiss()V

    .line 116
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    .line 117
    const/4 v0, 0x1

    .line 119
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemScene;->onHandleActionBarBarLayoutChange()V

    .line 78
    const-string v0, "max_pick"

    const/16 v1, 0x3e7

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    .line 79
    const-string v0, "hide_max_pick_hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mHideMaxCount:Z

    .line 80
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextConfirm:Ljava/lang/String;

    .line 82
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method protected onItemSelected(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 236
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/album/picker/PickerMultiItemScene;->isItemPicked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 239
    .local v0, pickerCount:I
    iget v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-ne v1, v0, :cond_0

    .line 241
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onItemSelected]: max pick reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v0           #pickerCount:I
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    .line 248
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onItemSelected(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 16
    .parameter "message"

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v13, :cond_0

    .line 316
    invoke-super/range {p0 .. p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v13

    .line 423
    :goto_0
    return v13

    .line 319
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v5

    .line 320
    .local v5, fragment:Landroid/app/Fragment;
    if-nez v5, :cond_1

    .line 321
    invoke-super/range {p0 .. p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v13

    goto :goto_0

    .line 323
    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 419
    invoke-super/range {p0 .. p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v13

    goto :goto_0

    .line 327
    :pswitch_0
    if-eqz v5, :cond_2

    instance-of v13, v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v13, :cond_2

    .line 329
    check-cast v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    .end local v5           #fragment:Landroid/app/Fragment;
    const/16 v13, 0x2b11

    const/4 v14, 0x0

    invoke-interface {v5, v13, v14}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    .line 423
    :cond_2
    :goto_1
    const/4 v13, 0x0

    goto :goto_0

    .line 335
    .restart local v5       #fragment:Landroid/app/Fragment;
    :pswitch_1
    if-eqz v5, :cond_2

    instance-of v13, v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v13, :cond_2

    .line 337
    check-cast v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    .end local v5           #fragment:Landroid/app/Fragment;
    const/16 v13, 0x2b11

    invoke-interface {v5, v13}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    goto :goto_1

    .line 343
    .restart local v5       #fragment:Landroid/app/Fragment;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    iget-boolean v13, v13, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    if-eqz v13, :cond_4

    .line 344
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 346
    :cond_4
    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 347
    .local v6, intentCaller:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    .line 349
    .local v12, pickerResult:Landroid/content/Intent;
    const/4 v10, 0x0

    .line 350
    .local v10, pick3DPhotos:Z
    const/4 v11, 0x0

    .line 351
    .local v11, pickInkedPhotos:Z
    if-eqz v12, :cond_5

    .line 353
    const-string v13, "3d_image_index_list"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 354
    .local v7, list3D:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v13, "disable_2d_conversion"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 355
    .local v9, noConversion:Z
    if-nez v9, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_7

    const-string v13, "video/*"

    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v10, 0x1

    .line 358
    :goto_2
    const-string v13, "ink_index_list"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 359
    .local v8, listInked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    const-string v13, "video/*"

    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v11, 0x1

    .line 363
    .end local v7           #list3D:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #listInked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #noConversion:Z
    :cond_5
    :goto_3
    if-eqz v10, :cond_6

    if-eqz v11, :cond_6

    .line 365
    sget-object v13, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v14, "[HTCAlbum][steven]Not defined yet!"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_6
    if-eqz v10, :cond_c

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v13}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->getConversionIntent()Landroid/content/Intent;

    move-result-object v1

    .line 372
    .local v1, conversionIntent:Landroid/content/Intent;
    new-instance v13, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v14, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/picker/PickerMultiItemScene$1;)V

    invoke-direct {v13, v5, v14}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 375
    const/16 v2, 0xcc

    .line 376
    .local v2, dialogId:I
    const-string v13, "force_2d_result"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 377
    .local v4, force2D:Z
    const-string v13, "do_share"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 378
    .local v3, doShare:Z
    if-eqz v3, :cond_a

    .line 380
    if-eqz v4, :cond_9

    const/16 v2, 0xcd

    .line 390
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v13, v2, v1}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 355
    .end local v1           #conversionIntent:Landroid/content/Intent;
    .end local v2           #dialogId:I
    .end local v3           #doShare:Z
    .end local v4           #force2D:Z
    .restart local v7       #list3D:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9       #noConversion:Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 359
    .restart local v8       #listInked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 380
    .end local v7           #list3D:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #listInked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #noConversion:Z
    .restart local v1       #conversionIntent:Landroid/content/Intent;
    .restart local v2       #dialogId:I
    .restart local v3       #doShare:Z
    .restart local v4       #force2D:Z
    :cond_9
    const/16 v2, 0xcc

    goto :goto_4

    .line 386
    :cond_a
    if-eqz v4, :cond_b

    const/16 v2, 0xca

    :goto_5
    goto :goto_4

    :cond_b
    const/16 v2, 0xc9

    goto :goto_5

    .line 392
    .end local v1           #conversionIntent:Landroid/content/Intent;
    .end local v2           #dialogId:I
    .end local v3           #doShare:Z
    .end local v4           #force2D:Z
    :cond_c
    if-eqz v11, :cond_e

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v13}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->getConversionIntent()Landroid/content/Intent;

    move-result-object v1

    .line 396
    .restart local v1       #conversionIntent:Landroid/content/Intent;
    new-instance v13, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v14, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/picker/PickerMultiItemScene$1;)V

    invoke-direct {v13, v5, v14}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 399
    const/16 v2, 0xce

    .line 400
    .restart local v2       #dialogId:I
    const-string v13, "do_share"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 401
    .restart local v3       #doShare:Z
    if-eqz v3, :cond_d

    .line 403
    const/16 v2, 0xce

    .line 409
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v13, v2, v1}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 407
    :cond_d
    const/16 v2, 0xcb

    goto :goto_6

    .line 413
    .end local v1           #conversionIntent:Landroid/content/Intent;
    .end local v2           #dialogId:I
    .end local v3           #doShare:Z
    :cond_e
    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/htc/album/picker/PickerMultiItemScene;->sendBackResult(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 323
    :pswitch_data_0
    .packed-switch 0x2b10
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 220
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 223
    :goto_0
    return v1

    .line 217
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x204014f

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/album/picker/PickerMultiItemScene;->selectAll(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x204014f -> :sswitch_0
        0x20401f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, -0x1

    const v8, 0x20401f4

    const v7, 0x204014f

    const/4 v4, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 179
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 180
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_0

    .line 201
    :goto_0
    return v4

    .line 183
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "max_pick"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 184
    .local v1, nMaxPick:I
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    .line 185
    .local v2, nTotal:I
    if-eq v9, v1, :cond_1

    if-le v1, v2, :cond_2

    .line 187
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 188
    .local v3, pickCount:I
    if-ne v2, v3, :cond_3

    .line 190
    invoke-interface {p1, v4, v8, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 201
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .end local v3           #pickCount:I
    :cond_2
    move v2, v1

    .line 185
    goto :goto_1

    .line 192
    .restart local v3       #pickCount:I
    :cond_3
    if-nez v3, :cond_4

    .line 194
    invoke-interface {p1, v4, v7, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    .line 198
    :cond_4
    invoke-interface {p1, v4, v7, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 199
    invoke-interface {p1, v4, v8, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z

    .line 453
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->stopLoading()V

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 466
    :cond_0
    iput-object v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    .line 468
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1}, Lcom/htc/album/processor/ImageProcessorManager;->release()V

    .line 472
    :cond_1
    iput-object v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 474
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onStop()V

    .line 475
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method
