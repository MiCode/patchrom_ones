.class public Lcom/htc/album/picker/PickerFolderMfFragment;
.super Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.source "PickerFolderMfFragment.java"


# static fields
.field static final CLS_NAME_FOLDER_PICKER:Ljava/lang/String;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mMediaType:I

.field private mPickerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/album/picker/PickerFolderScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerFolderMfFragment;->CLS_NAME_FOLDER_PICKER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;-><init>()V

    .line 13
    const-string v0, "PickerFolderMfFragment"

    iput-object v0, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->LOG_TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    .line 15
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mMediaType:I

    return-void
.end method


# virtual methods
.method public getPickerMode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    return v0
.end method

.method public onCreateScene()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 23
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 25
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/album/picker/PickerConstants;->getPickerMode(Landroid/app/Activity;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    .line 27
    iget v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    if-nez v7, :cond_0

    .line 46
    :goto_0
    return v5

    .line 32
    :cond_0
    const-string v7, "in_pickermode"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    iget v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    invoke-static {v7}, Lcom/htc/album/picker/PickerConstants;->getMediaType(I)I

    move-result v7

    iput v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mMediaType:I

    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 37
    .local v4, request:Landroid/content/Intent;
    const-string v7, "no3d_contents"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 38
    .local v3, no3d:Z
    const-string v5, "MimeTypeFilter"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, filter:Ljava/lang/String;
    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    .line 40
    const-string v5, "MimeTypeFilter"

    const-string v7, "image/jpeg;image/bmp;image/png;image/gif;image/vnd.wap.wbmp;image/x-ms-bmp;video/mp4;video/3gpp;video/x-ms-wmv;video/x-msvideo;video/x-xvid"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :cond_1
    const-string v5, "mediaType"

    iget v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mMediaType:I

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    sget-object v8, Lcom/htc/album/picker/PickerFolderMfFragment;->CLS_NAME_FOLDER_PICKER:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    move v5, v6

    .line 46
    goto :goto_0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    sget-object v1, Lcom/htc/album/picker/PickerFolderMfFragment;->CLS_NAME_FOLDER_PICKER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v0, Lcom/htc/album/picker/PickerFolderScene;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/picker/PickerFolderScene;-><init>()V

    .line 59
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    if-nez v0, :cond_1

    .line 60
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 62
    :cond_1
    return-object v0
.end method
