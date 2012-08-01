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

.field private mIsDeleteAll:Z

.field private mIsDeleteAnimation:Z

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

    .line 135
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

    .line 185
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    .line 727
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    .line 136
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 137
    return-void
.end method

.method private ToggleSelectAll(Z)Z
    .locals 8
    .parameter "selectAll"

    .prologue
    const/4 v5, 0x1

    .line 1791
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1792
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v4, :cond_1

    .line 1793
    :cond_0
    const/4 v4, 0x0

    .line 1833
    :goto_0
    return v4

    .line 1795
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 1797
    .local v3, totalItems:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1799
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1802
    const/4 v4, -0x1

    :try_start_0
    sget v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-eq v4, v7, :cond_4

    if-eqz p1, :cond_4

    .line 1804
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-lt v4, v7, :cond_4

    .line 1824
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1826
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1827
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 1829
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1831
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    :cond_3
    move v4, v5

    .line 1833
    goto :goto_0

    .line 1808
    :cond_4
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1810
    .local v2, idx:Ljava/lang/Integer;
    if-eqz p1, :cond_6

    .line 1813
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1814
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1819
    :cond_6
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_5

    .line 1820
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1824
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

.method static synthetic access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/view/SView;
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

    .line 141
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v1, p1, :cond_0

    .line 143
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

    .line 183
    :goto_0
    return-void

    .line 146
    :cond_0
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

    .line 147
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    .line 149
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 150
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v1, v5, :cond_1

    .line 154
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 160
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 165
    :cond_2
    const/16 v0, 0x11

    .line 166
    .local v0, headerId:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v1, v5, :cond_3

    .line 168
    const/16 v0, 0x12

    .line 175
    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 177
    :try_start_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 178
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 181
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    goto :goto_1

    .line 178
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private doDeleteContinuousShot()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2172
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2173
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 2174
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    :goto_0
    return-void

    .line 2177
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2178
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_1

    .line 2179
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Context is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2183
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotItem:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v4, v6, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 2184
    .local v4, position:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2186
    .local v5, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const-string v6, "SceneLocalPhotoThumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onDeleteContinuousShot]getBucketName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    const-string v6, "SceneLocalPhotoThumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onDeleteContinuousShot]getDisplayName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    new-instance v1, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    const-string v6, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v2, v6, v7, v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v3

    .line 2196
    .local v3, fragment:Landroid/app/Fragment;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v6, :cond_2

    .line 2198
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v6}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 2199
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 2202
    :cond_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2203
    new-instance v6, Lcom/htc/album/helper/DeleteManager;

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    invoke-direct {v7, p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    invoke-direct {v6, v3, v1, v7}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 2204
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/htc/album/helper/DeleteManager;->deleteContinuousShot(Lcom/htc/album/modules/collection/Collection;)V

    goto/16 :goto_0
.end method

.method private getFirstOutputIndex()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 487
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 488
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_2

    :cond_0
    move v3, v6

    .line 517
    :cond_1
    :goto_0
    return v3

    .line 491
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->isDRMOnlyCollection()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v6

    .line 492
    goto :goto_0

    .line 494
    :cond_3
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 495
    .local v3, startIndex:I
    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 496
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 499
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    .line 500
    .local v4, totalCount:I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    move v3, v6

    .line 501
    goto :goto_0

    .line 494
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v3           #startIndex:I
    .end local v4           #totalCount:I
    :cond_4
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    goto :goto_1

    .line 505
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v3       #startIndex:I
    .restart local v4       #totalCount:I
    :cond_5
    add-int/lit8 v1, v3, 0x1

    .line 508
    .local v1, i:I
    :cond_6
    rem-int/2addr v1, v4

    .line 509
    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 510
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-nez v5, :cond_7

    move v3, v1

    .line 511
    goto :goto_0

    .line 513
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 515
    if-ne v1, v3, :cond_6

    move v3, v6

    .line 517
    goto :goto_0
.end method

.method private getFirstValidPos()I
    .locals 6

    .prologue
    .line 672
    const/4 v3, -0x1

    .line 673
    .local v3, pos:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v5, :cond_0

    move v4, v3

    .line 692
    .end local v3           #pos:I
    .local v4, pos:I
    :goto_0
    return v4

    .line 676
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 677
    .local v0, count:I
    if-gtz v0, :cond_1

    move v4, v3

    .line 678
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0

    .line 680
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 682
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 683
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_3

    .line 680
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 685
    :cond_3
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 688
    move v3, v1

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    move v4, v3

    .line 692
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0
.end method

.method private isDRMOnlyCollection()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 468
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 469
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v4

    .line 472
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v2

    .line 473
    .local v2, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 477
    .local v3, totalCount:I
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v1

    .line 479
    .local v1, drmCount:I
    if-ne v3, v1, :cond_0

    .line 480
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private onActivityResult_CROP_NONE(ILandroid/content/Intent;)V
    .locals 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 436
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 438
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]mSceneControl is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 442
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 444
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]activity is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_2
    if-nez p2, :cond_3

    .line 450
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]data is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 454
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_4

    .line 456
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]extras is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_4
    const-string v3, "filePath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, dstFilePath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 462
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
    .line 194
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 196
    .local v0, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    const-string v2, "SharedAdapter.KEY_PACKAGE"

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    instance-of v1, v0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    if-eqz v1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    const-string v3, "SharedAdapter.KEY_SHARE_TO"

    move-object v1, v0

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 202
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

    .line 203
    return-void
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 9
    .parameter "newDMR"

    .prologue
    .line 557
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 558
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v6, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 562
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    .line 564
    .local v7, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFirstOutputIndex()I

    move-result v4

    .line 565
    .local v4, index:I
    const/4 v1, -0x1

    if-eq v4, v1, :cond_0

    .line 568
    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 569
    .local v8, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v8, :cond_0

    .line 572
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 574
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v5, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 577
    const-string v1, "folder_type"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v1, "key_folder_name"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v1, "key_bucket_id"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_2
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 585
    .end local v5           #bundle:Landroid/os/Bundle;
    :cond_3
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, p1, v1, v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchLocalPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V

    goto :goto_0
.end method

.method private onDataSetChange(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    .line 2374
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsBound:Z

    if-ne v5, v4, :cond_0

    .line 2375
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 2376
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2377
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 2381
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->updateThumbImageStatus()V

    .line 2382
    const/4 v3, 0x0

    .line 2383
    .local v3, selectIdx:I
    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    if-ne v4, v5, :cond_1

    .line 2384
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 2387
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneLocalFolder"

    invoke-interface {v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2388
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2389
    .local v1, context:Landroid/content/Context;
    const/16 v2, 0xff

    .line 2390
    .local v2, mediaType:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2392
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v1, v0, v2}, Lcom/htc/album/ObjectWriter/AlbumCacher;->updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 2395
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #mediaType:I
    :cond_2
    if-eq p1, v3, :cond_3

    const/4 v4, -0x1

    if-ne v4, p1, :cond_5

    .line 2396
    :cond_3
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v4, :cond_6

    .line 2398
    :cond_4
    const-string v4, "SceneLocalPhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t decode title image: mDecodeFirstImage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSceneControl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAdapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    :cond_5
    :goto_0
    return-void

    .line 2403
    :cond_6
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->sendRequest(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)V

    goto :goto_0
.end method

.method private onDeleteContinuousShot(Landroid/view/MenuItem;)V
    .locals 11
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 2128
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2129
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 2130
    const-string v7, "SceneLocalPhotoThumbnail"

    const-string v8, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2134
    :cond_1
    const-string v3, ""

    .line 2135
    .local v3, message:Ljava/lang/String;
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotItem:Landroid/view/MenuItem;

    .line 2136
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotItem:Landroid/view/MenuItem;

    invoke-interface {v7}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v4, v7, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 2137
    .local v4, position:I
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2139
    .local v5, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v5, v10, v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    .line 2140
    .local v2, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    .line 2141
    .local v6, totalCount:I
    invoke-interface {v5, v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V

    .line 2143
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

    .line 2148
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

    .line 2166
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v1, :cond_0

    .line 2167
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private onEditPhoto(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v4, 0x0

    .line 2209
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 2210
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[onEditPhoto] SceneControl is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    :cond_0
    :goto_0
    return-void

    .line 2213
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2214
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 2215
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

    .line 2221
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2222
    .local v0, activity:Landroid/app/Activity;
    move v1, p1

    .line 2224
    .local v1, itemPosition:I
    if-ne v3, v1, :cond_0

    .line 2226
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 2228
    if-ne v1, v3, :cond_0

    .line 2229
    const/4 v1, 0x0

    .line 2233
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 2234
    return-void
.end method

.method private onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 4
    .parameter "nIndex"
    .parameter "activity"
    .parameter "targetImg"

    .prologue
    .line 2238
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2240
    .local v1, c:Lcom/htc/album/modules/collection/Collection;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2241
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "itemIndex"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2242
    const-string v2, "index_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2243
    const-string v2, "folder_type"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    const-string v2, "key_folder_name"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    const-string v2, "key_bucket_id"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    const-string v2, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
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

    .line 2250
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->playImage(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 2252
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

    .line 2256
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2283
    :cond_0
    :goto_0
    return-void

    .line 2259
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getRunningDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2261
    .local v0, dmr:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isValidateDMR(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2263
    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v2

    long-to-int v3, v2

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-static {p2, v0, v3, v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchLocalPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V

    goto :goto_0

    .line 2267
    :cond_2
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2268
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 2270
    const-string v2, "directmode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 2272
    const/4 v2, 0x3

    const/16 v3, 0x1398

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v2, v3, v5, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto :goto_0

    .line 2281
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
    .line 1124
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare] + "

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1127
    :cond_0
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare]can\'t get context"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_1
    :goto_0
    return-void

    .line 1131
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1132
    .local v1, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1133
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v8

    .line 1135
    .local v8, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v8, :cond_3

    .line 1137
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare]can\'t get imageListUber"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    :cond_3
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v10

    .line 1142
    .local v10, totalCount:I
    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v7

    .line 1144
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

    .line 1150
    .local v9, result:Z
    if-nez v9, :cond_1

    .line 1152
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare]can\'t show share bubble"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1144
    .end local v9           #result:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private turnOnOffTVBtn(Z)V
    .locals 5
    .parameter "bValue"

    .prologue
    .line 645
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 649
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 651
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 654
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

    .line 658
    if-eqz p1, :cond_2

    .line 660
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 661
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->turnOnTV(Landroid/content/Context;)Z

    goto :goto_0

    .line 666
    :cond_2
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOffTV(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateThumbImageStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 733
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 735
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    if-nez v1, :cond_2

    .line 736
    :cond_0
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    .line 750
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 742
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

    .line 744
    :cond_3
    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    goto :goto_0

    .line 747
    :cond_4
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    goto :goto_0
.end method


# virtual methods
.method protected createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 4
    .parameter "collection"

    .prologue
    .line 705
    new-instance v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    .line 710
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    return-object v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 1888
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x1

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 2623
    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2561
    const-string v4, ""

    .line 2563
    .local v4, szTitle:Ljava/lang/String;
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    .line 2564
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2565
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 2566
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0048

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2568
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2575
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    if-eqz v5, :cond_3

    .line 2577
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2578
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_0

    .line 2580
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle][delete]1"

    invoke-static {v5, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 2619
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    :goto_0
    return-object v5

    .line 2583
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 2584
    .local v2, collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v2, :cond_1

    .line 2586
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle][delete]2"

    invoke-static {v5, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 2587
    goto :goto_0

    .line 2589
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

    .line 2619
    goto :goto_0

    .line 2593
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_3
    const/4 v3, 0x0

    .line 2594
    .local v3, numPick:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2596
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2597
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2598
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

    .line 2597
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2604
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #numPick:I
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2605
    .restart local v1       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_5

    .line 2607
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle]: 2"

    invoke-static {v5, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 2608
    goto :goto_0

    .line 2611
    :cond_5
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 2612
    .restart local v2       #collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v2, :cond_6

    move-object v5, v6

    .line 2613
    goto :goto_0

    .line 2615
    :cond_6
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 2616
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
    .line 2362
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->notifyDataChangedAt(I)V

    .line 2363
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 2364
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 2355
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->notifyDataSetChanged()V

    .line 2356
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 2357
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onBackPressed()Z

    .line 1218
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

    .line 311
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult]: "

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    if-eq p2, v8, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 317
    .local v0, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 383
    :sswitch_0
    invoke-static {v0, v10}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 384
    if-nez p3, :cond_5

    .line 386
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][MSG_PICK_DMR]data is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :sswitch_1
    invoke-static {v0, p2, p3}, Lcom/htc/album/helper/MenuManager;->setFootprint(Landroid/app/Activity;ILandroid/content/Intent;)V

    goto :goto_0

    .line 326
    :sswitch_2
    if-nez p3, :cond_2

    .line 328
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][SHARE_SINGLE_ITEM_SHARE]data is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :sswitch_3
    if-nez p3, :cond_3

    .line 342
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][SHARE_SINGLE_ITEM_SET_AS]data is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
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

    .line 351
    :sswitch_4
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-static {v0, v6, p3}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 356
    :sswitch_5
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-static {v0, v6, p3}, Lcom/htc/album/helper/MenuManager;->doSetAsMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 361
    :sswitch_6
    if-nez p3, :cond_4

    .line 363
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][SHARE_PRINT]data is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_4
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/htc/album/helper/MenuManager;->preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :sswitch_7
    invoke-direct {p0, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onActivityResult_CROP_NONE(ILandroid/content/Intent;)V

    goto :goto_0

    .line 377
    :sswitch_8
    const-string v7, "itemIndex"

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstIndexPostion()I

    move-result v6

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 378
    .local v3, index:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    goto/16 :goto_0

    .line 390
    .end local v3           #index:I
    :cond_5
    const-string v6, "DMR"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, selectDMR:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    if-nez v0, :cond_6

    .line 395
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][MSG_PICK_DMR]activity is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "directmode"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 401
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "directmode"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    :cond_7
    if-eqz v5, :cond_8

    .line 406
    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDMRChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :cond_8
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][MSG_PICK_DMR]selectDMR is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 414
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 415
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_9

    .line 417
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    .line 418
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;->bindService(Landroid/content/Context;Landroid/os/Handler;)Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    .line 422
    .end local v1           #handler:Landroid/os/Handler;
    :cond_9
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFirstValidPos()I

    move-result v4

    .line 423
    .local v4, pos:I
    if-eq v4, v8, :cond_0

    .line 425
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 426
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-direct {p0, v4, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_0

    .line 317
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
    .line 2337
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onAnimationEnd(I)V

    .line 2338
    packed-switch p1, :pswitch_data_0

    .line 2346
    :goto_0
    return-void

    .line 2342
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 2338
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

    .line 1166
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 1198
    :goto_0
    return v5

    .line 1172
    :cond_0
    const/4 v0, 0x0

    .line 1173
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1174
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1176
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1181
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

    .line 1187
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v3, 0x0

    const-string v4, "SceneLocalFolder"

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1191
    :cond_3
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v2, v5, :cond_4

    .line 1192
    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    goto :goto_0

    .line 1195
    :cond_4
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 755
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 759
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->updateThumbImageStatus()V

    .line 760
    const/4 v3, 0x0

    .line 761
    .local v3, selectIdx:I
    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 762
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 764
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    .line 766
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onBindAdapter()V

    .line 768
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 769
    .local v0, activty:Landroid/app/Activity;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    .line 770
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

    .line 776
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

    .line 782
    :goto_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    .line 785
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    if-eqz v4, :cond_1

    .line 786
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->sendRequest(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)V

    .line 788
    :cond_1
    const/16 v4, 0x2724

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onRemoveMessage(I)V

    .line 789
    const/16 v4, 0x2728

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v8, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 790
    return-void

    .line 778
    :catch_0
    move-exception v1

    .line 780
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
    .line 1839
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1841
    :cond_0
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][OnShareItemSelectedListener][onClick]can\'t get activity"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    :cond_1
    :goto_0
    return-void

    .line 1844
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1845
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    .line 1847
    .local v3, folderType:Ljava/lang/String;
    const-string v5, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1849
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 1861
    :goto_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v5, :cond_1

    .line 1863
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v4

    .line 1864
    .local v4, pos:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 1866
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    .line 1868
    :cond_3
    const v5, 0x7fffffff

    invoke-virtual {p0, v4, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->markSelection(II)V

    goto :goto_0

    .line 1853
    .end local v4           #pos:I
    :cond_4
    const/4 v2, 0x0

    .line 1855
    .local v2, bVideo:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1856
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

    .line 1858
    :goto_2
    invoke-static {v0, v2}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 1856
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 1974
    :cond_0
    const/4 v0, 0x0

    .line 2122
    :goto_0
    return v0

    .line 1977
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 1978
    .local v2, position:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1979
    .local v1, activity:Landroid/app/Activity;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1981
    .local v3, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    .line 1982
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1985
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2117
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "[onContextItemSelected] Unsupported context menu operation."

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 2122
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1990
    :sswitch_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    .line 1994
    :try_start_0
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 1995
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 1996
    .local v11, context:Landroid/content/Context;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-static {v11, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->shouldPlayOnTV(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1999
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

    .line 2000
    const/4 v0, 0x1

    goto :goto_0

    .line 2003
    .end local v11           #context:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 2009
    :cond_5
    invoke-direct {p0, v2, v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_1

    .line 2014
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onEditPhoto(I)V

    goto :goto_1

    .line 2019
    :sswitch_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_1

    .line 2024
    :sswitch_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_1

    .line 2029
    :sswitch_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_1

    .line 2034
    :sswitch_5
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2036
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDeleteContinuousShot(Landroid/view/MenuItem;)V

    .line 2050
    :goto_2
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "trigger deleteSingleMedia, mCurrentSenseMode=SENSE_MODE_DELETE"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2040
    :cond_6
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/helper/DeleteManager;->deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 2044
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2045
    :try_start_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2046
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2047
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    .line 2048
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    goto :goto_2

    .line 2046
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2055
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSlideShow(I)V

    goto/16 :goto_1

    .line 2060
    :sswitch_7
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "[onContextItemSelected][PRINT]"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/album/helper/MenuManager;->preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2066
    :sswitch_8
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

    .line 2069
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2074
    :sswitch_9
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-static {v1, v0}, Lcom/htc/album/helper/MenuManager;->showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_1

    .line 2079
    :sswitch_a
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3}, Lcom/htc/album/helper/MenuManager;->showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_1

    .line 2084
    :sswitch_b
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    goto/16 :goto_1

    .line 2089
    :sswitch_c
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v10

    .line 2090
    .local v10, combName:Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 2091
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v8

    .line 2093
    .local v8, c:Lcom/htc/album/modules/collection/Collection;
    new-instance v12, Lcom/htc/sunny2/view/Vector3F;

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v12, v0, v4, v5}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    .line 2094
    .local v12, positionVector:Lcom/htc/sunny2/view/Vector3F;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v9, v2, v0

    .line 2095
    .local v9, childId:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v13

    .line 2096
    .local v13, v:Lcom/htc/sunny2/view/SView;
    if-eqz v13, :cond_7

    .line 2097
    invoke-virtual {v13}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 2100
    :cond_7
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v6, Lcom/htc/album/Animation/animationSetGridview;

    .line 2101
    .local v6, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    invoke-virtual {v6, v2, v12}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 2103
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2104
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "itemIndex"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2105
    const-string v0, "index_id"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2106
    const-string v0, "folder_type"

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    const-string v0, "position"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    const-string v0, "key_bucket_id"

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    const-string v0, "folder_type"

    const-string v4, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SceneLocalPhotoBurstShot"

    const/4 v5, 0x0

    invoke-interface {v0, v7, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1985
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090079 -> :sswitch_0
        0x7f09007a -> :sswitch_0
        0x7f09007b -> :sswitch_c
        0x7f09007c -> :sswitch_1
        0x7f09007e -> :sswitch_3
        0x7f09007f -> :sswitch_4
        0x7f090081 -> :sswitch_5
        0x7f090083 -> :sswitch_6
        0x7f090087 -> :sswitch_2
        0x7f090088 -> :sswitch_7
        0x7f090089 -> :sswitch_9
        0x7f09008b -> :sswitch_a
        0x7f09008c -> :sswitch_b
        0x7f0a00f9 -> :sswitch_8
    .end sparse-switch
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 13
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v11, -0x1

    .line 1007
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1009
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v8

    if-ne v9, v8, :cond_1

    .line 1011
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onShare(I)V

    .line 1120
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1015
    .restart local v1       #context:Landroid/content/Context;
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 1020
    :sswitch_0
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v10, 0x0

    const-string v11, "SceneLocalFolder"

    invoke-interface {v8, v10, v11, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1025
    :sswitch_1
    iput v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 1026
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchSelectPlayer(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 1032
    :sswitch_2
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->isPartialListBuilding()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1033
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    goto :goto_0

    .line 1039
    :sswitch_3
    invoke-direct {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    goto :goto_0

    .line 1044
    :sswitch_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .local v2, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1046
    :try_start_0
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1047
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v8, v2}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1053
    .end local v2           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_5
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    .line 1055
    .local v3, folderType:Ljava/lang/String;
    const-string v8, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1057
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 1068
    :goto_1
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v8, :cond_0

    .line 1069
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v7

    .line 1070
    .local v7, pos:I
    if-ne v7, v11, :cond_0

    .line 1071
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    goto :goto_0

    .line 1061
    .end local v7           #pos:I
    .restart local v1       #context:Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    .line 1063
    .local v0, bVideo:Z
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v8

    if-gtz v8, :cond_3

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v8

    if-lez v8, :cond_3

    move v0, v9

    .line 1065
    :goto_2
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1, v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_1

    .restart local v1       #context:Landroid/content/Context;
    :cond_3
    move v0, v10

    .line 1063
    goto :goto_2

    .line 1079
    .end local v0           #bVideo:Z
    .end local v3           #folderType:Ljava/lang/String;
    :sswitch_6
    invoke-direct {p0, v11}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSlideShow(I)V

    goto/16 :goto_0

    .line 1084
    :sswitch_7
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/htc/album/helper/MenuManager;->callSharePickerForPrint(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;)V

    goto/16 :goto_0

    .line 1090
    .restart local v1       #context:Landroid/content/Context;
    :sswitch_8
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1096
    :sswitch_9
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v6

    .line 1097
    .local v6, itemPosition:I
    if-ne v6, v11, :cond_4

    .line 1099
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 1101
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1102
    .local v5, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1104
    move v6, v4

    .line 1110
    .end local v4           #i:I
    .end local v5           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x3

    const/16 v11, 0x1398

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v8, v9, v11, v10, v12}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1099
    .restart local v4       #i:I
    .restart local v5       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1115
    .end local v4           #i:I
    .end local v5           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #itemPosition:I
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto/16 :goto_0

    .line 1015
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
    .line 2329
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2330
    .local v0, animationBundle:Landroid/os/Bundle;
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAnimationState:I

    .line 2331
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 2332
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 2333
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 17
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1894
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1967
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 1896
    .restart local p3
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    .line 1898
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v13, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1900
    .local v13, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast p3, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    .end local p3
    move-object/from16 v0, p3

    iget v15, v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 1901
    .local v15, position:I
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCanSetAsImageCount()I

    move-result v6

    .line 1903
    .local v6, count:I
    invoke-virtual {v13, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1904
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_2

    .line 1906
    const-string v1, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateContextMenu]: skip1..."

    invoke-static {v1, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1909
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFakeForLoading()Z

    move-result v4

    if-eq v1, v4, :cond_0

    .line 1911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1913
    .local v2, context:Landroid/content/Context;
    const/4 v14, 0x0

    .line 1914
    .local v14, isWMDrm:Z
    if-eqz v3, :cond_3

    const-string v1, "video/x-wmv-drm"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1915
    const/4 v14, 0x1

    .line 1918
    :cond_3
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x20128

    invoke-virtual/range {v1 .. v7}, Lcom/htc/album/helper/MenuManager;->makeExclusion(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;ZZII)I

    move-result v12

    .line 1930
    .local v12, exclusion:I
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v14, :cond_5

    .line 1932
    :cond_4
    if-eqz v14, :cond_9

    const/16 v16, 0x1

    .line 1933
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

    .line 1936
    or-int/lit8 v12, v12, 0x4

    .line 1940
    .end local v16           #type:I
    :cond_5
    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isTrimExists(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 1942
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

    .line 1945
    const/4 v1, 0x0

    const v4, 0x7f0a00f9

    const/16 v5, 0x11

    const v7, 0x7f0a00f9

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1949
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

    .line 1956
    :cond_7
    const/high16 v1, 0x8

    or-int/2addr v12, v1

    .line 1961
    :cond_8
    const/high16 v1, 0x1

    or-int/2addr v12, v1

    .line 1962
    const/high16 v1, 0x10

    or-int/2addr v12, v1

    .line 1964
    invoke-static {v3, v12}, Lcom/htc/album/helper/MenuManager;->exclusionSlideShow(Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V

    .line 1966
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

    .line 1932
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v16

    goto/16 :goto_1
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 855
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 856
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 857
    .local v1, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->enableRightFooter()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 859
    return-object v1
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 225
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/ImageProcessManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 231
    :cond_2
    if-nez v0, :cond_0

    .line 233
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

    .line 808
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v1

    .line 809
    .local v1, gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 810
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 811
    .local v3, nTop:I
    const/4 v2, 0x0

    .line 812
    .local v2, nBottom:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 814
    invoke-static {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v3

    .line 824
    :goto_0
    invoke-virtual {v1, v7, v3, v7, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 825
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 828
    return-object v1

    .line 820
    :cond_0
    invoke-static {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v3, v4, v5

    .line 822
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 2317
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 1874
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1876
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onDelete][tablet]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    .line 1883
    :goto_0
    return-void

    .line 1881
    :cond_0
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onDelete][!tablet]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 1

    .prologue
    .line 832
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onDestroyScene()V

    .line 833
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->exit()V

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    .line 837
    :cond_0
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 239
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 240
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/ImageProcessManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 246
    :cond_2
    if-nez v0, :cond_0

    .line 248
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 716
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 717
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableInvalidateWhenShow(Z)V

    .line 725
    return-void

    .line 721
    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->createHeaderBar(IZ)V

    .line 722
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

    .line 2455
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2456
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_1

    .line 2525
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2458
    .restart local p1
    :cond_1
    invoke-virtual {v1, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2459
    .local v2, anAlbum:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFakeForLoading()Z

    move-result v7

    if-eq v5, v7, :cond_0

    .line 2461
    iget v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v7, v10, :cond_3

    .line 2465
    :try_start_0
    iput p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 2466
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2467
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 2468
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

    .line 2471
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

    .line 2475
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #context:Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 2479
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

    .line 2482
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onItemClickIRT(Lcom/htc/sunny2/view/SView;I)V

    .line 2487
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 2490
    iget v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v7, v10, :cond_8

    .line 2491
    const/4 v4, 0x0

    .line 2492
    .local v4, selected:Z
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2494
    :try_start_1
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move v4, v5

    .line 2495
    :goto_1
    if-eqz v4, :cond_4

    .line 2496
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2500
    instance-of v5, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;

    if-eqz v5, :cond_5

    move-object v5, p1

    .line 2501
    check-cast v5, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;

    invoke-interface {v5, v10}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;->setStyle(I)V

    .line 2504
    :cond_5
    instance-of v5, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    if-eqz v5, :cond_6

    .line 2505
    check-cast p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    .end local p1
    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;->setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2508
    :cond_6
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 2510
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 2511
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2513
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    goto/16 :goto_0

    .restart local p1
    :cond_7
    move v4, v6

    .line 2494
    goto :goto_1

    .line 2498
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2519
    .end local v4           #selected:Z
    :cond_8
    instance-of v5, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;

    if-eqz v5, :cond_0

    .line 2521
    check-cast p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;

    .end local p1
    invoke-interface {p1, v6}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;->setStyle(I)V

    goto/16 :goto_0
.end method

.method protected onItemSelected(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 2535
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2536
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_1

    .line 2553
    :cond_0
    :goto_0
    return-void

    .line 2538
    :cond_1
    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2539
    .local v2, anAlbum:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFakeForLoading()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 2541
    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 2545
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2546
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2548
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v3, Lcom/htc/album/Animation/animationSetGridview;

    .line 2549
    .local v3, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v3, p1, v4}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 2551
    invoke-direct {p0, p1, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 254
    const/4 v1, 0x1

    .line 255
    .local v1, isHandled:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 293
    const/4 v1, 0x0

    .line 297
    :cond_0
    :goto_0
    :sswitch_0
    if-nez v1, :cond_1

    .line 298
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v1

    .line 301
    .end local v1           #isHandled:Z
    :cond_1
    return v1

    .line 258
    .restart local v1       #isHandled:Z
    :sswitch_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    if-eqz v2, :cond_0

    .line 262
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    if-eqz v2, :cond_2

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->getService()Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 266
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 267
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;->unbindService(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)V

    .line 274
    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SceneLocalPhotoThumbnail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServiceCallback Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 255
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
    .line 700
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 701
    const/16 v0, 0x2724

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 702
    return-void
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 2422
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    move-result-object v0

    .line 2424
    .local v0, gItem:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 2449
    return-object v0
.end method

.method public onNoTVToPlay()V
    .locals 1

    .prologue
    .line 635
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 636
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->isDRMOnlyCollection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNoTVToPlay()V

    .line 638
    :cond_0
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 1

    .prologue
    .line 2369
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNotifyUpdateComplete()V

    .line 2370
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 2371
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 1598
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

    .line 1600
    :cond_0
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][SceneLocalPhotoThumbnail][onOptionsItemSelected][tablet]can\'t get activity"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const/4 v6, 0x0

    .line 1786
    :goto_0
    return v6

    .line 1604
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    .line 1605
    .local v4, activity:Landroid/app/Activity;
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][LocalGridviewActivity][onMaOptionsItemSelected]: "

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const/4 v6, 0x0

    .line 1607
    .local v6, bResult:Z
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v14

    .line 1608
    .local v14, menuId:I
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v9

    .line 1609
    .local v9, groupId:I
    const/16 v17, 0x303a

    move/from16 v0, v17

    if-ne v9, v0, :cond_2

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOnShareItemListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 1612
    const/4 v6, 0x1

    goto :goto_0

    .line 1615
    :cond_2
    sparse-switch v14, :sswitch_data_0

    .line 1782
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][LocalGridviewActivity][onMenuItemSelected] Unsupported context menu operation."

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1625
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v13

    .line 1626
    .local v13, itemPosition:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_3

    .line 1628
    const/4 v13, 0x0

    .line 1630
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v13, v1}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 1632
    const/4 v6, 0x1

    .line 1633
    goto :goto_0

    .line 1658
    .end local v13           #itemPosition:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v13

    .line 1659
    .restart local v13       #itemPosition:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_4

    .line 1661
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

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1664
    .local v12, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1666
    move v13, v10

    .line 1672
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

    .line 1674
    const/4 v6, 0x1

    .line 1675
    goto/16 :goto_0

    .line 1661
    .restart local v10       #i:I
    .restart local v12       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1678
    .end local v10           #i:I
    .end local v12           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v13           #itemPosition:I
    :sswitch_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->turnOnOffTVBtn(Z)V

    .line 1679
    const/4 v6, 0x1

    .line 1680
    goto/16 :goto_0

    .line 1683
    :sswitch_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->turnOnOffTVBtn(Z)V

    .line 1684
    const/4 v6, 0x1

    .line 1685
    goto/16 :goto_0

    .line 1688
    :sswitch_4
    invoke-static {v4}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    .line 1689
    const/4 v6, 0x1

    .line 1690
    goto/16 :goto_0

    .line 1695
    :sswitch_5
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][LocalGridviewActivity][onMenuItemSelected] CommonLocalMenuID.PRINT"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
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

    .line 1699
    :cond_6
    const-string v17, "SceneLocalPhotoThumbnail"

    const-string v18, "[HTCAlbum][SceneLocalPhotoThumbnail][OnShareItemSelectedListener][onClick]can\'t get activity"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1702
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

    .line 1708
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onCamera()V

    goto/16 :goto_0

    .line 1713
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDelete()V

    goto/16 :goto_0

    .line 1717
    :sswitch_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    .local v7, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1719
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1720
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1720
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 1725
    .end local v7           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onBackPressed()Z

    goto/16 :goto_0

    .line 1730
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1731
    .local v5, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v5, :cond_8

    .line 1733
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1736
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v8

    .line 1737
    .local v8, firstViewPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->getChildrenCount()I

    move-result v17

    add-int/lit8 v15, v17, 0x4

    .line 1738
    .local v15, totalChildren:I
    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v16

    .line 1740
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

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1743
    move v10, v8

    .restart local v10       #i:I
    :goto_2
    add-int v17, v8, v15

    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 1745
    move/from16 v0, v16

    if-lt v10, v0, :cond_b

    .line 1756
    :cond_9
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/helper/DeleteManager;->deleteAllMedias()V

    .line 1758
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1761
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 1763
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1768
    :cond_a
    const/4 v6, 0x1

    .line 1769
    goto/16 :goto_0

    .line 1750
    :cond_b
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1751
    .local v11, idx:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1756
    .end local v11           #idx:Ljava/lang/Integer;
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 1773
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

    .line 1778
    :sswitch_c
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->ToggleSelectAll(Z)Z

    goto/16 :goto_0

    .line 1615
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
    .line 843
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstIndexPostion()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->markSelection(II)V

    .line 844
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPause()V

    .line 845
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 2306
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2312
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPhaseInScreenControl(I)V

    .line 2313
    return-void

    .line 2310
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 2296
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2302
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPhaseOutScreenControl(I)V

    .line 2303
    return-void

    .line 2300
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 2322
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 2324
    .local v0, anim:Z
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 25
    .parameter "menu"

    .prologue
    .line 1223
    invoke-super/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1224
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 1225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    .line 1227
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1229
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet] + "

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1233
    :cond_0
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet]can\'t get activity"

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const/4 v2, 0x0

    .line 1515
    :goto_0
    return v2

    .line 1246
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1248
    .local v3, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    const v4, 0x7f090087

    const/4 v5, 0x1

    const v6, 0x204020f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    .line 1249
    .local v17, item:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1250
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1252
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const v6, 0x7f0a0111

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    .line 1253
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1254
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 1258
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1259
    .local v8, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v11

    .line 1260
    .local v11, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v20

    .line 1261
    .local v20, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v11, :cond_3

    if-nez v20, :cond_4

    .line 1263
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1265
    :cond_4
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v24

    .line 1266
    .local v24, totalCount:I
    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v13

    .line 1268
    .local v13, drmCount:I
    const/16 v22, 0x1

    .line 1269
    .local v22, showSlideShow:Z
    const-string v2, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v2

    move/from16 v0, v24

    if-eq v2, v0, :cond_6

    :cond_5
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1274
    :cond_6
    const/16 v22, 0x0

    .line 1276
    :cond_7
    sub-int v2, v13, v24

    if-nez v2, :cond_8

    .line 1278
    const/16 v22, 0x0

    .line 1279
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v24

    if-ge v15, v0, :cond_8

    .line 1281
    invoke-virtual {v8, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    .line 1283
    const/16 v22, 0x1

    .line 1289
    .end local v15           #i:I
    :cond_8
    if-eqz v22, :cond_f

    .line 1291
    const/4 v2, 0x0

    const v4, 0x7f090083

    const/4 v5, 0x3

    const v6, 0x204020e

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    .line 1292
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1293
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1306
    :cond_9
    :goto_2
    const/4 v2, 0x0

    const v4, 0x7f090081

    const/4 v5, 0x4

    const v6, 0x2040214

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    .line 1312
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v2, :cond_a

    .line 1317
    if-eqz v3, :cond_a

    .line 1319
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 1320
    .local v12, context:Landroid/content/Context;
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 1359
    .end local v12           #context:Landroid/content/Context;
    :cond_a
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

    .line 1361
    const/4 v10, 0x0

    .line 1363
    .local v10, bPrintableImage:Z
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    if-ge v15, v2, :cond_b

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1367
    .local v16, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v16, :cond_10

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    .line 1369
    const/4 v10, 0x1

    .line 1374
    .end local v16           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_b
    if-eqz v10, :cond_c

    .line 1376
    const/4 v2, 0x0

    const v4, 0x7f090088

    const/16 v5, 0xc

    const v6, 0x7f0a00f8

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    .line 1382
    .end local v10           #bPrintableImage:Z
    .end local v15           #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    if-eqz v2, :cond_d

    .line 1384
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v9

    .line 1385
    .local v9, adapterCount:I
    if-lez v9, :cond_d

    .line 1387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v4

    sub-int/2addr v4, v9

    if-nez v4, :cond_11

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareMenu(Landroid/content/Context;Landroid/view/Menu;IIZ)Z

    .line 1391
    .end local v9           #adapterCount:I
    :cond_d
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet] - "

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1279
    .restart local v15       #i:I
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1297
    .end local v15           #i:I
    :cond_f
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1299
    const/4 v2, 0x0

    const v4, 0x7f090083

    const/4 v5, 0x3

    const v6, 0x204020e

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    .line 1300
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1301
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1302
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1363
    .restart local v10       #bPrintableImage:Z
    .restart local v15       #i:I
    .restart local v16       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 1387
    .end local v10           #bPrintableImage:Z
    .end local v15           #i:I
    .end local v16           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v9       #adapterCount:I
    :cond_11
    const/4 v7, 0x0

    goto :goto_4

    .line 1396
    .end local v3           #activity:Landroid/app/Activity;
    .end local v8           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v9           #adapterCount:I
    .end local v11           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v13           #drmCount:I
    .end local v17           #item:Landroid/view/MenuItem;
    .end local v20           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v22           #showSlideShow:Z
    .end local v24           #totalCount:I
    :cond_12
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][phone] + "

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_14

    .line 1400
    :cond_13
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][phone]can\'t get activity"

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1406
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1408
    .restart local v3       #activity:Landroid/app/Activity;
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x7f0a0111

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    .line 1409
    .restart local v17       #item:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1410
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1414
    :cond_15
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1415
    .restart local v8       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v11

    .line 1416
    .restart local v11       #collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v20

    .line 1417
    .restart local v20       #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v11, :cond_16

    if-nez v20, :cond_17

    .line 1419
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1422
    :cond_17
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v2, :cond_18

    .line 1427
    if-eqz v3, :cond_18

    .line 1429
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 1430
    .restart local v12       #context:Landroid/content/Context;
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 1435
    .end local v12           #context:Landroid/content/Context;
    :cond_18
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][phone] - "

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1441
    .end local v3           #activity:Landroid/app/Activity;
    .end local v8           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v11           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v17           #item:Landroid/view/MenuItem;
    .end local v20           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_19
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 1445
    :cond_1a
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet]can\'t get activity"

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1449
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1450
    .restart local v3       #activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1451
    .restart local v8       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v11

    .line 1452
    .restart local v11       #collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v20

    .line 1453
    .restart local v20       #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v11, :cond_1c

    if-nez v20, :cond_1d

    .line 1455
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1457
    :cond_1d
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v24

    .line 1458
    .restart local v24       #totalCount:I
    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v13

    .line 1461
    .restart local v13       #drmCount:I
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const v6, 0x2040214

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    .line 1462
    .local v19, itemDelete:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1463
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1466
    const/4 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const v6, 0x20401ee

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1467
    .local v18, itemCancel:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1468
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1474
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showSelectAllInOptionsMenu(Landroid/view/Menu;)V

    .line 1481
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x2040214

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1482
    .local v23, textConfirm:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1483
    .local v21, numPick:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1485
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1486
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    const/4 v14, 0x1

    .line 1495
    .local v14, enable:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    if-eqz v2, :cond_1e

    .line 1504
    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1505
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1506
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1486
    .end local v14           #enable:Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1502
    .restart local v14       #enable:Z
    :cond_1e
    if-eqz v21, :cond_1f

    const/4 v14, 0x1

    :goto_6
    goto :goto_5

    :cond_1f
    const/4 v14, 0x0

    goto :goto_6

    .line 1513
    .end local v3           #activity:Landroid/app/Activity;
    .end local v8           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v11           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v13           #drmCount:I
    .end local v14           #enable:Z
    .end local v18           #itemCancel:Landroid/view/MenuItem;
    .end local v19           #itemDelete:Landroid/view/MenuItem;
    .end local v20           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v21           #numPick:I
    .end local v23           #textConfirm:Ljava/lang/String;
    .end local v24           #totalCount:I
    :cond_20
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showSelectAllInOptionsMenu(Landroid/view/Menu;)V

    .line 1515
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 24
    .parameter "footer"

    .prologue
    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    .line 868
    .local v7, activity:Landroid/app/Activity;
    if-eqz v7, :cond_0

    .line 870
    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 871
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 873
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 874
    .local v8, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v11

    .line 875
    .local v11, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v15

    .line 876
    .local v15, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v11, :cond_0

    if-eqz v15, :cond_0

    .line 878
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v23

    .line 879
    .local v23, totalCount:I
    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v12

    .line 881
    .local v12, drmCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 883
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 885
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x20401ee

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 886
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x2040214

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v9

    check-cast v9, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 889
    .local v9, btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x2040214

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 890
    .local v22, textConfirm:Ljava/lang/String;
    const/16 v17, 0x0

    .line 891
    .local v17, numPick:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 892
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 893
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    const/4 v13, 0x1

    .line 901
    .local v13, enable:Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    if-eqz v1, :cond_2

    .line 902
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

    .line 908
    :goto_1
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v9, v13}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 893
    .end local v13           #enable:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 905
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

    .line 906
    if-eqz v17, :cond_3

    const/4 v13, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 917
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

    .line 918
    .local v18, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v15, :cond_5

    .line 920
    if-lez v23, :cond_5

    .line 922
    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v1

    if-gtz v1, :cond_5

    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v1

    if-gtz v1, :cond_5

    .line 923
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->removeButton(I)V

    .line 931
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0115

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 936
    const/16 v20, 0x1

    .line 937
    .local v20, showSlideShow:Z
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

    .line 943
    :cond_7
    const/16 v20, 0x0

    .line 945
    :cond_8
    sub-int v1, v12, v23

    if-nez v1, :cond_9

    .line 946
    const/16 v20, 0x0

    .line 947
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    move/from16 v0, v23

    if-ge v14, v0, :cond_9

    .line 948
    invoke-virtual {v8, v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    .line 949
    const/16 v20, 0x1

    .line 955
    .end local v14           #i:I
    :cond_9
    if-eqz v20, :cond_e

    .line 957
    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0118

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 972
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

    .line 975
    .local v19, showPrint:Z
    :goto_5
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v1, :cond_10

    move/from16 v0, v23

    if-eq v12, v0, :cond_10

    const/16 v21, 0x1

    .line 977
    .local v21, showTVOut:Z
    :goto_6
    const/4 v1, 0x1

    move/from16 v0, v19

    if-eq v1, v0, :cond_b

    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v1, v0, :cond_0

    .line 979
    :cond_b
    const/4 v1, 0x0

    const/16 v3, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v16

    check-cast v16, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 983
    .local v16, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v21, :cond_c

    .line 985
    const/16 v1, 0xf

    const/4 v3, 0x0

    const v4, 0x7f0a00be

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 988
    :cond_c
    if-eqz v19, :cond_0

    .line 990
    const/16 v1, 0x12

    const/4 v3, 0x0

    const v4, 0x7f0a0119

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto/16 :goto_0

    .line 947
    .end local v16           #moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v19           #showPrint:Z
    .end local v21           #showTVOut:Z
    .restart local v14       #i:I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 962
    .end local v14           #i:I
    :cond_e
    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 964
    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0118

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v10

    check-cast v10, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 965
    .local v10, btnSlideshow:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_4

    .line 972
    .end local v10           #btnSlideshow:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_f
    const/16 v19, 0x0

    goto :goto_5

    .line 975
    .restart local v19       #showPrint:Z
    :cond_10
    const/16 v21, 0x0

    goto :goto_6
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setTitle(Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 2993
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onResume()V

    .line 2995
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 2996
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 3007
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 3009
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 3010
    return-void
.end method

.method public onShare(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 998
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onShare]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 1003
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 3001
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onStop()V

    .line 3002
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 602
    :try_start_0
    iget v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    if-eq v6, v9, :cond_1

    const/4 v3, 0x1

    .line 603
    .local v3, fixedIndex:Z
    :goto_0
    if-eqz v3, :cond_2

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 604
    .local v5, outputIndex:I
    :goto_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 606
    .local v4, outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->isDRMOnlyCollection()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v3, :cond_4

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 608
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 609
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 627
    iput v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 629
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #fixedIndex:Z
    .end local v4           #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #outputIndex:I
    :goto_2
    return-void

    .line 602
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 603
    .restart local v3       #fixedIndex:Z
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v5

    goto :goto_1

    .line 611
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v4       #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v5       #outputIndex:I
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v1, Lcom/htc/album/Animation/animationSetGridview;

    .line 612
    .local v1, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v1, v5, v6}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 614
    invoke-direct {p0, v5, v0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 627
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #animationSet:Lcom/htc/album/Animation/animationSetGridview;
    :goto_3
    iput v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    goto :goto_2

    .line 618
    :cond_4
    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDMRChanged(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 621
    .end local v3           #fixedIndex:Z
    .end local v4           #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #outputIndex:I
    :catch_0
    move-exception v2

    .line 623
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

    .line 627
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
    .line 795
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 796
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager;->release()V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 800
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 802
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onUnbindAdapter()V

    .line 803
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2409
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2411
    const/4 v0, 0x0

    .line 2415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2288
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

    .line 1523
    const/4 v1, 0x0

    .line 1525
    .local v1, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 1526
    .local v0, PickUpperBound:I
    const/4 v3, -0x1

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-eq v3, v4, :cond_0

    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-le v3, v0, :cond_3

    .line 1527
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1529
    .local v2, pickCount:I
    if-ge v2, v0, :cond_1

    .line 1531
    invoke-interface {p1, v6, v7, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 1532
    if-eqz v1, :cond_1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1535
    :cond_1
    if-lez v2, :cond_2

    .line 1537
    invoke-interface {p1, v6, v8, v5, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 1538
    if-eqz v1, :cond_2

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1540
    :cond_2
    return-void

    .line 1526
    .end local v2           #pickCount:I
    :cond_3
    sget v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    goto :goto_0
.end method
