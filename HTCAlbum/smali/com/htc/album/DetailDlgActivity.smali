.class public Lcom/htc/album/DetailDlgActivity;
.super Landroid/app/Activity;
.source "DetailDlgActivity.java"

# interfaces
.implements Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

.field private mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mbCreate:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-class v0, Lcom/htc/album/DetailDlgActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 35
    iput-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 37
    new-instance v0, Lcom/htc/album/DetailDlgParams;

    invoke-direct {v0}, Lcom/htc/album/DetailDlgParams;-><init>()V

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    return-void
.end method

.method private CreateDetailDialog()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Lcom/htc/album/DetailDlgParams;->IsLocalFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/htc/album/DetailDlgActivity;->CreateDetailDialog_LocalFile()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Lcom/htc/album/DetailDlgParams;->IsRemoteFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/htc/album/DetailDlgActivity;->CreateDetailDialog_RemoteFile()Z

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CreateDetailDialog_LocalFile()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-nez v1, :cond_1

    :cond_0
    move v8, v0

    .line 190
    :goto_0
    return v8

    .line 155
    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    if-ne v1, v2, :cond_2

    move v8, v0

    .line 160
    goto :goto_0

    .line 163
    :cond_2
    iput-boolean v2, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    .line 165
    const/4 v8, 0x0

    .line 169
    .local v8, bRet:Z
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 171
    .local v3, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_3

    move v8, v0

    .line 172
    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromLocal(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const/4 v8, 0x1

    goto :goto_0

    .line 180
    .end local v3           #curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private CreateDetailDialog_RemoteFile()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 195
    iget-boolean v2, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    if-ne v2, v1, :cond_0

    .line 207
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    iget-object v3, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v2, p0, p0, v3, v0}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromDetailDlg(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Z

    .line 206
    iput-boolean v1, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    move v0, v1

    .line 207
    goto :goto_0
.end method


# virtual methods
.method public OnEndDlgCallBack()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 25
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "OnEndDlgCallBack trigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    .line 27
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->finish()V

    .line 28
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/DetailDlgParams;->GetExtraParam(Landroid/content/Intent;)Z

    .line 52
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 54
    :cond_0
    invoke-virtual {p0, v5}, Lcom/htc/album/DetailDlgActivity;->requestWindowFeature(I)Z

    .line 57
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/DetailsViewHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 60
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Lcom/htc/album/DetailDlgParams;->IsLocalFile()Z

    move-result v0

    if-ne v5, v0, :cond_1

    .line 62
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v3}, Lcom/htc/album/DetailDlgParams;->GetDataLocation()Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v4}, Lcom/htc/album/DetailDlgParams;->GetIncludes()I

    move-result v4

    iget-object v6, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v6}, Lcom/htc/album/DetailDlgParams;->GetWhere()Ljava/lang/String;

    move-result-object v7

    move v6, v5

    move-object v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 75
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-virtual {v0}, Lcom/htc/album/helper/DetailsViewHelper;->dismiss()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 103
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    invoke-direct {p0}, Lcom/htc/album/DetailDlgActivity;->CreateDetailDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->finish()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 126
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->finish()V

    .line 127
    return-void
.end method
