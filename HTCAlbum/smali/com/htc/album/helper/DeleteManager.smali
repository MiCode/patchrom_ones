.class public Lcom/htc/album/helper/DeleteManager;
.super Ljava/lang/Object;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/DeleteManager$DeleteTask;,
        Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;,
        Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;,
        Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;,
        Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    }
.end annotation


# static fields
.field public static final DIALOG_DELETE_ALL:I = 0x120001

.field public static final DIALOG_DELETE_FILES:I = 0x120002

.field public static final DIALOG_DELETE_PROGRESS:I = 0x120000

.field public static final DIALOG_DELETE_SINGLE:I = 0x120003

.field private static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "key_message"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static mWorkaroundCollection:Lcom/htc/album/modules/collection/Collection;


# instance fields
.field deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

.field deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

.field deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

.field private mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

.field private mDialogId:I

.field private mFragment:Landroid/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 2
    .parameter "fragment"
    .parameter "collection"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    .line 51
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 52
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .line 53
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    .line 56
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    .line 57
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    .line 58
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    .line 73
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    .line 74
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 75
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/htc/album/helper/DeleteManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/helper/DeleteManager;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/modules/collection/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method static synthetic access$400()Lcom/htc/album/modules/collection/Collection;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/album/helper/DeleteManager;->mWorkaroundCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/modules/collection/Collection;
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/album/helper/DeleteManager;->mWorkaroundCollection:Lcom/htc/album/modules/collection/Collection;

    return-object p0
.end method

.method private doDelete(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "style"
    .parameter "extras"

    .prologue
    const/4 v5, 0x0

    .line 356
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-nez v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    :cond_2
    const/4 v0, 0x0

    .line 363
    .local v0, deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    packed-switch p1, :pswitch_data_0

    .line 379
    :goto_1
    if-eqz v0, :cond_3

    .line 380
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    :cond_3
    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    goto :goto_0

    .line 368
    :pswitch_0
    new-instance v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .end local v0           #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const-string v3, "key_data"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .line 370
    .restart local v0       #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    goto :goto_1

    .line 374
    :pswitch_1
    new-instance v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .end local v0           #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .restart local v0       #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    goto :goto_1

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x120001
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelDeleteMedias()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->cancel(Z)Z

    .line 394
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .line 395
    return-void
.end method

.method public deleteAllMedias()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v1, 0x120001

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    .line 305
    :cond_0
    return-void
.end method

.method public deleteContinuousShot(Lcom/htc/album/modules/collection/Collection;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 310
    sput-object p1, Lcom/htc/album/helper/DeleteManager;->mWorkaroundCollection:Lcom/htc/album/modules/collection/Collection;

    .line 311
    const v0, 0x120001

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public deleteMedias(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "key_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 351
    const v1, 0x120002

    invoke-direct {p0, v1, v0}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    .line 352
    return-void
.end method

.method public deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 10
    .parameter "position"
    .parameter "image"

    .prologue
    const v9, 0x120003

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 316
    const-string v2, ""

    .line 317
    .local v2, message:Ljava/lang/String;
    move-object v3, p2

    .line 318
    .local v3, selectedImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 332
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "key_message"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v4, "key_data"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 337
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v4, :cond_0

    .line 339
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    instance-of v4, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v4, :cond_0

    .line 341
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v4, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 342
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v4, v9, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 328
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 101
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 84
    :pswitch_1
    new-instance v1, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-direct {v1, p0, p2, v2}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    .line 85
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_DELETE_PROGRESS"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_2
    new-instance v1, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-direct {v1, p0, p2, v2}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    .line 91
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_DELETE_ALL"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_3
    new-instance v1, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-direct {v1, p0, p2, v2}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    .line 97
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_DELETE_SINGLE"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 137
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->dismiss()V

    .line 115
    :cond_0
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->dismiss()V

    .line 124
    :cond_1
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    goto :goto_0

    .line 129
    :pswitch_3
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->dismiss()V

    .line 133
    :cond_2
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    sget-object v0, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] Do release now..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 401
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->dismiss()V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->dismiss()V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->dismiss()V

    .line 414
    :cond_2
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    .line 415
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    .line 416
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    .line 417
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    .line 418
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 419
    return-void
.end method
