.class public Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.super Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.source "SceneLocalPhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_LOCAL_THUMBNAIL_VIEW:I = 0x1

.field private static final HEADER_BAR_LOCAL_DELETE_VIEW:I = 0x12

.field private static final HEADER_BAR_LOCAL_THUMBNAIL_VIEW:I = 0x11

.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalPhotoThumbnail"

.field private static final SENSE_MODE_DELETE:I = 0x2

.field private static final SENSE_MODE_NORMAL:I = 0x1

.field private static final THUMB_IMAGE_STATUS_FIRST:I = 0x0

.field private static final THUMB_IMAGE_STATUS_LAST:I = 0x1

.field private static final THUMB_IMAGE_STATUS_NONE:I = -0x1

.field private static final TIMER_PROGRESS_LOADING:I = 0x258

.field private static mMaxPickCount:I


# instance fields
.field private mAnimationState:I

.field private mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

.field private mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mContinuousShotItem:Landroid/view/MenuItem;

.field private mCurrentSenseMode:I

.field private mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

.field private mDelPickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mDestroyController:Z

.field private mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

.field private mIsDLNAPlaying:Z

.field private mIsDeleteAll:Z

.field private mIsDeleteAnimation:Z

.field private mIsDeleting:Z

.field private mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mOldDmr:Ljava/lang/String;

.field public mOnShareItemListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;

.field protected mShareIntent:Landroid/content/Intent;

.field private mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mThumbImageStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, -0x1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V
    .locals 4
    .parameter "tvListener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    .line 105
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    .line 107
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 108
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z

    .line 109
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    .line 111
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 115
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    .line 116
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    .line 117
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 120
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 121
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 122
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 124
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 126
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    .line 129
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAnimationState:I

    .line 131
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOnShareItemListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;

    .line 192
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    .line 741
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    .line 138
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 139
    return-void
.end method

.method private ToggleSelectAll(Z)Z
    .locals 8
    .parameter "selectAll"

    .prologue
    const/4 v5, 0x1

    .line 1807
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1808
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v4, :cond_1

    .line 1809
    :cond_0
    const/4 v4, 0x0

    .line 1849
    :goto_0
    return v4

    .line 1811
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 1813
    .local v3, totalItems:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1815
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1818
    const/4 v4, -0x1

    :try_start_0
    sget v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-eq v4, v7, :cond_4

    if-eqz p1, :cond_4

    .line 1820
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-lt v4, v7, :cond_4

    .line 1840
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1843
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 1845
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1847
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    :cond_3
    move v4, v5

    .line 1849
    goto :goto_0

    .line 1824
    :cond_4
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1826
    .local v2, idx:Ljava/lang/Integer;
    if-eqz p1, :cond_6

    .line 1829
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1830
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1835
    :cond_6
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_5

    .line 1836
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1840
    .end local v2           #idx:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->doDeleteContinuousShot()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z

    return p1
.end method

.method private changeSenseMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 143
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v1, p1, :cond_1

    .line 145
    const-string v1, "SceneLocalPhotoThumbnail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change the same sense mode? from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v1, "SceneLocalPhotoThumbnail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change sense mode from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    .line 151
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 155
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v1, v5, :cond_2

    .line 159
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 165
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 189
    :goto_1
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 170
    :cond_3
    const/16 v0, 0x11

    .line 171
    .local v0, headerId:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v1, v5, :cond_4

    .line 173
    const/16 v0, 0x12

    .line 180
    :goto_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 182
    :try_start_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 186
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    goto :goto_1

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    goto :goto_2

    .line 183
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private clearDelListWhenAdapterChanged()V
    .locals 2

    .prologue
    .line 2374
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2376
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2378
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2379
    monitor-exit v1

    .line 2381
    :cond_0
    return-void

    .line 2379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doDeleteContinuousShot()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2188
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 2189
    .local v6, activity:Landroid/app/Activity;
    if-nez v6, :cond_0

    .line 2190
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v2, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    :goto_0
    return-void

    .line 2193
    :cond_0
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2194
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 2195
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Context is null"

    invoke-static {v2, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2199
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v8, v2, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 2200
    .local v8, position:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2202
    .local v9, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 2203
    .local v3, bucketId:Ljava/lang/String;
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 2205
    .local v4, displayName:Ljava/lang/String;
    const-string v2, "SceneLocalPhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[onDeleteContinuousShot]getBucketName: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    const-string v2, "SceneLocalPhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[onDeleteContinuousShot]getDisplayName: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    new-instance v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    const-string v2, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v7

    .line 2216
    .local v7, fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v2, :cond_2

    .line 2218
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 2219
    iput-object v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 2222
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    new-instance v2, Lcom/htc/album/helper/DeleteManager;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    invoke-direct {v5, p0, v11}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    invoke-direct {v2, v7, v0, v5}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 2224
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/htc/album/helper/DeleteManager;->deleteContinuousShot(Lcom/htc/album/modules/collection/Collection;)V

    goto/16 :goto_0
.end method

.method private getFirstOutputIndex()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 501
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 502
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_2

    :cond_0
    move v3, v6

    .line 531
    :cond_1
    :goto_0
    return v3

    .line 505
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->isDRMOnlyCollection()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v6

    .line 506
    goto :goto_0

    .line 508
    :cond_3
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 509
    .local v3, startIndex:I
    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 510
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 513
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    .line 514
    .local v4, totalCount:I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    move v3, v6

    .line 515
    goto :goto_0

    .line 508
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v3           #startIndex:I
    .end local v4           #totalCount:I
    :cond_4
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    goto :goto_1

    .line 519
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v3       #startIndex:I
    .restart local v4       #totalCount:I
    :cond_5
    add-int/lit8 v1, v3, 0x1

    .line 522
    .local v1, i:I
    :cond_6
    rem-int/2addr v1, v4

    .line 523
    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 524
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-nez v5, :cond_7

    move v3, v1

    .line 525
    goto :goto_0

    .line 527
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 529
    if-ne v1, v3, :cond_6

    move v3, v6

    .line 531
    goto :goto_0
.end method

.method private getFirstValidPos()I
    .locals 6

    .prologue
    .line 683
    const/4 v3, -0x1

    .line 684
    .local v3, pos:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v5, :cond_0

    move v4, v3

    .line 703
    .end local v3           #pos:I
    .local v4, pos:I
    :goto_0
    return v4

    .line 687
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 688
    .local v0, count:I
    if-gtz v0, :cond_1

    move v4, v3

    .line 689
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0

    .line 691
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 693
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 694
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_3

    .line 691
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 696
    :cond_3
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 699
    move v3, v1

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    move v4, v3

    .line 703
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0
.end method

.method private isDRMOnlyCollection()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 482
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 483
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v4

    .line 486
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v2

    .line 487
    .local v2, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 491
    .local v3, totalCount:I
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v1

    .line 493
    .local v1, drmCount:I
    if-ne v3, v1, :cond_0

    .line 494
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private onActivityResult_CROP_NONE(ILandroid/content/Intent;)V
    .locals 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 450
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 452
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]mSceneControl is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 456
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 458
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]activity is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    if-nez p2, :cond_3

    .line 464
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]data is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 468
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_4

    .line 470
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]extras is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_4
    const-string v3, "filePath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, dstFilePath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 476
    const-string v3, "image/jpeg"

    invoke-static {v0, v1, v3}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 4
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 201
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 203
    .local v0, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    const-string v2, "SharedAdapter.KEY_PACKAGE"

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    instance-of v1, v0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    if-eqz v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    const-string v3, "SharedAdapter.KEY_SHARE_TO"

    move-object v1, v0

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/htc/album/helper/MenuManager;->callSharePicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 9
    .parameter "newDMR"

    .prologue
    .line 571
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 572
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v6, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 576
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    .line 578
    .local v7, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFirstOutputIndex()I

    move-result v4

    .line 579
    .local v4, index:I
    const/4 v1, -0x1

    if-eq v4, v1, :cond_0

    .line 582
    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 583
    .local v8, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v8, :cond_0

    .line 586
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 588
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 589
    .local v5, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 591
    const-string v1, "folder_type"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v1, "key_folder_name"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v1, "key_bucket_id"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_2
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 599
    .end local v5           #bundle:Landroid/os/Bundle;
    :cond_3
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, p1, v1, v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchLocalPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V

    goto :goto_0
.end method

.method private onDataSetChange(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 2407
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsBound:Z

    if-ne v6, v5, :cond_1

    .line 2408
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->isNotifyDataChangedFromPartialListBuilt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2409
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 2412
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2413
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 2417
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->updateThumbImageStatus()V

    .line 2418
    const/4 v4, 0x0

    .line 2419
    .local v4, selectIdx:I
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    if-ne v5, v6, :cond_2

    .line 2420
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 2423
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v6, "SceneLocalFolder"

    invoke-interface {v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2424
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2425
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2427
    .local v2, intent:Landroid/content/Intent;
    const/16 v3, 0xff

    .line 2428
    .local v3, mediaType:I
    if-nez v2, :cond_7

    const/4 v0, 0x0

    .line 2430
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    invoke-static {v1, v0, v3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 2433
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mediaType:I
    :cond_3
    if-eq p1, v4, :cond_4

    const/4 v5, -0x1

    if-ne v5, p1, :cond_6

    .line 2434
    :cond_4
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v5, :cond_8

    .line 2436
    :cond_5
    const-string v5, "SceneLocalPhotoThumbnail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t decode title image: mDecodeFirstImage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSceneControl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAdapter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    :cond_6
    :goto_1
    return-void

    .line 2428
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #mediaType:I
    :cond_7
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 2441
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mediaType:I
    :cond_8
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->sendRequest(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)V

    goto :goto_1
.end method

.method private onDeleteContinuousShot(Landroid/view/MenuItem;)V
    .locals 11
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 2144
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2145
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 2146
    const-string v7, "SceneLocalPhotoThumbnail"

    const-string v8, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    :cond_0
    :goto_0
    return-void

    .line 2150
    :cond_1
    const-string v3, ""

    .line 2151
    .local v3, message:Ljava/lang/String;
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotItem:Landroid/view/MenuItem;

    .line 2152
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotItem:Landroid/view/MenuItem;

    invoke-interface {v7}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v4, v7, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 2153
    .local v4, position:I
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2155
    .local v5, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v5, v10, v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    .line 2156
    .local v2, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    .line 2157
    .local v6, totalCount:I
    invoke-interface {v5, v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V

    .line 2159
    const v7, 0x7f0a0159

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2164
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x2040214

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x2040174

    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$3;

    invoke-direct {v9, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x20401ee

    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$2;

    invoke-direct {v9, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 2182
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v1, :cond_0

    .line 2183
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private onEditPhoto(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v4, 0x0

    .line 2229
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 2230
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[onEditPhoto] SceneControl is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    :cond_0
    :goto_0
    return-void

    .line 2233
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2234
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showEditPhotoMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    goto :goto_0
.end method

.method private onSlideShow(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v3, -0x1

    .line 2241
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2242
    .local v0, activity:Landroid/app/Activity;
    move v1, p1

    .line 2244
    .local v1, itemPosition:I
    if-ne v3, v1, :cond_0

    .line 2246
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 2248
    if-ne v1, v3, :cond_0

    .line 2249
    const/4 v1, 0x0

    .line 2253
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 2254
    return-void
.end method

.method private onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 4
    .parameter "nIndex"
    .parameter "activity"
    .parameter "targetImg"

    .prologue
    .line 2258
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2260
    .local v1, c:Lcom/htc/album/modules/collection/Collection;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2261
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "itemIndex"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2262
    const-string v2, "index_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2263
    const-string v2, "folder_type"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const-string v2, "key_folder_name"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const-string v2, "key_bucket_id"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    const-string v2, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    invoke-static {p2, p3, v2, v0}, Lcom/htc/album/helper/MenuManager;->playVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2270
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->playImage(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 2272
    :cond_1
    return-void
.end method

.method private playImage(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V
    .locals 6
    .parameter "nIndex"
    .parameter "activity"
    .parameter "targetImg"
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2276
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2303
    :cond_0
    :goto_0
    return-void

    .line 2279
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getRunningDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2281
    .local v0, dmr:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isValidateDMR(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2283
    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v2

    long-to-int v3, v2

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-static {p2, v0, v3, v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchLocalPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V

    goto :goto_0

    .line 2287
    :cond_2
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2288
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 2290
    const-string v2, "directmode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 2292
    const/4 v2, 0x3

    const/16 v3, 0x1398

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v2, v3, v5, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto :goto_0

    .line 2301
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneLocalPhotoFullscreen"

    invoke-interface {v2, p4, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1160
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare] + "

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1163
    :cond_0
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare]can\'t get context"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_1
    :goto_0
    return-void

    .line 1167
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1168
    .local v1, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1169
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v8

    .line 1171
    .local v8, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v8, :cond_3

    .line 1173
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare]can\'t get imageListUber"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1177
    :cond_3
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v10

    .line 1178
    .local v10, totalCount:I
    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v7

    .line 1180
    .local v7, drmCount:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v3

    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v4

    sub-int v2, v7, v10

    if-nez v2, :cond_4

    const/4 v5, 0x1

    :goto_1
    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;IIZ)Z

    move-result v9

    .line 1186
    .local v9, result:Z
    if-nez v9, :cond_1

    .line 1188
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare]can\'t show share bubble"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    .end local v9           #result:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private turnOnOffTVBtn(Z)V
    .locals 5
    .parameter "bValue"

    .prologue
    .line 656
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 660
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 662
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 665
    const-string v2, "SceneLocalPhotoThumbnail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SceneLocalPhotoThumbnail][turnOnOffTVBtn]: bValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    if-eqz p1, :cond_2

    .line 671
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 672
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->turnOnTV(Landroid/content/Context;)Z

    goto :goto_0

    .line 677
    :cond_2
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOffTV(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateThumbImageStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 749
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    if-nez v1, :cond_2

    .line 750
    :cond_0
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    .line 764
    :cond_1
    :goto_0
    return-void

    .line 754
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 756
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->showLatest()Z

    move-result v1

    if-eq v4, v1, :cond_3

    const-string v1, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 758
    :cond_3
    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    goto :goto_0

    .line 761
    :cond_4
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    goto :goto_0
.end method


# virtual methods
.method protected createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 4
    .parameter "collection"

    .prologue
    .line 716
    new-instance v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    .line 721
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    return-object v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 1904
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 2661
    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2599
    const-string v4, ""

    .line 2601
    .local v4, szTitle:Ljava/lang/String;
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    .line 2602
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2603
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 2604
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0048

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2606
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2613
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    if-eqz v5, :cond_3

    .line 2615
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2616
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_0

    .line 2618
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle][delete]1"

    invoke-static {v5, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 2657
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    :goto_0
    return-object v5

    .line 2621
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 2622
    .local v2, collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v2, :cond_1

    .line 2624
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle][delete]2"

    invoke-static {v5, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 2625
    goto :goto_0

    .line 2627
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v2           #collection:Lcom/htc/album/modules/collection/Collection;
    :cond_2
    :goto_1
    move-object v5, v4

    .line 2657
    goto :goto_0

    .line 2631
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_3
    const/4 v3, 0x0

    .line 2632
    .local v3, numPick:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2634
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2635
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2636
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2635
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2642
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #numPick:I
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2643
    .restart local v1       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_5

    .line 2645
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle]: 2"

    invoke-static {v5, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 2646
    goto :goto_0

    .line 2649
    :cond_5
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 2650
    .restart local v2       #collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v2, :cond_6

    move-object v5, v6

    .line 2651
    goto :goto_0

    .line 2653
    :cond_6
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 2654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public notifyDataChangedAt(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 2394
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->clearDelListWhenAdapterChanged()V

    .line 2395
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->notifyDataChangedAt(I)V

    .line 2396
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 2397
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 2386
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->clearDelListWhenAdapterChanged()V

    .line 2387
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->notifyDataSetChanged()V

    .line 2388
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 2389
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 1255
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onBackPressed()Z

    .line 1257
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    .line 325
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult]: "

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eq p2, v8, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 331
    .local v0, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 397
    :sswitch_0
    invoke-static {v0, v10}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 398
    if-nez p3, :cond_5

    .line 400
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][MSG_PICK_DMR]data is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :sswitch_1
    invoke-static {v0, p2, p3}, Lcom/htc/album/helper/MenuManager;->setFootprint(Landroid/app/Activity;ILandroid/content/Intent;)V

    goto :goto_0

    .line 340
    :sswitch_2
    if-nez p3, :cond_2

    .line 342
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][SHARE_SINGLE_ITEM_SHARE]data is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :sswitch_3
    if-nez p3, :cond_3

    .line 356
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][SHARE_SINGLE_ITEM_SET_AS]data is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drm_content"

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v0, v6, v7, v8, v9}, Lcom/htc/album/helper/MenuManager;->doSetAsSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 365
    :sswitch_4
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-static {v0, v6, p3}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    :sswitch_5
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-static {v0, v6, p3}, Lcom/htc/album/helper/MenuManager;->doSetAsMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 375
    :sswitch_6
    if-nez p3, :cond_4

    .line 377
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][SHARE_PRINT]data is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/htc/album/helper/MenuManager;->preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :sswitch_7
    invoke-direct {p0, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onActivityResult_CROP_NONE(ILandroid/content/Intent;)V

    goto :goto_0

    .line 391
    :sswitch_8
    const-string v7, "itemIndex"

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstIndexPostion()I

    move-result v6

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 392
    .local v3, index:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    goto/16 :goto_0

    .line 404
    .end local v3           #index:I
    :cond_5
    const-string v6, "DMR"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, selectDMR:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    if-nez v0, :cond_6

    .line 409
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][MSG_PICK_DMR]activity is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "directmode"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 415
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "directmode"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    :cond_7
    if-eqz v5, :cond_8

    .line 420
    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDMRChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :cond_8
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][MSG_PICK_DMR]selectDMR is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 428
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 429
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_9

    .line 431
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    .line 432
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;->bindService(Landroid/content/Context;Landroid/os/Handler;)Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    .line 436
    .end local v1           #handler:Landroid/os/Handler;
    :cond_9
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFirstValidPos()I

    move-result v4

    .line 437
    .local v4, pos:I
    if-eq v4, v8, :cond_0

    .line 439
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 440
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-direct {p0, v4, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_0
        0x7f00 -> :sswitch_7
        0x7f03 -> :sswitch_1
        0x7f08 -> :sswitch_7
        0x110000 -> :sswitch_2
        0x220000 -> :sswitch_4
        0x330000 -> :sswitch_3
        0x330010 -> :sswitch_8
        0x440000 -> :sswitch_5
        0x550000 -> :sswitch_6
    .end sparse-switch
.end method

.method public onAnimationEnd(I)V
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 2357
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onAnimationEnd(I)V

    .line 2358
    packed-switch p1, :pswitch_data_0

    .line 2366
    :goto_0
    return-void

    .line 2362
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 2358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1202
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 1234
    :goto_0
    return v5

    .line 1208
    :cond_0
    const/4 v0, 0x0

    .line 1209
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1210
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1212
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1217
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1223
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v3, 0x0

    const-string v4, "SceneLocalFolder"

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1227
    :cond_3
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v2, v5, :cond_4

    .line 1228
    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    goto :goto_0

    .line 1231
    :cond_4
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 769
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 773
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->updateThumbImageStatus()V

    .line 774
    const/4 v3, 0x0

    .line 775
    .local v3, selectIdx:I
    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 776
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 778
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    .line 780
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onBindAdapter()V

    .line 782
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 783
    .local v0, activty:Landroid/app/Activity;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    .line 784
    .local v2, fragment:Landroid/app/Fragment;
    new-instance v5, Lcom/htc/album/helper/DeleteManager;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v4

    new-instance v6, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    invoke-direct {v6, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    invoke-direct {v5, v2, v4, v6}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 790
    :try_start_0
    new-instance v5, Lcom/htc/album/helper/ImageProcessManager;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    new-instance v6, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    invoke-direct {v5, v2, v4, v6}, Lcom/htc/album/helper/ImageProcessManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/TabPluginDevice/ObserverAdapter;Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :goto_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    .line 799
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    if-eqz v4, :cond_1

    .line 800
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->sendRequest(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)V

    .line 802
    :cond_1
    const/16 v4, 0x2724

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onRemoveMessage(I)V

    .line 803
    const/16 v4, 0x2728

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v8, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 804
    return-void

    .line 792
    :catch_0
    move-exception v1

    .line 794
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SceneLocalPhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][onBindAdapter]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCamera()V
    .locals 7

    .prologue
    .line 1855
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1857
    :cond_0
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][OnShareItemSelectedListener][onClick]can\'t get activity"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :cond_1
    :goto_0
    return-void

    .line 1860
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1861
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    .line 1863
    .local v3, folderType:Ljava/lang/String;
    const-string v5, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1865
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 1877
    :goto_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v5, :cond_1

    .line 1879
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v4

    .line 1880
    .local v4, pos:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 1882
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    .line 1884
    :cond_3
    const v5, 0x7fffffff

    invoke-virtual {p0, v4, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->markSelection(II)V

    goto :goto_0

    .line 1869
    .end local v4           #pos:I
    :cond_4
    const/4 v2, 0x0

    .line 1871
    .local v2, bVideo:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1872
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v5

    if-gtz v5, :cond_5

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v2, 0x1

    .line 1874
    :goto_2
    invoke-static {v0, v2}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 1872
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1989
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 2138
    :cond_0
    :goto_0
    return v5

    .line 1993
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 1994
    .local v2, position:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1995
    .local v1, activity:Landroid/app/Activity;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1997
    .local v3, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 2001
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2133
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "[onContextItemSelected] Unsupported context menu operation."

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onContextItemSelected(Landroid/view/MenuItem;)Z

    :goto_1
    :sswitch_0
    move v5, v7

    .line 2138
    goto :goto_0

    .line 2006
    :sswitch_1
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v0, v8, :cond_2

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v0, :cond_2

    .line 2010
    :try_start_0
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 2011
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 2012
    .local v6, context:Landroid/content/Context;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-static {v6, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->shouldPlayOnTV(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2015
    const-string v0, "SceneLocalPhotoThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalPhotoThumbnail][onContextItemSelected]: launch DMC TV Mode. Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 2016
    goto :goto_0

    .line 2019
    .end local v6           #context:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 2025
    :cond_2
    invoke-direct {p0, v2, v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_1

    .line 2030
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onEditPhoto(I)V

    goto :goto_1

    .line 2035
    :sswitch_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_1

    .line 2040
    :sswitch_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_1

    .line 2045
    :sswitch_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_1

    .line 2050
    :sswitch_6
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v0

    if-ne v0, v7, :cond_3

    .line 2052
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDeleteContinuousShot(Landroid/view/MenuItem;)V

    .line 2066
    :goto_2
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "trigger deleteSingleMedia, mCurrentSenseMode=SENSE_MODE_DELETE"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2056
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/helper/DeleteManager;->deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 2060
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2061
    :try_start_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2063
    iput v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    .line 2064
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    goto :goto_2

    .line 2062
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2071
    :sswitch_7
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSlideShow(I)V

    goto/16 :goto_1

    .line 2076
    :sswitch_8
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "[onContextItemSelected][PRINT]"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/album/helper/MenuManager;->preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2082
    :sswitch_9
    const-string v0, "SceneLocalPhotoThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LocalGridviewTemplate][onMainViewContextItemSelected][TRIM]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2090
    :sswitch_a
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-static {v1, v0}, Lcom/htc/album/helper/MenuManager;->showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_1

    .line 2095
    :sswitch_b
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3}, Lcom/htc/album/helper/MenuManager;->showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_1

    .line 2100
    :sswitch_c
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    goto/16 :goto_1

    .line 2001
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090079 -> :sswitch_1
        0x7f09007a -> :sswitch_1
        0x7f09007b -> :sswitch_0
        0x7f09007c -> :sswitch_2
        0x7f09007e -> :sswitch_4
        0x7f09007f -> :sswitch_5
        0x7f090081 -> :sswitch_6
        0x7f090083 -> :sswitch_7
        0x7f090087 -> :sswitch_3
        0x7f090088 -> :sswitch_8
        0x7f090089 -> :sswitch_a
        0x7f09008b -> :sswitch_b
        0x7f09008c -> :sswitch_c
        0x7f0a00f9 -> :sswitch_9
    .end sparse-switch
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v10, 0x1

    .line 1021
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v9, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1025
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v9

    if-ne v10, v9, :cond_2

    .line 1027
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onShare(I)V

    goto :goto_0

    .line 1031
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    .line 1036
    :sswitch_0
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v11, 0x0

    const-string v12, "SceneLocalFolder"

    invoke-interface {v9, v11, v12, v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1041
    :sswitch_1
    iput v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 1042
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchSelectPlayer(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 1048
    :sswitch_2
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->isPartialListBuilding()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1049
    invoke-direct {p0, v13}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    goto :goto_0

    .line 1055
    :sswitch_3
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    if-nez v9, :cond_0

    .line 1057
    invoke-direct {p0, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    goto :goto_0

    .line 1063
    :sswitch_4
    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v9, v13, :cond_0

    .line 1065
    iput-boolean v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    .line 1067
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v3, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1070
    .local v2, count:I
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1072
    :try_start_0
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1073
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1074
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    if-eqz v2, :cond_3

    .line 1078
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v9, v3}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1082
    :cond_3
    iput-boolean v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    goto :goto_0

    .line 1089
    .end local v2           #count:I
    .end local v3           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_5
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    .line 1091
    .local v4, folderType:Ljava/lang/String;
    const-string v9, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1093
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 1104
    :goto_1
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v9, :cond_0

    .line 1105
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v8

    .line 1106
    .local v8, pos:I
    if-ne v8, v12, :cond_0

    .line 1107
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    goto/16 :goto_0

    .line 1097
    .end local v8           #pos:I
    .restart local v1       #context:Landroid/content/Context;
    :cond_4
    const/4 v0, 0x0

    .line 1099
    .local v0, bVideo:Z
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v9

    if-gtz v9, :cond_5

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v9

    if-lez v9, :cond_5

    move v0, v10

    .line 1101
    :goto_2
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1, v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_1

    .restart local v1       #context:Landroid/content/Context;
    :cond_5
    move v0, v11

    .line 1099
    goto :goto_2

    .line 1115
    .end local v0           #bVideo:Z
    .end local v4           #folderType:Ljava/lang/String;
    :sswitch_6
    invoke-direct {p0, v12}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSlideShow(I)V

    goto/16 :goto_0

    .line 1120
    :sswitch_7
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/htc/album/helper/MenuManager;->callSharePickerForPrint(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;)V

    goto/16 :goto_0

    .line 1126
    .restart local v1       #context:Landroid/content/Context;
    :sswitch_8
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1132
    :sswitch_9
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v7

    .line 1133
    .local v7, itemPosition:I
    if-ne v7, v12, :cond_6

    .line 1135
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 1137
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1138
    .local v6, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v6, :cond_7

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1140
    move v7, v5

    .line 1146
    .end local v5           #i:I
    .end local v6           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_6
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x3

    const/16 v12, 0x1398

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v9, v10, v12, v11, v13}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1135
    .restart local v5       #i:I
    .restart local v6       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1151
    .end local v5           #i:I
    .end local v6           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v7           #itemPosition:I
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto/16 :goto_0

    .line 1031
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_a
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0xd -> :sswitch_6
        0xf -> :sswitch_9
        0x10 -> :sswitch_1
        0x12 -> :sswitch_7
        0x13 -> :sswitch_0
        0x29 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 3
    .parameter "nAnimState"

    .prologue
    .line 2349
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2350
    .local v0, animationBundle:Landroid/os/Bundle;
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAnimationState:I

    .line 2351
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 2352
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 2353
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 17
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1910
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1983
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 1912
    .restart local p3
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    .line 1914
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v13, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1916
    .local v13, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast p3, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    .end local p3
    move-object/from16 v0, p3

    iget v15, v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 1917
    .local v15, position:I
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCanSetAsImageCount()I

    move-result v6

    .line 1919
    .local v6, count:I
    invoke-virtual {v13, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1920
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_2

    .line 1922
    const-string v1, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateContextMenu]: skip1..."

    invoke-static {v1, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1925
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFakeForLoading()Z

    move-result v4

    if-eq v1, v4, :cond_0

    .line 1927
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1929
    .local v2, context:Landroid/content/Context;
    const/4 v14, 0x0

    .line 1930
    .local v14, isWMDrm:Z
    if-eqz v3, :cond_3

    const-string v1, "video/x-wmv-drm"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1931
    const/4 v14, 0x1

    .line 1934
    :cond_3
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1935
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x20128

    invoke-virtual/range {v1 .. v7}, Lcom/htc/album/helper/MenuManager;->makeExclusion(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;ZZII)I

    move-result v12

    .line 1946
    .local v12, exclusion:I
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v14, :cond_5

    .line 1948
    :cond_4
    if-eqz v14, :cond_9

    const/16 v16, 0x1

    .line 1949
    .local v16, type:I
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1952
    or-int/lit8 v12, v12, 0x4

    .line 1956
    .end local v16           #type:I
    :cond_5
    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isTrimExists(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 1958
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1961
    const/4 v1, 0x0

    const v4, 0x7f0a00f9

    const/16 v5, 0x11

    const v7, 0x7f0a00f9

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1965
    :cond_6
    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    if-nez v14, :cond_7

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1972
    :cond_7
    const/high16 v1, 0x8

    or-int/2addr v12, v1

    .line 1977
    :cond_8
    const/high16 v1, 0x1

    or-int/2addr v12, v1

    .line 1978
    const/high16 v1, 0x10

    or-int/2addr v12, v1

    .line 1980
    invoke-static {v3, v12}, Lcom/htc/album/helper/MenuManager;->exclusionSlideShow(Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    move-object v8, v2

    move-object/from16 v10, p1

    move-object v11, v3

    invoke-virtual/range {v7 .. v12}, Lcom/htc/album/helper/MenuManager;->showPhotoMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V

    goto/16 :goto_0

    :cond_9
    move-object v1, v3

    .line 1948
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v16

    goto/16 :goto_1
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 869
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 870
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 871
    .local v1, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->enableRightFooter()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 873
    return-object v1
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 231
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 232
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/ImageProcessManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 238
    :cond_2
    if-nez v0, :cond_0

    .line 240
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 822
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v1

    .line 823
    .local v1, gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 824
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 825
    .local v3, nTop:I
    const/4 v2, 0x0

    .line 826
    .local v2, nBottom:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 828
    invoke-static {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v3

    .line 838
    :goto_0
    invoke-virtual {v1, v7, v3, v7, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 839
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 842
    return-object v1

    .line 834
    :cond_0
    invoke-static {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v3, v4, v5

    .line 836
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 2337
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 1890
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1892
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onDelete][tablet]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    .line 1899
    :goto_0
    return-void

    .line 1897
    :cond_0
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onDelete][!tablet]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 1

    .prologue
    .line 846
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onDestroyScene()V

    .line 847
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->exit()V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    .line 851
    :cond_0
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 247
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_2

    .line 251
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/ImageProcessManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 253
    :cond_2
    if-nez v0, :cond_0

    .line 255
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 1247
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 727
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 728
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableInvalidateWhenShow(Z)V

    .line 738
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    .line 739
    return-void

    .line 732
    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->createHeaderBar(IZ)V

    .line 733
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->createFooterBar(IZ)V

    goto :goto_0
.end method

.method protected onItemClickIRT(Lcom/htc/sunny2/view/SView;I)V
    .locals 11
    .parameter "view"
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 2493
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2494
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_1

    .line 2563
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2496
    .restart local p1
    :cond_1
    invoke-virtual {v1, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2497
    .local v2, anAlbum:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFakeForLoading()Z

    move-result v7

    if-eq v5, v7, :cond_0

    .line 2499
    iget v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v7, v10, :cond_3

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v7, :cond_3

    .line 2503
    :try_start_0
    iput p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 2504
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2505
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 2506
    .local v3, context:Landroid/content/Context;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-static {v3, v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->shouldPlayOnTV(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2509
    const-string v7, "SceneLocalPhotoThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SceneLocalPhotoThumbnail][onItemClickIRT]: launch DMC TV Mode. Index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2513
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #context:Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 2517
    :cond_2
    const-string v7, "SceneLocalPhotoThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SceneLocalPhotoThumbnail][onItemClickIRT]: No TV Mode. Index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onItemClickIRT(Lcom/htc/sunny2/view/SView;I)V

    .line 2525
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 2528
    iget v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v7, v10, :cond_8

    .line 2529
    const/4 v4, 0x0

    .line 2530
    .local v4, selected:Z
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2532
    :try_start_1
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move v4, v5

    .line 2533
    :goto_1
    if-eqz v4, :cond_4

    .line 2534
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2536
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2538
    instance-of v5, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;

    if-eqz v5, :cond_5

    move-object v5, p1

    .line 2539
    check-cast v5, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;

    invoke-interface {v5, v10}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;->setStyle(I)V

    .line 2542
    :cond_5
    instance-of v5, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    if-eqz v5, :cond_6

    .line 2543
    check-cast p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    .end local p1
    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;->setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2546
    :cond_6
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 2548
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 2549
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2551
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    goto/16 :goto_0

    .restart local p1
    :cond_7
    move v4, v6

    .line 2532
    goto :goto_1

    .line 2536
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2557
    .end local v4           #selected:Z
    :cond_8
    instance-of v5, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;

    if-eqz v5, :cond_0

    .line 2559
    check-cast p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;

    .end local p1
    invoke-interface {p1, v6}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;->setStyle(I)V

    goto/16 :goto_0
.end method

.method protected onItemSelected(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 2573
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2574
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_1

    .line 2591
    :cond_0
    :goto_0
    return-void

    .line 2576
    :cond_1
    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2577
    .local v2, anAlbum:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFakeForLoading()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 2579
    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 2583
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2584
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2586
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v3, Lcom/htc/album/Animation/animationSetGridview;

    .line 2587
    .local v3, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v3, p1, v4}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 2589
    invoke-direct {p0, p1, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 261
    const/4 v2, 0x1

    .line 263
    .local v2, isHandled:Z
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v3

    .line 265
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 266
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 307
    const/4 v2, 0x0

    .line 311
    :cond_2
    :goto_1
    :sswitch_0
    if-nez v2, :cond_4

    .line 312
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v3

    goto :goto_0

    .line 272
    :sswitch_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    if-eqz v3, :cond_2

    .line 276
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    if-eqz v3, :cond_3

    .line 279
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->getService()Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 280
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 281
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;->unbindService(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)V

    .line 288
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    goto :goto_1

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "SceneLocalPhotoThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mServiceCallback Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    move v3, v2

    .line 315
    goto :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x139a -> :sswitch_1
        0x5078 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 711
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 712
    const/16 v0, 0x2724

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 713
    return-void
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 2460
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    move-result-object v0

    .line 2462
    .local v0, gItem:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 2487
    return-object v0
.end method

.method public onNoTVToPlay()V
    .locals 1

    .prologue
    .line 649
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 650
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->isDRMOnlyCollection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNoTVToPlay()V

    .line 652
    :cond_0
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 1

    .prologue
    .line 2402
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNotifyUpdateComplete()V

    .line 2403
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 2404
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    if-nez v17, :cond_1

    .line 1616
    :cond_0
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][SceneLocalPhotoThumbnail][onOptionsItemSelected][tablet]can\'t get activity"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const/4 v6, 0x0

    .line 1802
    :goto_0
    return v6

    .line 1620
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    .line 1621
    .local v4, activity:Landroid/app/Activity;
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][LocalGridviewActivity][onMaOptionsItemSelected]: "

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    const/4 v6, 0x0

    .line 1623
    .local v6, bResult:Z
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v14

    .line 1624
    .local v14, menuId:I
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v9

    .line 1625
    .local v9, groupId:I
    const/16 v17, 0x303a

    move/from16 v0, v17

    if-ne v9, v0, :cond_2

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOnShareItemListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 1628
    const/4 v6, 0x1

    goto :goto_0

    .line 1631
    :cond_2
    sparse-switch v14, :sswitch_data_0

    .line 1798
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][LocalGridviewActivity][onMenuItemSelected] Unsupported context menu operation."

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1641
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v13

    .line 1642
    .local v13, itemPosition:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_3

    .line 1644
    const/4 v13, 0x0

    .line 1646
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v13, v1}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 1648
    const/4 v6, 0x1

    .line 1649
    goto :goto_0

    .line 1674
    .end local v13           #itemPosition:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v13

    .line 1675
    .restart local v13       #itemPosition:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_4

    .line 1677
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1680
    .local v12, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1682
    move v13, v10

    .line 1688
    .end local v10           #i:I
    .end local v12           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    const/16 v17, 0x3

    const/16 v18, 0x1398

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v4, v0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 1690
    const/4 v6, 0x1

    .line 1691
    goto/16 :goto_0

    .line 1677
    .restart local v10       #i:I
    .restart local v12       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1694
    .end local v10           #i:I
    .end local v12           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v13           #itemPosition:I
    :sswitch_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->turnOnOffTVBtn(Z)V

    .line 1695
    const/4 v6, 0x1

    .line 1696
    goto/16 :goto_0

    .line 1699
    :sswitch_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->turnOnOffTVBtn(Z)V

    .line 1700
    const/4 v6, 0x1

    .line 1701
    goto/16 :goto_0

    .line 1704
    :sswitch_4
    invoke-static {v4}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    .line 1705
    const/4 v6, 0x1

    .line 1706
    goto/16 :goto_0

    .line 1711
    :sswitch_5
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][LocalGridviewActivity][onMenuItemSelected] CommonLocalMenuID.PRINT"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    if-nez v17, :cond_7

    .line 1715
    :cond_6
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][SceneLocalPhotoThumbnail][OnShareItemSelectedListener][onClick]can\'t get activity"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1718
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager;->callSharePickerForPrint(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;)V

    goto/16 :goto_0

    .line 1724
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onCamera()V

    goto/16 :goto_0

    .line 1729
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDelete()V

    goto/16 :goto_0

    .line 1733
    :sswitch_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v7, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1735
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1736
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1736
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 1741
    .end local v7           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onBackPressed()Z

    goto/16 :goto_0

    .line 1746
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1747
    .local v5, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v5, :cond_8

    .line 1749
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1752
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v8

    .line 1753
    .local v8, firstViewPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->getChildrenCount()I

    move-result v17

    add-int/lit8 v15, v17, 0x4

    .line 1754
    .local v15, totalChildren:I
    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v16

    .line 1756
    .local v16, totalItems:I
    const-string v17, "SceneLocalPhotoThumbnail"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "firstViewPos="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", totalChildren="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", totalItems="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1759
    move v10, v8

    .restart local v10       #i:I
    :goto_2
    add-int v17, v8, v15

    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 1761
    move/from16 v0, v16

    if-lt v10, v0, :cond_b

    .line 1772
    :cond_9
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/helper/DeleteManager;->deleteAllMedias()V

    .line 1774
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1777
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 1779
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1784
    :cond_a
    const/4 v6, 0x1

    .line 1785
    goto/16 :goto_0

    .line 1766
    :cond_b
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1767
    .local v11, idx:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1772
    .end local v11           #idx:Ljava/lang/Integer;
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 1789
    .end local v5           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v8           #firstViewPos:I
    .end local v10           #i:I
    .end local v15           #totalChildren:I
    .end local v16           #totalItems:I
    :sswitch_b
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->ToggleSelectAll(Z)Z

    goto/16 :goto_0

    .line 1794
    :sswitch_c
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->ToggleSelectAll(Z)Z

    goto/16 :goto_0

    .line 1631
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x204014f -> :sswitch_b
        0x20401ec -> :sswitch_a
        0x20401f4 -> :sswitch_c
        0x7f090081 -> :sswitch_7
        0x7f090083 -> :sswitch_0
        0x7f090084 -> :sswitch_1
        0x7f090088 -> :sswitch_5
        0x7f0a00f7 -> :sswitch_4
        0x7f0a0161 -> :sswitch_2
        0x7f0a0162 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstIndexPostion()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->markSelection(II)V

    .line 858
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPause()V

    .line 859
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 2326
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPhaseInScreenControl(I)V

    .line 2333
    return-void

    .line 2330
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 2316
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2322
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPhaseOutScreenControl(I)V

    .line 2323
    return-void

    .line 2320
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 2342
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 2344
    .local v0, anim:Z
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 27
    .parameter "menu"

    .prologue
    .line 1262
    invoke-super/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1263
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 1264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    .line 1266
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1268
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet] + "

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1272
    :cond_0
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet]can\'t get activity"

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const/4 v2, 0x0

    .line 1531
    :goto_0
    return v2

    .line 1285
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1287
    .local v3, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    const v4, 0x7f090087

    const/4 v5, 0x1

    const v6, 0x204020f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1288
    .local v18, item:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1289
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1291
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const v6, 0x7f0a0111

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1292
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1293
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 1297
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1298
    .local v8, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v11

    .line 1299
    .local v11, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v22

    .line 1300
    .local v22, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v11, :cond_3

    if-nez v22, :cond_4

    .line 1302
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1304
    :cond_4
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v26

    .line 1305
    .local v26, totalCount:I
    invoke-virtual/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v13

    .line 1307
    .local v13, drmCount:I
    const/16 v24, 0x1

    .line 1308
    .local v24, showSlideShow:Z
    const-string v2, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v2

    move/from16 v0, v26

    if-eq v2, v0, :cond_6

    :cond_5
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1313
    :cond_6
    const/16 v24, 0x0

    .line 1315
    :cond_7
    sub-int v2, v13, v26

    if-nez v2, :cond_8

    .line 1317
    const/16 v24, 0x0

    .line 1318
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 1320
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    .line 1322
    const/16 v24, 0x1

    .line 1328
    .end local v16           #i:I
    :cond_8
    if-eqz v24, :cond_f

    .line 1330
    const/4 v2, 0x0

    const v4, 0x7f090083

    const/4 v5, 0x3

    const v6, 0x204020e

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1331
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1332
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1345
    :cond_9
    :goto_2
    const/4 v2, 0x0

    const v4, 0x7f090081

    const/4 v5, 0x4

    const v6, 0x2040214

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1351
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v2, :cond_a

    .line 1354
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->ENABLE_TV_BUTTON:Z

    if-eqz v2, :cond_10

    .line 1356
    if-eqz v3, :cond_a

    .line 1358
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 1359
    .local v12, context:Landroid/content/Context;
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 1398
    .end local v12           #context:Landroid/content/Context;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    .line 1400
    const/4 v10, 0x0

    .line 1402
    .local v10, bPrintableImage:Z
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v17

    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1406
    .local v17, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v17, :cond_15

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 1408
    const/4 v10, 0x1

    .line 1413
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_b
    if-eqz v10, :cond_c

    .line 1415
    const/4 v2, 0x0

    const v4, 0x7f090088

    const/16 v5, 0xc

    const v6, 0x7f0a00f8

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1421
    .end local v10           #bPrintableImage:Z
    .end local v16           #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    if-eqz v2, :cond_d

    .line 1423
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v9

    .line 1424
    .local v9, adapterCount:I
    if-lez v9, :cond_d

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v6

    invoke-virtual/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v4

    sub-int/2addr v4, v9

    if-nez v4, :cond_16

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareMenu(Landroid/content/Context;Landroid/view/Menu;IIZ)Z

    .line 1430
    .end local v9           #adapterCount:I
    :cond_d
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet] - "

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1318
    .restart local v16       #i:I
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1336
    .end local v16           #i:I
    :cond_f
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1338
    const/4 v2, 0x0

    const v4, 0x7f090083

    const/4 v5, 0x3

    const v6, 0x204020e

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1339
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1340
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1341
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1364
    :cond_10
    const/4 v15, 0x0

    .line 1365
    .local v15, hasOutput:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v21

    .line 1366
    .local v21, itemPosition:I
    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_13

    .line 1368
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_11

    .line 1370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v17

    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1371
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v17, :cond_12

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1373
    const/4 v15, 0x1

    .line 1387
    .end local v16           #i:I
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_11
    :goto_7
    if-eqz v15, :cond_a

    .line 1389
    const/4 v2, 0x0

    const v4, 0x7f090084

    const/16 v5, 0xb

    const v6, 0x7f0a0112

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1390
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Output_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1391
    invoke-static {v3}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1368
    .restart local v16       #i:I
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1380
    .end local v16           #i:I
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v17

    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1381
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v17, :cond_11

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1383
    const/4 v15, 0x1

    goto :goto_7

    .line 1391
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_14
    const/4 v2, 0x0

    goto :goto_8

    .line 1402
    .end local v15           #hasOutput:Z
    .end local v21           #itemPosition:I
    .restart local v10       #bPrintableImage:Z
    .restart local v16       #i:I
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_15
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 1426
    .end local v10           #bPrintableImage:Z
    .end local v16           #i:I
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v9       #adapterCount:I
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1435
    .end local v3           #activity:Landroid/app/Activity;
    .end local v8           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v9           #adapterCount:I
    .end local v11           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v13           #drmCount:I
    .end local v18           #item:Landroid/view/MenuItem;
    .end local v22           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v24           #showSlideShow:Z
    .end local v26           #totalCount:I
    :cond_17
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][phone] + "

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_19

    .line 1439
    :cond_18
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][phone]can\'t get activity"

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1443
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1445
    .restart local v3       #activity:Landroid/app/Activity;
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x7f0a0111

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1446
    .restart local v18       #item:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1447
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1449
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 1451
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][phone] - "

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1457
    .end local v3           #activity:Landroid/app/Activity;
    .end local v18           #item:Landroid/view/MenuItem;
    :cond_1a
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 1461
    :cond_1b
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet]can\'t get activity"

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1465
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1466
    .restart local v3       #activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1467
    .restart local v8       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v11

    .line 1468
    .restart local v11       #collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v22

    .line 1469
    .restart local v22       #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v11, :cond_1d

    if-nez v22, :cond_1e

    .line 1471
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1473
    :cond_1e
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v26

    .line 1474
    .restart local v26       #totalCount:I
    invoke-virtual/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v13

    .line 1477
    .restart local v13       #drmCount:I
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const v6, 0x2040214

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    .line 1478
    .local v20, itemDelete:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1479
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1482
    const/4 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const v6, 0x20401ee

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    .line 1483
    .local v19, itemCancel:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1484
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1490
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showSelectAllInOptionsMenu(Landroid/view/Menu;)V

    .line 1497
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x2040214

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1498
    .local v25, textConfirm:Ljava/lang/String;
    const/16 v23, 0x0

    .line 1499
    .local v23, numPick:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1501
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1502
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    const/4 v14, 0x1

    .line 1511
    .local v14, enable:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    if-eqz v2, :cond_1f

    .line 1520
    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1521
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1522
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1502
    .end local v14           #enable:Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1518
    .restart local v14       #enable:Z
    :cond_1f
    if-eqz v23, :cond_20

    const/4 v14, 0x1

    :goto_a
    goto :goto_9

    :cond_20
    const/4 v14, 0x0

    goto :goto_a

    .line 1529
    .end local v3           #activity:Landroid/app/Activity;
    .end local v8           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v11           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v13           #drmCount:I
    .end local v14           #enable:Z
    .end local v19           #itemCancel:Landroid/view/MenuItem;
    .end local v20           #itemDelete:Landroid/view/MenuItem;
    .end local v22           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v23           #numPick:I
    .end local v25           #textConfirm:Ljava/lang/String;
    .end local v26           #totalCount:I
    :cond_21
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showSelectAllInOptionsMenu(Landroid/view/Menu;)V

    .line 1531
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 24
    .parameter "footer"

    .prologue
    .line 879
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    .line 882
    .local v7, activity:Landroid/app/Activity;
    if-eqz v7, :cond_0

    .line 884
    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 885
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 887
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 888
    .local v8, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v11

    .line 889
    .local v11, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v15

    .line 890
    .local v15, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v11, :cond_0

    if-eqz v15, :cond_0

    .line 892
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v23

    .line 893
    .local v23, totalCount:I
    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v12

    .line 895
    .local v12, drmCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 897
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 899
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x20401ee

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 900
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x2040214

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v9

    check-cast v9, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 903
    .local v9, btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x2040214

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 904
    .local v22, textConfirm:Ljava/lang/String;
    const/16 v17, 0x0

    .line 905
    .local v17, numPick:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 906
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 907
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    const/4 v13, 0x1

    .line 915
    .local v13, enable:Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    if-eqz v1, :cond_2

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 922
    :goto_1
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v9, v13}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 907
    .end local v13           #enable:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 919
    .restart local v13       #enable:Z
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 920
    if-eqz v17, :cond_3

    const/4 v13, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 931
    .end local v9           #btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v13           #enable:Z
    .end local v17           #numPick:I
    .end local v22           #textConfirm:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v18

    check-cast v18, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 932
    .local v18, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v15, :cond_5

    .line 934
    if-lez v23, :cond_5

    .line 936
    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v1

    if-gtz v1, :cond_5

    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v1

    if-gtz v1, :cond_5

    .line 937
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->removeButton(I)V

    .line 945
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0115

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 950
    const/16 v21, 0x1

    .line 951
    .local v21, showSlideShow:Z
    const-string v1, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v1

    move/from16 v0, v23

    if-eq v1, v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v3

    if-ne v1, v3, :cond_8

    .line 957
    :cond_7
    const/16 v21, 0x0

    .line 959
    :cond_8
    sub-int v1, v12, v23

    if-nez v1, :cond_9

    .line 960
    const/16 v21, 0x0

    .line 961
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    move/from16 v0, v23

    if-ge v14, v0, :cond_9

    .line 962
    invoke-virtual {v8, v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    .line 963
    const/16 v21, 0x1

    .line 969
    .end local v14           #i:I
    :cond_9
    if-eqz v21, :cond_e

    .line 971
    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0118

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 986
    :cond_a
    :goto_4
    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmVideoCount()I

    move-result v1

    add-int/2addr v1, v12

    move/from16 v0, v23

    if-eq v1, v0, :cond_f

    const/16 v19, 0x1

    .line 989
    .local v19, showPrint:Z
    :goto_5
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v1, :cond_10

    move/from16 v0, v23

    if-eq v12, v0, :cond_10

    const/16 v20, 0x1

    .line 991
    .local v20, showSelectPlayer:Z
    :goto_6
    const/4 v1, 0x1

    move/from16 v0, v19

    if-eq v1, v0, :cond_b

    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v1, v0, :cond_0

    .line 993
    :cond_b
    const/4 v1, 0x0

    const/16 v3, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v16

    check-cast v16, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 997
    .local v16, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v20, :cond_c

    .line 999
    const/16 v1, 0xf

    const/4 v3, 0x0

    const v4, 0x7f0a00be

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1002
    :cond_c
    if-eqz v19, :cond_0

    .line 1004
    const/16 v1, 0x12

    const/4 v3, 0x0

    const v4, 0x7f0a0119

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto/16 :goto_0

    .line 961
    .end local v16           #moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v19           #showPrint:Z
    .end local v20           #showSelectPlayer:Z
    .restart local v14       #i:I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 976
    .end local v14           #i:I
    :cond_e
    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 978
    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0118

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v10

    check-cast v10, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 979
    .local v10, btnSlideshow:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_4

    .line 986
    .end local v10           #btnSlideshow:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_f
    const/16 v19, 0x0

    goto :goto_5

    .line 989
    .restart local v19       #showPrint:Z
    :cond_10
    const/16 v20, 0x0

    goto :goto_6
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setTitle(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 3040
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onResume()V

    .line 3043
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v0

    .line 3044
    .local v0, bIsDLNAPlaying:Z
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    if-eq v1, v0, :cond_0

    .line 3045
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 3046
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    .line 3048
    :cond_0
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 3062
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 3065
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v0

    .line 3066
    .local v0, bIsDLNAPlaying:Z
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    if-eq v1, v0, :cond_0

    .line 3067
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 3068
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    .line 3070
    :cond_0
    return-void
.end method

.method public onShare(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 1012
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onShare]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 1017
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 3052
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 3054
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->onDismissAllFragmentDialog()V

    .line 3056
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onStop()V

    .line 3057
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 616
    :try_start_0
    iget v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    if-eq v6, v9, :cond_1

    const/4 v3, 0x1

    .line 617
    .local v3, fixedIndex:Z
    :goto_0
    if-eqz v3, :cond_2

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 618
    .local v5, outputIndex:I
    :goto_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 620
    .local v4, outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->isDRMOnlyCollection()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v3, :cond_4

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 622
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 623
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 641
    iput v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 643
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #fixedIndex:Z
    .end local v4           #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #outputIndex:I
    :goto_2
    return-void

    .line 616
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 617
    .restart local v3       #fixedIndex:Z
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v5

    goto :goto_1

    .line 625
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v4       #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v5       #outputIndex:I
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v1, Lcom/htc/album/Animation/animationSetGridview;

    .line 626
    .local v1, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v1, v5, v6}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 628
    invoke-direct {p0, v5, v0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 641
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #animationSet:Lcom/htc/album/Animation/animationSetGridview;
    :goto_3
    iput v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    goto :goto_2

    .line 632
    :cond_4
    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDMRChanged(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 635
    .end local v3           #fixedIndex:Z
    .end local v4           #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #outputIndex:I
    :catch_0
    move-exception v2

    .line 637
    .local v2, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "SceneLocalPhotoThumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onTVReadyToPlay] Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 641
    iput v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    goto :goto_2

    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iput v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    throw v6
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 810
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager;->release()V

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 814
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 816
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onUnbindAdapter()V

    .line 817
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1242
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2447
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2449
    const/4 v0, 0x0

    .line 2453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 607
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2308
    const-string v0, "SceneLocalPhotoThumbnail"

    return-object v0
.end method

.method showSelectAllInOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x20401f4

    const v7, 0x204014f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1539
    const/4 v1, 0x0

    .line 1541
    .local v1, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 1542
    .local v0, PickUpperBound:I
    const/4 v3, -0x1

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-eq v3, v4, :cond_0

    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-le v3, v0, :cond_3

    .line 1543
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1545
    .local v2, pickCount:I
    if-ge v2, v0, :cond_1

    .line 1547
    invoke-interface {p1, v6, v7, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 1548
    if-eqz v1, :cond_1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1551
    :cond_1
    if-lez v2, :cond_2

    .line 1553
    invoke-interface {p1, v6, v8, v5, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 1554
    if-eqz v1, :cond_2

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1556
    :cond_2
    return-void

    .line 1542
    .end local v2           #pickCount:I
    :cond_3
    sget v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    goto :goto_0
.end method
