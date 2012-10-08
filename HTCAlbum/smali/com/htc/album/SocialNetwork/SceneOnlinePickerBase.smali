.class public abstract Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlinePickerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        "TADAPTER;>;"
    }
.end annotation


# static fields
.field public static final FOOTERBAR_PICKER_ID:I = 0x1389

.field public static final HEADERBAR_PICKER_ID:I = 0x138a

.field public static final PICKER_MODE_DELETE:I = 0x1

.field public static final PICKER_MODE_MULTI:I = 0x2

.field public static final PICKER_MODE_NONE:I = 0x0

.field public static final PICKER_MODE_UPLOAD:I = 0x3


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field protected mHideMaxCount:Z

.field protected mIsDeleteAnimation:Z

.field protected mIsSelectAll:Z

.field private mItemDataBindListener:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase",
            "<TADAPTER;>.ItemDataBind",
            "Listener;"
        }
    .end annotation
.end field

.field protected mMaxPickCount:I

.field protected mNoPhotoListAndCache:Z

.field protected mPickList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPickerMode:I

.field protected mProgressLoad:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 54
    const-string v0, "SceneOnlinePickerBase"

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->LOG_TAG:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 64
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mItemDataBindListener:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;

    .line 66
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    .line 70
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsDeleteAnimation:Z

    .line 71
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 72
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsSelectAll:Z

    .line 73
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    .line 77
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    .line 569
    return-void
.end method

.method private selectAll(Z)V
    .locals 4
    .parameter "bSelected"

    .prologue
    .line 552
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    if-nez p1, :cond_1

    .line 553
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    .line 567
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->invalidateControlBars()V

    .line 568
    return-void

    .line 556
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 559
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 561
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 562
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v0, 0x0

    .line 241
    .local v0, szTitle:Ljava/lang/String;
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    packed-switch v2, :pswitch_data_0

    move-object v1, v0

    .line 258
    .end local v0           #szTitle:Ljava/lang/String;
    .local v1, szTitle:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 245
    .end local v1           #szTitle:Ljava/lang/String;
    .restart local v0       #szTitle:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->getSelectedCountTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 258
    .end local v0           #szTitle:Ljava/lang/String;
    .restart local v1       #szTitle:Ljava/lang/String;
    goto :goto_0

    .line 248
    .end local v1           #szTitle:Ljava/lang/String;
    .restart local v0       #szTitle:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    goto :goto_1

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPickerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPickerMode()I
    .locals 1

    .prologue
    .line 207
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    return v0
.end method

.method public getSelectedCountTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const-string v1, ""

    .line 271
    .local v1, szCountTitle:Ljava/lang/String;
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 276
    .local v0, nCount:I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .end local v0           #nCount:I
    :cond_0
    return-object v1
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v0, 0x0

    .line 541
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->setPickerMode(I)V

    .line 544
    const/4 v0, 0x1

    .line 547
    :cond_0
    return v0
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 611
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 613
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 314
    .local v0, mode:I
    const/16 v1, 0x4e42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 318
    .end local v0           #mode:I
    :pswitch_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 319
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onBackPressed()Z

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v2, 0x0

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    const/16 v3, 0x1389

    if-ne p1, v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 296
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 297
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 298
    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0001

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 301
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 9

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v6, 0x0

    .line 327
    const-string v7, "SceneOnlinePickerBase"

    const-string v8, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateScene]: ..."

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 330
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    move-object v2, v6

    .line 357
    :goto_0
    return-object v2

    .line 333
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 335
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v4

    .line 336
    .local v4, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v3, v1, v7, v4}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 339
    .local v3, item:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mItemDataBindListener:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    .end local v2           #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v2, v1, v7, v3}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 346
    .restart local v2       #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    move-result-object v5

    .line 347
    .local v5, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 350
    :cond_1
    new-instance v7, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v7, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 351
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v7, v6, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 352
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 354
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 355
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    goto :goto_0
.end method

.method protected abstract onGetLoadingMessage()Ljava/lang/String;
.end method

.method protected abstract onGetNormalFooterId()I
.end method

.method protected abstract onGetNormalHeaderId()I
.end method

.method protected onItemSelected(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 426
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->togglePickedIndex(I)Z

    .line 429
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    .line 430
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 434
    :goto_0
    const/4 v0, 0x1

    .line 437
    :goto_1
    return v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->invalidateControlBars()V

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 362
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 369
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 365
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onItemSelected(I)Z

    .line 366
    const/4 v0, 0x1

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x139c
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/16 v4, 0x4e42

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 510
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v2, :cond_0

    .line 511
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 535
    :goto_0
    return v1

    .line 513
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 534
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0

    .line 516
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->selectAll(Z)V

    .line 517
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    .line 520
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->selectAll(Z)V

    goto :goto_1

    .line 523
    :sswitch_2
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->selectAll(Z)V

    goto :goto_1

    .line 526
    :sswitch_3
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 527
    .local v0, mode:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v4, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    .line 530
    .end local v0           #mode:I
    :sswitch_4
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 531
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->setPickerMode(I)V

    goto :goto_1

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x204014f -> :sswitch_1
        0x20401ec -> :sswitch_0
        0x20401f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const v7, 0x20401f4

    const v6, 0x204014f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 443
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 445
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 447
    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v4, :cond_0

    .line 475
    :goto_0
    return v2

    .line 450
    :cond_0
    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v4, v5, :cond_2

    .line 452
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v1

    .line 453
    .local v1, total:I
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 455
    .local v0, pickCount:I
    if-ne v1, v0, :cond_4

    .line 457
    invoke-interface {p1, v3, v7, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 471
    .end local v0           #pickCount:I
    .end local v1           #total:I
    :cond_2
    :goto_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 472
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPrepareTabletPickerOptionsMenu(Landroid/view/Menu;)V

    :cond_3
    move v2, v3

    .line 475
    goto :goto_0

    .line 459
    .restart local v0       #pickCount:I
    .restart local v1       #total:I
    :cond_4
    if-nez v0, :cond_5

    .line 461
    invoke-interface {p1, v3, v6, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 465
    :cond_5
    invoke-interface {p1, v2, v6, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 466
    invoke-interface {p1, v3, v7, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onPrepareTabletPickerOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 479
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 481
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v6, :cond_0

    .line 506
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v5, 0x0

    .line 485
    .local v5, textConfirm:I
    const/4 v4, 0x0

    .line 486
    .local v4, resConfirm:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 488
    .local v1, context:Landroid/content/Context;
    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 490
    const v5, 0x2040214

    .line 491
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    .line 499
    :goto_1
    const/4 v6, 0x5

    const v7, 0x20401ee

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 500
    .local v2, itemCancel:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 501
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 503
    const/4 v6, 0x4

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 504
    .local v3, itemConfirm:Landroid/view/MenuItem;
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 505
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 495
    .end local v2           #itemCancel:Landroid/view/MenuItem;
    .end local v3           #itemConfirm:Landroid/view/MenuItem;
    :cond_1
    const v5, 0x204012c

    .line 496
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Done_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    goto :goto_1
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 9
    .parameter "footer"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 375
    iget v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v7, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 379
    .local v1, context:Landroid/content/Context;
    const-string v4, ""

    .line 380
    .local v4, text:Ljava/lang/String;
    const/4 v3, 0x0

    .line 381
    .local v3, iconRes:I
    iget v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v7, v5, :cond_2

    .line 383
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2040214

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    .line 392
    :goto_1
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 393
    .local v0, btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v0, :cond_0

    .line 400
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsSelectAll:Z

    if-eqz v7, :cond_3

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v7}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 421
    :goto_2
    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageResource(I)V

    goto :goto_0

    .line 388
    .end local v0           #btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x204012c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 389
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Next_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    goto :goto_1

    .line 406
    .restart local v0       #btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_3
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    if-nez v7, :cond_5

    iget v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 408
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 409
    .local v2, count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 410
    if-lez v2, :cond_4

    .line 411
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_2

    .line 413
    :cond_4
    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_2

    .line 417
    .end local v2           #count:I
    :cond_5
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 418
    .restart local v2       #count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 419
    if-lez v2, :cond_6

    :goto_3
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_6
    move v5, v6

    goto :goto_3
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 616
    const/4 v2, 0x0

    .line 617
    .local v2, mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    const/4 v0, 0x0

    .line 619
    .local v0, configuration:Landroid/content/res/Configuration;
    if-nez p1, :cond_0

    .line 620
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    .end local v2           #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 624
    .restart local v2       #mainView:Lcom/htc/sunny2/widget/gridview/GridView;
    :goto_0
    if-nez v2, :cond_1

    .line 669
    :goto_1
    return-void

    .line 622
    :cond_0
    move-object v2, p1

    goto :goto_0

    .line 627
    :cond_1
    if-nez p2, :cond_2

    .line 628
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 632
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 634
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 635
    invoke-static {v6}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 630
    :cond_2
    move-object v0, p2

    goto :goto_2

    .line 639
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 640
    .local v1, iFooterPadding:I
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->requestFooterBar()Z

    move-result v4

    if-ne v3, v4, :cond_5

    .line 642
    const/4 v3, 0x2

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_6

    .line 644
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-nez v3, :cond_4

    .line 646
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 647
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacingWide(Landroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 649
    const/4 v1, 0x0

    .line 651
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 652
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 667
    :cond_5
    :goto_3
    invoke-static {v6}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 656
    :cond_6
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-nez v3, :cond_7

    .line 658
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 659
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 661
    const/4 v1, 0x0

    .line 663
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 664
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3
.end method

.method public setPickerMode(I)V
    .locals 12
    .parameter "mode"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v11, 0x0

    const/16 v10, 0x1389

    const v9, 0x7f070036

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 81
    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v6, p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 82
    :cond_0
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 84
    iget-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v6, :cond_1

    .line 86
    iget-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v6}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v3

    .line 87
    .local v3, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    if-eqz v3, :cond_1

    .line 88
    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->onReleaseCache()V

    .line 91
    .end local v3           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    :cond_1
    const/4 v5, 0x0

    .line 92
    .local v5, nTop:I
    const/4 v4, 0x0

    .line 93
    .local v4, nBottom:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    .local v1, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 194
    :cond_2
    :goto_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 196
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6, v11, v5, v11, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 202
    :goto_2
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    goto :goto_1

    .line 108
    :cond_3
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v5, v6, v7

    .line 112
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    .line 114
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onGetNormalFooterId()I

    move-result v2

    .line 115
    .local v2, footbarId:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    invoke-virtual {p0, v8, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    goto :goto_1

    .line 124
    .end local v2           #footbarId:I
    :pswitch_1
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 126
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 128
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    goto :goto_1

    .line 134
    :cond_4
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v5, v6, v7

    .line 138
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    .line 140
    invoke-virtual {p0, v8, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    goto :goto_1

    .line 148
    :pswitch_2
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 150
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 152
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    goto :goto_1

    .line 158
    :cond_5
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v5, v6, v7

    .line 162
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    .line 164
    invoke-virtual {p0, v8, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    goto/16 :goto_1

    .line 170
    :pswitch_3
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 174
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    goto/16 :goto_1

    .line 180
    :cond_6
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v5, v6, v7

    .line 184
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    .line 186
    invoke-virtual {p0, v8, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    goto/16 :goto_1

    .line 200
    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onUpdateMainViewLayout(Lcom/htc/sunny2/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    goto/16 :goto_2

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public togglePickedIndex(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 217
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 221
    .local v0, count:I
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 229
    .end local v0           #count:I
    :goto_0
    return v1

    .line 225
    .restart local v0       #count:I
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v0           #count:I
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method
