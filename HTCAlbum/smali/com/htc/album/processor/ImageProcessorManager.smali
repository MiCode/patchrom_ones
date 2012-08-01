.class public Lcom/htc/album/processor/ImageProcessorManager;
.super Ljava/lang/Object;
.source "ImageProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;,
        Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;,
        Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;,
        Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;,
        Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;,
        Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;,
        Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    }
.end annotation


# static fields
.field public static final DLG_STYLE_MULTIPLE_BASE:I = 0xc8

.field public static final DLG_STYLE_MULTIPLE_PICKER_3D2D_SELECTIONS:I = 0xc9

.field public static final DLG_STYLE_MULTIPLE_PICKER_FORCE_2D_ONLY:I = 0xca

.field public static final DLG_STYLE_MULTIPLE_PICKER_INK_SELECTIONS:I = 0xcb

.field public static final DLG_STYLE_MULTIPLE_SHARE_3D2D_SELECTIONS:I = 0xcc

.field public static final DLG_STYLE_MULTIPLE_SHARE_FORCE_2D_ONLY:I = 0xcd

.field public static final DLG_STYLE_MULTIPLE_SHARE_INK_SELECTIONS:I = 0xce

.field static final DLG_STYLE_PROCESSING:I = 0x12e

.field public static final DLG_STYLE_SINGLE_PICKER_3D2D_SELECTIONS:I = 0x65

.field public static final DLG_STYLE_SINGLE_PICKER_FORCE_2D_ONLY:I = 0x66

.field public static final DLG_STYLE_SINGLE_PICKER_INK_SELECTIONS:I = 0x67

.field public static final DLG_STYLE_SINGLE_SHARE_3D2D_SELECTIONS:I = 0x68

.field public static final DLG_STYLE_SINGLE_SHARE_FORCE_2D_ONLY:I = 0x69

.field public static final DLG_STYLE_SINGLE_SHARE_INK_SELECTIONS:I = 0x6a

.field static final DLG_STYLE_STORAGE_FULL:I = 0x12d

.field private static final DLG_STYLE_UNKNOWN:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

.field private dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

.field private mFragment:Landroid/app/Fragment;

.field private mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

.field private mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

.field private mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

.field private mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

.field private mRunningDlg:Landroid/app/DialogFragment;

.field private mRunningDlgId:I

.field private mSourceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V
    .locals 2
    .parameter "fragment"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    .line 76
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    .line 77
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 78
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    .line 80
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    .line 82
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 84
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    .line 85
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    .line 86
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    .line 101
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    .line 102
    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 103
    new-instance v0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Lcom/htc/album/processor/ImageProcessorManager$1;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 104
    new-instance v0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Lcom/htc/album/processor/ImageProcessorManager$1;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    .line 105
    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/processor/ImageProcessorManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/album/processor/ImageProcessorManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/processor/ImageProcessorManager;)Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    return-object v0
.end method

.method private getDlgStringIds(I)[I
    .locals 7
    .parameter "dlgId"

    .prologue
    .line 655
    const/4 v4, 0x0

    .line 656
    .local v4, title:I
    const/4 v1, 0x0

    .line 657
    .local v1, msg:I
    const/4 v3, 0x0

    .line 658
    .local v3, positive:I
    const/4 v2, 0x0

    .line 660
    .local v2, negative:I
    sparse-switch p1, :sswitch_data_0

    .line 740
    const/4 v0, 0x0

    .line 749
    :goto_0
    return-object v0

    .line 664
    :sswitch_0
    const v4, 0x7f0a00e1

    .line 665
    const v1, 0x7f0a00e2

    .line 666
    const v3, 0x7f0a00e4

    .line 667
    const v2, 0x7f0a00e5

    .line 744
    :goto_1
    const/4 v5, 0x4

    new-array v0, v5, [I

    .line 745
    .local v0, dlgIds:[I
    const/4 v5, 0x0

    aput v4, v0, v5

    .line 746
    const/4 v5, 0x1

    aput v1, v0, v5

    .line 747
    const/4 v5, 0x2

    aput v3, v0, v5

    .line 748
    const/4 v5, 0x3

    aput v2, v0, v5

    goto :goto_0

    .line 672
    .end local v0           #dlgIds:[I
    :sswitch_1
    const v4, 0x7f0a00d0

    .line 673
    const v1, 0x7f0a00d1

    .line 674
    const v3, 0x7f0a00d4

    .line 675
    const v2, 0x7f0a00d3

    .line 676
    goto :goto_1

    .line 680
    :sswitch_2
    const v4, 0x7f0a00e1

    .line 681
    const v1, 0x7f0a00e3

    .line 682
    const v3, 0x7f0a00e4

    .line 683
    const v2, 0x7f0a00e5

    .line 684
    goto :goto_1

    .line 688
    :sswitch_3
    const v4, 0x7f0a00d0

    .line 689
    const v1, 0x7f0a00d2

    .line 690
    const v3, 0x7f0a00d4

    .line 691
    const v2, 0x7f0a00d3

    .line 692
    goto :goto_1

    .line 697
    :sswitch_4
    const v4, 0x7f0a00d8

    .line 698
    const/16 v5, 0x94

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v6, :cond_0

    .line 701
    const v1, 0x7f0a00da

    .line 707
    :goto_2
    const v3, 0x2040151

    .line 708
    const v2, 0x2040152

    .line 709
    goto :goto_1

    .line 705
    :cond_0
    const v1, 0x7f0a00d9

    goto :goto_2

    .line 714
    :sswitch_5
    const v4, 0x7f0a00d8

    .line 715
    const v1, 0x7f0a00db

    .line 716
    const v3, 0x2040151

    .line 717
    const v2, 0x2040152

    .line 718
    goto :goto_1

    .line 723
    :sswitch_6
    const v4, 0x7f0a00e6

    .line 724
    const v1, 0x7f0a00e7

    .line 725
    const v3, 0x7f0a00ec

    .line 726
    const v2, 0x7f0a00ed

    .line 727
    goto :goto_1

    .line 732
    :sswitch_7
    const v4, 0x7f0a00e6

    .line 733
    const v1, 0x7f0a00e8

    .line 734
    const v3, 0x7f0a00ec

    .line 735
    const v2, 0x7f0a00ed

    .line 736
    goto :goto_1

    .line 660
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_4
        0x67 -> :sswitch_6
        0x68 -> :sswitch_1
        0x69 -> :sswitch_4
        0x6a -> :sswitch_6
        0xc9 -> :sswitch_2
        0xca -> :sswitch_5
        0xcb -> :sswitch_7
        0xcc -> :sswitch_3
        0xcd -> :sswitch_5
        0xce -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method protected OnCancelPirorProcess(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 796
    .local v0, listener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    if-eqz v0, :cond_0

    .line 797
    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnCancelPirorProcess()V

    .line 798
    :cond_0
    if-eqz p1, :cond_1

    .line 799
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 800
    :cond_1
    return-void
.end method

.method protected OnCancelProcessing(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 805
    .local v0, listener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    if-eqz v0, :cond_0

    .line 806
    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnCancelProcessing()V

    .line 807
    :cond_0
    if-eqz p1, :cond_1

    .line 808
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 809
    :cond_1
    return-void
.end method

.method protected OnProcessEnd(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 814
    .local v0, listener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    if-eqz v0, :cond_0

    .line 815
    invoke-interface {v0, p0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V

    .line 816
    :cond_0
    if-eqz p1, :cond_1

    .line 817
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 818
    :cond_1
    return-void
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/processor/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getFileList()Ljava/util/ArrayList;

    move-result-object v0

    .line 846
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResult()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 830
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getResultCode()I

    move-result v0

    .line 838
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSource()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected handleProcessedResult()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 868
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 869
    .local v1, processor:Lcom/htc/album/processor/FlattenBaseProcessor;
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    .line 870
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 903
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 873
    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->getResultCode()I

    move-result v2

    .line 874
    .local v2, resultCode:I
    sget-object v3, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleProcessedResult] Result Code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 896
    :pswitch_1
    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    instance-of v3, v3, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v3, :cond_0

    .line 898
    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/16 v4, 0x12d

    invoke-interface {v3, v4, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 884
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelPirorProcess(Landroid/app/Dialog;)V

    goto :goto_0

    .line 891
    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelProcessing(Landroid/app/Dialog;)V

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .parameter "dialogId"
    .parameter "extra"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 484
    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    .line 485
    .local v3, fragment:Landroid/app/Fragment;
    if-nez v3, :cond_0

    .line 486
    const/4 v2, 0x0

    .line 650
    :goto_0
    return-object v2

    .line 488
    :cond_0
    iget-object v9, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 490
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 491
    .local v2, dialog:Landroid/app/Dialog;
    const/16 v9, 0xc8

    if-ge p1, v9, :cond_1

    move v6, v7

    .line 492
    .local v6, runSingle:Z
    :goto_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 499
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->getDlgStringIds(I)[I

    move-result-object v4

    .line 500
    .local v4, ids:[I
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    aget v8, v4, v8

    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    aget v9, v4, v7

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v4, v10

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$6;

    invoke-direct {v9, p0}, Lcom/htc/album/processor/ImageProcessorManager$6;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v4, v11

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$5;

    invoke-direct {v9, p0, v6}, Lcom/htc/album/processor/ImageProcessorManager$5;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/album/processor/ImageProcessorManager$4;

    invoke-direct {v8, p0}, Lcom/htc/album/processor/ImageProcessorManager$4;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 541
    .local v1, altDlg:Lcom/htc/widget/HtcAlertDialog;
    move-object v2, v1

    .line 542
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    .end local v1           #altDlg:Lcom/htc/widget/HtcAlertDialog;
    .end local v4           #ids:[I
    .end local v6           #runSingle:Z
    :cond_1
    move v6, v8

    .line 491
    goto :goto_1

    .line 550
    .restart local v6       #runSingle:Z
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->getDlgStringIds(I)[I

    move-result-object v4

    .line 551
    .restart local v4       #ids:[I
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    aget v8, v4, v8

    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    aget v9, v4, v7

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v4, v10

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$9;

    invoke-direct {v9, p0, v6}, Lcom/htc/album/processor/ImageProcessorManager$9;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v4, v11

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$8;

    invoke-direct {v9, p0}, Lcom/htc/album/processor/ImageProcessorManager$8;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/album/processor/ImageProcessorManager$7;

    invoke-direct {v8, p0}, Lcom/htc/album/processor/ImageProcessorManager$7;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 592
    .restart local v1       #altDlg:Lcom/htc/widget/HtcAlertDialog;
    move-object v2, v1

    .line 593
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto/16 :goto_0

    .line 598
    .end local v1           #altDlg:Lcom/htc/widget/HtcAlertDialog;
    .end local v4           #ids:[I
    :sswitch_2
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a0037

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v9, 0x7f0a0038

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x2040151

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$10;

    invoke-direct {v9, p0}, Lcom/htc/album/processor/ImageProcessorManager$10;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 613
    .restart local v1       #altDlg:Lcom/htc/widget/HtcAlertDialog;
    move-object v2, v1

    .line 614
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto/16 :goto_0

    .line 619
    .end local v1           #altDlg:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_3
    new-instance v5, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v5, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 620
    .local v5, proDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00dc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 621
    invoke-virtual {v5, v7}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 622
    new-instance v7, Lcom/htc/album/processor/ImageProcessorManager$11;

    invoke-direct {v7, p0}, Lcom/htc/album/processor/ImageProcessorManager$11;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v5, v7}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 633
    new-instance v7, Lcom/htc/album/processor/ImageProcessorManager$12;

    invoke-direct {v7, p0}, Lcom/htc/album/processor/ImageProcessorManager$12;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v5, v7}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 644
    move-object v2, v5

    .line 645
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto/16 :goto_0

    .line 492
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x68 -> :sswitch_0
        0x69 -> :sswitch_1
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcc -> :sswitch_0
        0xcd -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 9
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 109
    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    .line 110
    .local v2, fragment:Landroid/app/Fragment;
    if-nez v2, :cond_0

    move v4, v5

    .line 261
    :goto_0
    return v4

    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 114
    .local v1, dialog:Landroid/app/Dialog;
    const/16 v6, 0xc8

    if-ge p1, v6, :cond_1

    move v3, v4

    .line 116
    .local v3, runSingle:Z
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "ID"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string v6, "IDS"

    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->getDlgStringIds(I)[I

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 119
    const-string v6, "RUNSINGLE"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    sparse-switch p1, :sswitch_data_0

    move v4, v5

    .line 261
    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #runSingle:Z
    :cond_1
    move v3, v5

    .line 114
    goto :goto_1

    .line 128
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v3       #runSingle:Z
    :sswitch_0
    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;

    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager$1;

    invoke-direct {v6, p0, v3}, Lcom/htc/album/processor/ImageProcessorManager$1;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-direct {v5, v0, v6}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;-><init>(Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    .line 160
    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DIALOG_3D_2D"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 161
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    .line 169
    :sswitch_1
    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;

    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager$2;

    invoke-direct {v6, p0, v3}, Lcom/htc/album/processor/ImageProcessorManager$2;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-direct {v5, v0, v6}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;-><init>(Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    .line 201
    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DLG_FORCE_2D"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    .line 210
    :sswitch_2
    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;

    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager$3;

    invoke-direct {v6, p0, v3}, Lcom/htc/album/processor/ImageProcessorManager$3;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-direct {v5, v0, v6}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;-><init>(Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    .line 242
    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DLG_YES_NO"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 243
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    .line 248
    :sswitch_3
    const-string v5, "STORAGE_FULL"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    invoke-direct {v5, p0, v0, v8}, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    .line 250
    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DLG_STYLE_STORAGE_FULL"

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :sswitch_4
    const-string v5, "PROCESSING"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    invoke-direct {v5, p0, v0, v8}, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    .line 257
    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DLG_PROCESSING"

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_0
        0xcd -> :sswitch_1
        0xce -> :sswitch_2
        0x12d -> :sswitch_3
        0x12e -> :sswitch_4
    .end sparse-switch
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 266
    sparse-switch p1, :sswitch_data_0

    .line 308
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 281
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 285
    :cond_0
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    .line 286
    const/16 v1, 0x64

    iput v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    .line 291
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    invoke-virtual {v1}, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->dismiss()V

    .line 295
    :cond_1
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    goto :goto_0

    .line 300
    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    invoke-virtual {v1}, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->dismiss()V

    .line 304
    :cond_2
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    goto :goto_0

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0xce -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_2
    .end sparse-switch
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 851
    sget-object v1, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[release] +++"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Lcom/htc/album/processor/ImageProcessorManager;->stopProcessing()V

    .line 853
    const/4 v0, 0x0

    .line 854
    .local v0, dismissDlg:Z
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    iget v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 858
    :cond_0
    iput-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    .line 859
    iput-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 860
    iput-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 861
    iput-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    .line 862
    const/16 v1, 0x64

    iput v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    .line 863
    sget-object v1, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[release] ---"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method protected runMultipleProcessor()V
    .locals 4

    .prologue
    .line 785
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->cancel()V

    .line 788
    :cond_0
    new-instance v0, Lcom/htc/album/processor/MultipleFlattenProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/processor/MultipleFlattenProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 789
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->setOnProcessListener(Lcom/htc/album/processor/BaseProcessor$OnProcessListener;)V

    .line 790
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->start()V

    .line 791
    return-void
.end method

.method protected runSingleProcessor()V
    .locals 4

    .prologue
    .line 775
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->cancel()V

    .line 778
    :cond_0
    new-instance v0, Lcom/htc/album/processor/SingleFlattenProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/processor/SingleFlattenProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 779
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->setOnProcessListener(Lcom/htc/album/processor/BaseProcessor$OnProcessListener;)V

    .line 780
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->start()V

    .line 781
    return-void
.end method

.method public startProcessing(ILandroid/content/Intent;)V
    .locals 4
    .parameter "style"
    .parameter "input"

    .prologue
    .line 754
    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, hasDlg:Z
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 760
    :cond_0
    sget-object v1, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessorManager][startProcessing]mFragment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hasDlg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public stopProcessing()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->cancel()V

    .line 768
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->release()V

    .line 770
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 771
    return-void
.end method
